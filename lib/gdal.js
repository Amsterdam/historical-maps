import path from 'path'

function makeGcpString(gcp) {
  return `-gcp ${gcp.image.join(' ')} ${gcp.world.join(' ')}`
}

export default function gdal(
  outputDir,
  id,
  projection = 3857,
  jpgQuality = 75
) {
  const downloadDir = path.join(outputDir, 'downloads')
  const warpedDir = path.join(outputDir, `${id}`, `${projection}`, 'warped')
  const indexDir = path.join(outputDir, `${id}`, `${projection}`)

  this.preamble = function () {
    return `#!/bin/bash

# Create the directory that will contain the warped TIFFs:
mkdir -p ${downloadDir}
mkdir -p ${warpedDir}`
  }

  this.warpSheet = function (map) {
    const filename = path.join(downloadDir, `${map.id}.jpg`)
    const maskFilename = `${path.join(warpedDir, map.id)}.geojson`
    const vrtFilename = `${path.join(warpedDir, map.id)}.vrt`

    const gcpStrings = map.gcps.map((gcp) => makeGcpString(gcp, projection))

    return `
# ==============================================
# Name: ${map.id} 🗺️
# ==============================================

if [ ! -f ${filename} ]; then
  wget -O ${filename} "${map.imageUrl}"
fi

gdal_translate -of vrt \\
  -a_srs EPSG:4326 \\
${gcpStrings.join(' \\\n')} \\
   ${filename} \\
   ${vrtFilename}

echo '${JSON.stringify(map.geoMask)}' > ${maskFilename}

gdalwarp -co TILED=YES \\
  -co COMPRESS=JPEG -co JPEG_QUALITY=${jpgQuality} \\
  -dstalpha -overwrite \\
  -cutline ${maskFilename} -crop_to_cutline \\
  -tr 0.1 0.1 -t_srs "EPSG:${projection}" \\
  ${vrtFilename} \\
  ${path.join(warpedDir, map.id)}-warped.tif`
  }

  this.combine = function () {
    return `
# ==============================================
# Add overviews and create index:
# ==============================================

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

gdalbuildvrt index.vrt index.shp`
  }
}
