#!/usr/bin/env node

const H = require('highland')
const R = require('ramda')

const mode = process.argv[2]

if (!['log', 'data'].includes(mode)) {
  console.error(`
Usage ./generate-series.js [log|data]
  - log: creates table with sheet and series information
  - data: creates NDJSON file with series details
`)
  process.exit(1)
}

const bySheet = {}

const yearRange = [
  1910,
  1985
]

const years = Array.from({length: Math.ceil((yearRange[1] - yearRange[0]) / 5) + 1}, (_, index) => index * 5 + yearRange[0])

function yearDifference (year, period) {
  if (period.length === 1) {
    return year - period[0]
  } else {
    if (year < period[0]) {
      return year - period[0]
    } else if (year > period[1]) {
      return year - period[1]
    } else {
      return 0
    }
  }
}

function findClosestMap (year, maps) {
  const sortedMaps = maps
    .map((map) => ({
      ...map,
      yearDifference: yearDifference(year, map.period)
    }))
    .filter((map) => map.yearDifference > 0)
    .filter((map) => {
      // TODO: 1940 > : niet jonger dan 1940
      if (year >= 1940) {
        return map.yearDifference <= year - 1940
      }
      return true
    })
    .sort((a, b) => a.yearDifference - b.yearDifference)

  return sortedMaps[0]
}

function logMap (map, logSheet = true) {
  const period = map.period.length === 2 ? map.period.join('–') : `${map.period[0]}     `

  let sheet = map.sheet
  if (map.sheet.length === 2) {
    sheet = ` ${sheet} `
  } else if (map.sheet.length === 3) {
    sheet = `${sheet} `
  }

  console.log(`${logSheet ? sheet : '    '}  ${period}  ${map.url}`)
}

H(process.stdin)
  .split()
  .compact()
  .map(JSON.parse)
  .each((sheet) => {
    bySheet[sheet.sheet] = sheet.maps
  })
  .done(() => {
    const allSheets = Object.keys(bySheet)

    if (mode === 'log') {
      allSheets.forEach((sheet) => {
        bySheet[sheet]
          .forEach((map, index) => logMap(map, index === 0))
        console.log('')
      })

      years.forEach((year) => {
        console.log(`===== ${year} ===============================================================`)
        allSheets
          .map((sheet) => findClosestMap(year, bySheet[sheet]))
          .filter(R.identity)
          .map((map) => logMap(map))

        console.log('')
      })
    } else {
      const data = years
        .map((year) => ({
          year,
          maps: allSheets
            .map((sheet) => findClosestMap(year, bySheet[sheet]))
            .filter(R.identity)
        }))

      console.log(JSON.stringify(data, null, 2))
    }
  })
