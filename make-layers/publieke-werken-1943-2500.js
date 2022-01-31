#!/usr/bin/env node

import yargs from 'yargs'
import { hideBin } from 'yargs/helpers'

import * as R from 'ramda'
import H from 'highland'

import { getImageUrl } from '../lib/beeldbank.js'
import { getGeoMask, getGcps } from '../lib/gcps.js'
import { sourceDataFilename, readJson } from '../lib/io.js'

const argv = yargs(hideBin(process.argv)).option('gcps', {
  alias: 'g',
  describe: 'JSON file with corner control points in pixels',
  default: sourceDataFilename('publieke-werken-1943-2500.geojson'),
  type: 'string'
}).argv

const allGCPs = readJson(argv.gcps)

function sortMaps(map1, map2) {
  const colorCount = (map) => map.properties.colors.length
  const year = (map) => map.properties.period[0]

  if (colorCount(map1) === colorCount(map2)) {
    return year(map2) - year(map1)
  } else {
    // Choose the map with the most colors
    return colorCount(map2) - colorCount(map1)
  }
}

const groupBySheet = R.compose(
  R.map(R.zipObj(['sheet', 'maps'])),
  R.toPairs,
  R.groupBy(R.path(['properties', 'sheet']))
)

async function createMap(feature) {
  const imageId = feature.properties.imageId
  const imageUrl = await getImageUrl(imageId)

  // TODO: add pixel mask!
  return {
    id: imageId,
    imageUrl,
    geoMask: getGeoMask(feature),
    gcps: getGcps(feature)
  }
}

H(groupBySheet(allGCPs.features))
  .map((group) => {
    const sortedMaps = [...group.maps].sort(sortMaps)
    return sortedMaps[0]
  })
  .flatMap((feature) => H(createMap(feature)))
  .map(JSON.stringify)
  .intersperse('\n')
  .pipe(process.stdout)
