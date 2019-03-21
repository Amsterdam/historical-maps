#!/usr/bin/env node

const fs = require('fs')
const path = require('path')
const proj4 = require('proj4')

const argv = require('yargs')
  .option('sheets', {
    alias: 's',
    describe: 'GeoJSON file with coordinates of map sheets (in original projection)',
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
  .option('keep', {
    alias: 'k',
    describe: 'keep the original downloaded TIFFs',
    default: false
  })
  .boolean('keep')
  .option('retile', {
    alias: 'r',
    describe: 'use gdal_retile to create GeoTIFFs for different scales',
    default: true
  })
  .boolean('retile')
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
  .option('baseDir', {
    alias: 'b',
    describe: 'absolute base directory for resulting Shapefiles',
    type: 'string'
  })
  .option('method', {
    alias: 'm',
    describe: 'map sheet orientation - old method was used in 1909, new method in later maps',
    default: 'new',
    choices: ['old', 'new']
  })
  .demandOption(['sheets', 'gcps', 'output'], 'Please provide <sheets>, <gcps> and <output> arguments')
  .argv

const EPSG_28992 = `+proj=sterea +lat_0=52.15616055555555 +lon_0=5.38763888888889 +k=0.9999079
  +x_0=155000 +y_0=463000 +ellps=bessel +towgs84=565.417,50.3319,465.552,-0.398957,0.343988,-1.8774,4.0725
  +units=m +no_defs`
const project = proj4(EPSG_28992, 'WGS84')

const sheetDimensions = [950, 750] // in meters

const readJson = (filename) => JSON.parse(fs.readFileSync(filename, 'utf8'))

const sheetsGeoJson = readJson(argv.sheets)
const gcps = readJson(argv.gcps)

const after1940 = ([x, y]) => ([
  x + 155000,
  y + 463000
])

const before1940 = ([x, y]) => {
  // Omrekening PW-coordinaten vóór 1940 (rotatie: 2 graden, nulpunt: Prinsenhof):
  x += 33552
  y -= 24000

  const degrees = -2
  const radians = (degrees / 180) * Math.PI

  return [
    x * Math.cos(radians) - y * Math.sin(radians) + 121528,
    x * Math.sin(radians) + y * Math.cos(radians) + 487081
  ]
}

function cornerToRdBbox (corner) {
  const corner2 = [
    corner[0] + sheetDimensions[0],
    corner[1] + sheetDimensions[1]
  ]

  const bbox = [
    corner,
    [corner2[0], corner[1]],
    corner2,
    [corner[0], corner2[1]],
    corner
  ]

  return argv.method === 'new' ? bbox.map(after1940) : bbox.map(before1940)
}

function rdBboxToPolygon (bbox) {
  const latlngBbox = bbox.map(project.forward)

  return {
    type: 'Polygon',
    coordinates: [
      latlngBbox
    ]
  }
}

const cornersBySheet = sheetsGeoJson.features
  .reduce((corners, sheet) => ({
    ...corners,
    [sheet.properties.BLAD]: [
      sheet.properties.MINX2,
      sheet.properties.MINY2
    ]
  }), {})

const outputDir = argv.output

const warpedDir = path.join(outputDir, `${argv.projection}`, 'warped')
const indexDir = path.join(outputDir, `${argv.projection}`, 'index')
const retiledDir = path.join(outputDir, `${argv.projection}`, 'retiled')

console.log(`#!/bin/bash

# Create the directory that will contain the warped TIFFs:
mkdir -p ${warpedDir}
`)

gcps.forEach((sheet) => {
  const sheetNumber = sheet.filename.split('_')[0]
  const corner = cornersBySheet[sheetNumber]

  if (!corner) {
    const message = `Error! Sheet not found: ${sheetNumber}`
    console.error(message)
    console.log(`
# =============================================================================================
# 😩 ${message}
# =============================================================================================
    `)
    return
  }

  const gcps = [
    [sheet.x1, sheet.scanHeight - sheet.y1],
    [sheet.x2, sheet.scanHeight - sheet.y2],
    [sheet.x3, sheet.scanHeight - sheet.y3],
    [sheet.x4, sheet.scanHeight - sheet.y4]
  ]
  const rdBbox = cornerToRdBbox(corner)
  const polygon = rdBboxToPolygon(rdBbox)

  // ogr2ogr -nlt POLYGON -skipfailures tiffs/B1_0055_1939.tif.shp tiffs/B1_0055_1939.tif.geojson
  // ${gcps.map((gcp, index) => `  -gcp ${gcp.join(' ')} ${rdBbox[index].join(' ')} \\`).join('\n')}
  // -cutline tiffs/B1_0055_1939.tif.shp -crop_to_cutline \

  const basename = path.basename(sheet.url, '.tif')

  const vrtFilename = `${path.join(warpedDir, basename)}.vrt`
  const geojsonFilename = `${path.join(warpedDir, basename)}.geojson`

  console.log(`
# =============================================================================================
# Name: ${basename} 🗺️
# =============================================================================================

wget -N -P ${outputDir} ${sheet.url}

gdal_translate -of vrt \\
  -a_srs EPSG:28992 \\
  -gcp ${gcps[0].join(' ')} ${rdBbox[3].join(' ')} \\
  -gcp ${gcps[1].join(' ')} ${rdBbox[2].join(' ')} \\
  -gcp ${gcps[3].join(' ')} ${rdBbox[1].join(' ')} \\
  -gcp ${gcps[2].join(' ')} ${rdBbox[0].join(' ')} \\
  ${path.join(outputDir, sheet.filename)} \\
  ${vrtFilename}

echo '${JSON.stringify(polygon)}' > ${geojsonFilename}

gdalwarp -co TILED=YES \\
  -co COMPRESS=JPEG -co JPEG_QUALITY=${argv.quality} \\
  -dstalpha -overwrite \\
  -cutline ${geojsonFilename} -crop_to_cutline \\
  -tr 0.1 0.1 -t_srs "EPSG:${argv.projection}" \\
  ${vrtFilename} \\
  ${path.join(warpedDir, basename)}-warped.tif

rm ${geojsonFilename}
${argv.keep ? '' : `rm ${path.join(outputDir, sheet.filename)}`}
`)})

let baseDir = ''
if (argv.baseDir) {
  baseDir = argv.baseDir + (argv.baseDir.slice(-1) === '/' ? '' : '/')
}

if (argv.retile) {
  console.log(`
# =============================================================================================
# Retile TIFFs, add overviews, and create indexes:
# =============================================================================================

# Create the directory that will contain the tiles:
mkdir -p ${retiledDir}/0

# Create a list of images in the output directory
ls ${warpedDir}/*-warped.tif > ${retiledDir}/warped-tiffs-list.txt

mkdir -p ${indexDir}/0

gdal_retile.py -v -r cubic -levels 5 -ps 8192 8192 -co "TILED=YES" \\
  -co COMPRESS=JPEG -co PHOTOMETRIC=YCBCR -co JPEG_QUALITY=90 \\
  -s_srs "EPSG:28992" -targetDir ${retiledDir} --optfile ${retiledDir}/warped-tiffs-list.txt

# Put original resolution images in their own subdirectory
mv ${retiledDir}/*.tif ${retiledDir}/0

LEVELS=$(find ${retiledDir}/* -type d -exec basename {} \\; | sort)

for i in $LEVELS; do
  # Create overviews to show when zoomed out of original resolution
  for j in ${retiledDir}/$i/*.tif; do
    gdaladdo -r cubic \\
      --config COMPRESS_OVERVIEW JPEG \\
      --config PHOTOMETRIC_OVERVIEW YCBCR \\
      --config INTERLEAVE_OVERVIEW PIXEL \\
      $j 2 4 8 16 32 64 128
  done

  # Create tile indices
  gdaltindex ${indexDir}/index-$i.shp ${retiledDir}/$i/*.tif

  ${baseDir ? `ogrinfo -dialect SQLITE -sql "UPDATE 'index-$i' SET location = '${baseDir}' || location" ${indexDir}/index-$i.shp`: ''}
  ogrinfo -sql "CREATE SPATIAL INDEX ON index-$i" ${indexDir}/index-$i.shp
done
`)
} else {
  console.log(`
# =============================================================================================
# Add overviews and create index:
# =============================================================================================

mkdir -p ${indexDir}

for j in ${warpedDir}/*.tif; do
  gdaladdo -r cubic \\
    --config COMPRESS_OVERVIEW JPEG \\
    --config PHOTOMETRIC_OVERVIEW YCBCR \\
    --config INTERLEAVE_OVERVIEW PIXEL \\
    $j 2 4 8 16 32 64 128
done

# Create tile indices
gdaltindex ${indexDir}/index.shp ${warpedDir}/*.tif

${baseDir ? `ogrinfo -dialect SQLITE -sql "UPDATE 'index' SET location = '${baseDir}' || location" ${indexDir}/index.shp`: ''}
ogrinfo -sql "CREATE SPATIAL INDEX ON index" ${indexDir}/index.shp
`)
}
