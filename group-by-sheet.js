#!/usr/bin/env node

const H = require('highland')
const R = require('ramda')

H(process.stdin)
  .split()
  .compact()
  .map(JSON.parse)
  .group('sheet')
  .map(R.toPairs)
  .sequence()
  .map(R.zipObj(['sheet', 'maps']))
  .map((sheet) => ({
    sheet: sheet.sheet,
    maps: sheet.maps.map(R.omit('sheet'))
  }))
  .map(JSON.stringify)
  .intersperse('\n')
  .pipe(process.stdout)
