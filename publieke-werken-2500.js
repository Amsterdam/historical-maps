#!/usr/bin/env node

const fs = require('fs')
const R = require('ramda')

const GDAL = require('./lib/gdal')
const projections = require('./lib/projections')

const argv = require('yargs')
  .option('gcps', {
    alias: 'g',
    describe: 'JSON file with corner control points in pixels',
    type: 'string'
  })
  .option('output', {
    alias: 'o',
    describe: 'output directory (relative to generated shell script)',
    type: 'string'
  })
  .option('year', {
    alias: 'y',
    describe: 'year'
  })
  .option('projection', {
    alias: 'p',
    describe: 'projection (EPSG number)',
    default: 3857,
    type: 'string'
  })
  .option('quality', {
    alias: 'q',
    describe: 'JPEG quality',
    default: 75
  })
  .demandOption(['output', 'gcps', 'year'], 'Please provide <sheets>, <gcps> and <output> arguments')
  .argv

const readJson = (filename) => JSON.parse(fs.readFileSync(filename, 'utf8'))

const allGCPs = readJson(argv.gcps)

const gdal = new GDAL(argv.output, argv.year, argv.projection, argv.quality)

function sortMaps (map1, map2) {
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

groupBySheet(allGCPs.features)
  .map((group) => {
    const sortedMaps = [...group.maps].sort(sortMaps)
    return sortedMaps[0]
  })
  .map((feature) => {
    const map = {
      imageId: feature.properties.imageId,
      imageUrl: `https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=${feature.properties.imageId}`
    }

    const mask = projections.maskFromGCPs(feature)

    gdal.sheet(map, feature, mask)
  })

gdal.index()
