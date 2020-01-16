#!/usr/bin/env node

const fs = require('fs')
const H = require('highland')
const csv = require('csv-parser')
const path = require('path')

const dataDir = path.join(__dirname, 'source-data', 'atlas-loman')
const sheetsFilename = path.join(dataDir, 'sheets.geojson')
const csvFilename = path.join(dataDir, 'atlas-loman.csv')

const sheets = JSON.parse(fs.readFileSync(sheetsFilename, 'utf8'))
const rows = H(fs.createReadStream(csvFilename))
  .pipe(csv())

function gdal (sheet, outputDir, config = {}) {
  const defaultConfig = {
    projection: 28992,
    jpgQuality: 80
  }

  config = {
    ...defaultConfig,
    ...config
  }

  const warpedDir = path.join(outputDir, `${config.projection}`, 'warped')

  const vrtFilename = `${path.join(warpedDir, sheet.name)}.vrt`
  const geojsonFilename = `${path.join(warpedDir, sheet.name)}.geojson`

  const keep = true

  return `
# =============================================================================================
# Name: ${sheet.name} 🗺️
# =============================================================================================

wget -N -P ${outputDir} ${sheet.url}

gdal_translate -of vrt \\
  -a_srs EPSG:28992 \\
${sheet.gcps.map((gcp) => `  -gcp ${gcp.image.join(' ')} ${gcp.world.join(' ')}`).join(' \\\n')} \\
  ${path.join(outputDir, sheet.filename)} \\
  ${vrtFilename}

echo '${JSON.stringify(sheet.mask)}' > ${geojsonFilename}

gdalwarp -co TILED=YES \\
  -co COMPRESS=JPEG -co JPEG_QUALITY=${config.jpgQuality} \\
  -dstalpha -overwrite \\
  -cutline ${geojsonFilename} -crop_to_cutline \\
  -tr 0.1 0.1 -t_srs "EPSG:${config.projection}" \\
  ${vrtFilename} \\
  ${path.join(warpedDir, sheet.name)}-warped.tif

rm ${geojsonFilename}
${keep ? '' : `rm ${path.join(outputDir, sheet.filename)}`}
  `
}

function makeGcp (row, prefix) {
  const height = parseInt(row.hoogte)

  return {
    world: [parseFloat(row[`${prefix}xw`]), parseFloat(row[`${prefix}yw`])],
    image: [parseFloat(row[`${prefix}xi`]), height - parseFloat(row[`${prefix}yi`])]
  }
}

console.log('#!/bin/bash\n')

const buurten = {}

function sameNeighbourhood (n1, n2) {
  const toStr = (str) => str.split(/\d/)[0]
  return toStr(n1) === toStr(n2)
}

H(rows)
  .map((row) => ({
    buurt: row.buurt,
    periode: row.jaar.split('-').map((jaar) => parseInt(jaar)),
    volgnummer: parseInt(row.volgnr),
    omschrijving: row.omschr,
    id: row.id,
    nummer: parseInt(row.nr),
    beschrijving: row.beschrijving,
    breedte: parseInt(row.breedte),
    hoogte: parseInt(row.hoogte),
    gcps: [
      makeGcp(row, 'ul'),
      makeGcp(row, 'll'),
      makeGcp(row, 'ul'),
      makeGcp(row, 'lr')
    ]
  }))
  .filter((row) => !['titelblad', 'legenda', 'indexkaart'].includes(row.buurt))
  .filter((row) => row.periode[0] >= 1870 && row.periode[0] < 1880)
  .filter((row) => {
    if (buurten[row.buurt]) {
      return false
    }

    buurten[row.buurt] = row
    return row
  })
  .compact()
  .each((row) => {
    const baseUrl = 'http://mapserver.fa.knaw.nl/loman/kaarten/serie_6'
    const outputDir = './output/atlas-loman/'

    // const mask = sheets.features.filter((feature) => feature.properties.buurt === row.buurt)[0]
    const mask = sheets.features.filter((feature) => sameNeighbourhood(row.buurt, feature.properties.buurt))[0]

    if (mask) {
      const sheet = {
        name: row.buurt,
        filename: `${row.buurt}.tif`,
        mask: mask.geometry,
        url: `${baseUrl}/${row.buurt}.tif`,
        gcps: row.gcps
      }

      console.log(gdal(sheet, outputDir))
    } else {
      console.error('No mask found!', row.buurt)
    }
  })
  .done(() => {
    console.log(`
mkdir -p output/atlas-loman/28992/index

for j in output/atlas-loman/28992/warped/*.tif; do
  gdaladdo -r cubic \\
    --config COMPRESS_OVERVIEW JPEG \\
    --config PHOTOMETRIC_OVERVIEW YCBCR \\
    --config INTERLEAVE_OVERVIEW PIXEL \\
    $j 2 4 8 16 32 64 128
done

# Create tile indices
cd output/atlas-loman/28992/index
gdaltindex index.shp ../warped/*.tif
ogrinfo -sql "CREATE SPATIAL INDEX ON index" index.shp
    `)
  })
