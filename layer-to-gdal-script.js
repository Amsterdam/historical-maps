#!/usr/bin/env node

import H from 'highland'
import yargs from 'yargs'
import { hideBin } from 'yargs/helpers'

import GDAL from './lib/gdal.js'

const argv = yargs(hideBin(process.argv))
  .option('id', {
    alias: 'i',
    describe: 'Layer ID',
    type: 'string',
    demandOption: true
  })
  .option('output', {
    alias: 'o',
    describe: 'output directory (relative to generated shell script)',
    type: 'string',
    demandOption: true
  })
  .option('projection', {
    alias: 'p',
    describe: 'projection (EPSG number)',
    default: 3857,
    type: 'number'
  })
  .option('quality', {
    alias: 'q',
    describe: 'JPEG quality',
    default: 75,
    type: 'number'
  }).argv

const gdal = new GDAL(argv.output, argv.id, argv.projection, argv.quality)

console.log(gdal.preamble())

H(process.stdin)
  .split()
  .compact()
  .map(JSON.parse)
  .each((map) => {
    console.log(gdal.warpSheet(map))
  })
  .done(() => {
    console.log(gdal.combine())
  })
