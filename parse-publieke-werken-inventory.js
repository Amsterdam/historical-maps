#!/usr/bin/env node

const H = require('highland')

function parseArray (array) {
  // Example:
  //
  // [ 56354360,
  //   '1000',
  //   'NL-SAA-1335457',
  //   'Blad K8',
  //   911,
  //   <1 empty item>,
  //   '1977 - 1986',
  //   0,
  //   0,
  //   2,
  //   5,
  //   0,
  //   0,
  //   'http://beeldbank.amsterdam.nl/beeldbank/?weergave/search/layout/result/?indeling/grid?f_sk_archief=10039/1000||Beeldbank',
  //   1,
  //   0,
  //   1,
  //   [ [ 'A/yB253jd3y0xTKFoPUThSRTtUQj5I8Pt*zQ26I9l-joCgWknSQSWv1*LSjte4K0ALHctGgTWHy*V3HnMNag2Rvg',
  //       6026,
  //       4862,
  //       64,
  //       52,
  //       10739889,
  //       '',
  //       'DUIZ01000000001',
  //       'JPEG/94 7.4Mb 150dpi 102x82cm',
  //       'obsolete',
  //       'obsolete',
  //       150,
  //       'obsolete',
  //       0,
  //       '5bec5eed5eec5f0',
  //       0,
  //       0 ] ] ]

  const item = {
    id: array[0],
    sheet: array[3],
    period: array[6]
  }

  const array2 = array[17]
  if (!array2) {
    return item
  }

  return Object.assign({
    imageId: array2[0][7],
    scanWidth: array2[0][1],
    scanHeight: array2[0][2]
  }, item)
}

function parseSheet (str) {
  const match = str.match(/[A-Z]{1,2}\d{1,2}/)
  if (match) {
    return match[0]
  }
}

function parsePeriod (str) {
  if (str) {
    return str.match(/\d{4}/g).map((year) => parseInt(year))
  }
}

H(process.stdin)
  .split()
  .compact()
  .map((line) => {
    let array
    try {
      // eslint-disable-next-line
      array = eval(line)
    } catch (err) {
      line = line.replace(/\]\[/g, '],[')
      // eslint-disable-next-line
      array = eval(line)
    }

    return parseArray(array)
  })
  .map((item) => {
    if (!item.imageId) {
      console.error(`Item without image ID found: ${item.id}`)
    } else {
      return item
    }
  })
  .compact()
  .map((item) => ({
    ...item,
    sheet: parseSheet(item.sheet),
    period: parsePeriod(item.period),
    url: `https://beeldbank.amsterdam.nl/afbeelding/${item.imageId}`,
    imageUrl: `https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=${item.imageId}`
  }))
  .map((item) => {
    if (!item.sheet) {
      console.error(`Item without sheet number found: ${item.id} - ${item.url}`)
    } else if (!item.period) {
      console.error(`Item without period found: ${item.id} - ${item.url}`)
    } else {
      return item
    }
  })
  .compact()
  .map(JSON.stringify)
  .intersperse('\n')
  .pipe(process.stdout)
