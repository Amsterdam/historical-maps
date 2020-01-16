#!/usr/bin/env node

const fs = require('fs')
const R = require('ramda')

const GDAL = require('./lib/gdal')

const argv = require('yargs')
  .option('sheets', {
    alias: 's',
    describe: 'JSON file with coordinates of map sheets (in original projection)',
    type: 'string'
  })
  .option('series', {
    describe: 'JSON file with map series',
    type: 'string'
  })
  .option('gcps', {
    alias: 'g',
    describe: 'JSON file with corner control points in pixels',
    type: 'string'
  })
  .option('output', {
    alias: 'o',
    describe: 'output directory',
    type: 'string'
  })
  .option('year', {
    alias: 'y',
    describe: 'year',
    default: 1960
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
    default: 90
  })
  .demandOption(['sheets', 'series', 'output', 'gcps'], 'Please provide <sheets>, <gcps> and <output> arguments')
  .argv

const readJson = (filename) => JSON.parse(fs.readFileSync(filename, 'utf8'))

const sheetsGeoJson = readJson(argv.sheets)
const allSeries = readJson(argv.series)
const allGCPs = readJson(argv.gcps)

const gcpsByImageId = R.groupBy(R.path(['properties', 'imageId']), allGCPs.features)
const masksBySheet = R.groupBy(R.path(['properties', 'BLAD']), sheetsGeoJson.features)

const series = allSeries
  .filter((series) => series.year === argv.year)[0]

const gdal = new GDAL(argv.output, argv.year, argv.projection, argv.quality)

series.maps.forEach((map) => {
  const gcps = gcpsByImageId[map.imageId] && gcpsByImageId[map.imageId][0]
  if (!gcps) {
    console.error(`No GCPs found for map ${map.sheet} - ${map.imageId}`)
    return
  }

  const mask = masksBySheet[map.sheet] && masksBySheet[map.sheet][0]
  if (!mask) {
    console.error(`No mask found for map ${map.sheet} - ${map.imageId}`)
    return
  }

  gdal.sheet(map, gcps, mask)
})

gdal.index()
