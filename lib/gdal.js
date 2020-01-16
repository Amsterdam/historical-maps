const path = require('path')

function makeGcpString (gcp, projection) {
  return `-gcp ${gcp.image.join(' ')} ${gcp.world.join(' ')}`
}

module.exports = function (outputDir, year, projection = 28992, jpgQuality = 75) {
  const downloadDir = path.join(outputDir, 'downloads')
  const warpedDir = path.join(outputDir, `${year}`, `${projection}`, 'warped')
  const indexDir = path.join(outputDir, `${year}`, `${projection}`)

  console.log(`#!/bin/bash

# Create the directory that will contain the warped TIFFs:
mkdir -p ${downloadDir}
mkdir -p ${warpedDir}
  `)

  this.sheet = function (sheet, featureWithGCPs, mask) {
    const filename = path.join(downloadDir, `${sheet.imageId}.jpg`)
    const maskFilename = `${path.join(warpedDir, sheet.imageId)}.geojson`
    const vrtFilename = `${path.join(warpedDir, sheet.imageId)}.vrt`

    const gcpStrings = featureWithGCPs.properties.gcps
      .map((gcp, index) => ({
        image: gcp,
        world: featureWithGCPs.geometry.coordinates[index]
      }))
      .map((gcp) => makeGcpString(gcp, projection))

    console.log(`
# =============================================================================================
# Name: ${sheet.imageId} 🗺️
# =============================================================================================

if [ ! -f ${filename} ]; then
  wget -O ${filename} "${sheet.imageUrl}"
fi

gdal_translate -of vrt \\
  -a_srs EPSG:4326 \\
${gcpStrings.join(' \\\n')} \\
   ${filename} \\
   ${vrtFilename}

echo '${JSON.stringify(mask)}' > ${maskFilename}

gdalwarp -co TILED=YES \\
  -co COMPRESS=JPEG -co JPEG_QUALITY=${jpgQuality} \\
  -dstalpha -overwrite \\
  -cutline ${maskFilename} -crop_to_cutline \\
  -tr 0.1 0.1 -t_srs "EPSG:${projection}" \\
  ${vrtFilename} \\
  ${path.join(warpedDir, sheet.imageId)}-warped.tif
    `)
  }

  this.index = function () {
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
cd ${indexDir}
gdaltindex index.shp warped/*.tif
ogrinfo -sql "CREATE SPATIAL INDEX ON index" index.shp
    `)
  }
}
