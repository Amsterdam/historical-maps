#!/bin/bash

# Create the directory that will contain the warped TIFFs:
mkdir -p output/downloads
mkdir -p output/publieke-werken-1985/3857/warped

# ==============================================
# Name: DUIZ00061000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00061000001.jpg ]; then
  wget -O output/downloads/DUIZ00061000001.jpg "https://webservices.picturae.com/mediabank/media/a70ac082-37b6-6f48-aba3-9d1b94bab47b/downloadoriginal/03eb113d-7ca6-d765-26a9-6eac266f3f78?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 226 213 4.838199591701413 52.41679133668231 \
-gcp 5838 234 4.852162980025028 52.41685521320238 \
-gcp 5819 4674 4.852244378519896 52.410114836818096 \
-gcp 209 4654 4.838283114951327 52.410050972843436 \
   output/downloads/DUIZ00061000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00061000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.838283114951327,52.410050972843436],[4.852244378519896,52.410114836818096],[4.852162980025028,52.41685521320238],[4.838199591701413,52.41679133668231],[4.838283114951327,52.410050972843436]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00061000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00061000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00061000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00061000001-warped.tif

# ==============================================
# Name: DUIZ00077000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00077000001.jpg ]; then
  wget -O output/downloads/DUIZ00077000001.jpg "https://webservices.picturae.com/mediabank/media/3e251855-bd6c-2054-5480-4fc6ed324f5c/downloadoriginal/102135fb-4cfb-80b7-dede-2248a6beaa94?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 265 62 4.852162980025028 52.41685521320238 \
-gcp 5876 44 4.866126414072906 52.41691744372867 \
-gcp 5890 4489 4.866205687789138 52.41017705512218 \
-gcp 279 4507 4.852244378519896 52.410114836818096 \
   output/downloads/DUIZ00077000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00077000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.852244378519896,52.410114836818096],[4.866205687789138,52.41017705512218],[4.866126414072906,52.41691744372867],[4.852162980025028,52.41685521320238],[4.852244378519896,52.410114836818096]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00077000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00077000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00077000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00077000001-warped.tif

# ==============================================
# Name: DUIZ00084000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00084000001.jpg ]; then
  wget -O output/downloads/DUIZ00084000001.jpg "https://webservices.picturae.com/mediabank/media/75166f98-393c-8c3e-f420-5096fa43f57e/downloadoriginal/dab6a07f-c20c-45e3-96c1-5b772a6acf9e?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 265 233 4.866126414072906 52.41691744372867 \
-gcp 5875 214 4.880089892651724 52.41697802825018 \
-gcp 5890 4660 4.880167041566347 52.410237627744756 \
-gcp 280 4678 4.866205687789138 52.41017705512218 \
   output/downloads/DUIZ00084000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00084000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866205687789138,52.41017705512218],[4.880167041566347,52.410237627744756],[4.880089892651724,52.41697802825018],[4.866126414072906,52.41691744372867],[4.866205687789138,52.41017705512218]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00084000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00084000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00084000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00084000001-warped.tif

# ==============================================
# Name: DUIZ00092000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00092000001.jpg ]; then
  wget -O output/downloads/DUIZ00092000001.jpg "https://webservices.picturae.com/mediabank/media/54f45f02-72d6-5084-61a2-b4a2d2b2fdc4/downloadoriginal/2984fe45-c277-0a3e-b21d-e65fe0b02931?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 264 244 4.880089892651724 52.41697802825018 \
-gcp 5848 255 4.8940534145681225 52.417036966756186 \
-gcp 5837 4671 4.894128438658776 52.4102965546749 \
-gcp 240 4664 4.880167041566347 52.410237627744756 \
   output/downloads/DUIZ00092000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00092000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880167041566347,52.410237627744756],[4.894128438658776,52.4102965546749],[4.8940534145681225,52.417036966756186],[4.880089892651724,52.41697802825018],[4.880167041566347,52.410237627744756]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00092000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00092000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00092000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00092000001-warped.tif

# ==============================================
# Name: DUIZ00098000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00098000001.jpg ]; then
  wget -O output/downloads/DUIZ00098000001.jpg "https://webservices.picturae.com/mediabank/media/a1dd167b-380d-5b66-fc95-c51186529fec/downloadoriginal/40d60104-b2e9-b407-5745-a76e34a3a027?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 230 231 4.8940534145681225 52.417036966756186 \
-gcp 5815 229 4.90801697862873 52.41709425923615 \
-gcp 5814 4648 4.908089877873669 52.41035383590234 \
-gcp 221 4654 4.894128438658776 52.4102965546749 \
   output/downloads/DUIZ00098000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00098000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894128438658776,52.4102965546749],[4.908089877873669,52.41035383590234],[4.90801697862873,52.41709425923615],[4.8940534145681225,52.417036966756186],[4.894128438658776,52.4102965546749]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00098000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00098000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00098000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00098000001-warped.tif

# ==============================================
# Name: DUIZ00100000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00100000001.jpg ]; then
  wget -O output/downloads/DUIZ00100000001.jpg "https://webservices.picturae.com/mediabank/media/33ee562f-af40-659e-7624-396912518c51/downloadoriginal/18d79d51-1a6b-8be6-3445-f89351d68b2d?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 305 204 4.90801697862873 52.41709425923615 \
-gcp 5912 199 4.9219805836401385 52.41714990568 \
-gcp 5916 4631 4.922051358018236 52.41040947141681 \
-gcp 308 4637 4.908089877873669 52.41035383590234 \
   output/downloads/DUIZ00100000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00100000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908089877873669,52.41035383590234],[4.922051358018236,52.41040947141681],[4.9219805836401385,52.41714990568],[4.90801697862873,52.41709425923615],[4.908089877873669,52.41035383590234]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00100000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00100000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00100000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00100000001-warped.tif

# ==============================================
# Name: DUIZ00104000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00104000001.jpg ]; then
  wget -O output/downloads/DUIZ00104000001.jpg "https://webservices.picturae.com/mediabank/media/b5a63e69-b8ae-f146-297f-f6d58b3ed895/downloadoriginal/ec75f3dd-a4ae-0da8-b914-873dd08dd01f?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 318 215 4.9219805836401385 52.41714990568 \
-gcp 5925 204 4.935944228408924 52.41720390607777 \
-gcp 5933 4638 4.9360128778996675 52.41046346120849 \
-gcp 324 4649 4.922051358018236 52.41040947141681 \
   output/downloads/DUIZ00104000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00104000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922051358018236,52.41040947141681],[4.9360128778996675,52.41046346120849],[4.935944228408924,52.41720390607777],[4.9219805836401385,52.41714990568],[4.922051358018236,52.41040947141681]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00104000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00104000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00104000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00104000001-warped.tif

# ==============================================
# Name: DUIZ00110000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00110000001.jpg ]; then
  wget -O output/downloads/DUIZ00110000001.jpg "https://webservices.picturae.com/mediabank/media/32d53cd7-bed9-43f1-6fab-a54e58c08932/downloadoriginal/73f985e1-6aa5-626f-993b-9a2411b14370?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 327 202 4.935944228408924 52.41720390607777 \
-gcp 5937 206 4.949907911741642 52.41725626042002 \
-gcp 5930 4640 4.9499744363251335 52.410515805267835 \
-gcp 323 4639 4.9360128778996675 52.41046346120849 \
   output/downloads/DUIZ00110000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00110000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.9360128778996675,52.41046346120849],[4.9499744363251335,52.410515805267835],[4.949907911741642,52.41725626042002],[4.935944228408924,52.41720390607777],[4.9360128778996675,52.41046346120849]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00110000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00110000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00110000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00110000001-warped.tif

# ==============================================
# Name: DUIZ00114000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00114000001.jpg ]; then
  wget -O output/downloads/DUIZ00114000001.jpg "https://webservices.picturae.com/mediabank/media/df7748b7-79ff-6ec6-cb50-36610b7410b4/downloadoriginal/d2a4afcc-9329-c957-6c62-d3d54a3cffdf?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 326 304 4.949907911741642 52.41725626042002 \
-gcp 5912 306 4.9638716324448175 52.41730696869735 \
-gcp 5909 4700 4.963936032101777 52.4105665035855 \
-gcp 323 4703 4.9499744363251335 52.410515805267835 \
   output/downloads/DUIZ00114000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00114000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.9499744363251335,52.410515805267835],[4.963936032101777,52.4105665035855],[4.9638716324448175,52.41730696869735],[4.949907911741642,52.41725626042002],[4.9499744363251335,52.410515805267835]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00114000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00114000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00114000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00114000001-warped.tif

# ==============================================
# Name: DUIZ00132000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00132000001.jpg ]; then
  wget -O output/downloads/DUIZ00132000001.jpg "https://webservices.picturae.com/mediabank/media/d3ecb733-3c5f-8f9d-1059-2c65fed48b66/downloadoriginal/b1772a77-6c23-8e17-ce1e-1046dc1cffab?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 359 526 4.838283114951327 52.410050972843436 \
-gcp 5974 526 4.852244378519896 52.410114836818096 \
-gcp 5970 4956 4.852325748530965 52.403374450875255 \
-gcp 358 4958 4.838366608974078 52.403310599442165 \
   output/downloads/DUIZ00132000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00132000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.838366608974078,52.403310599442165],[4.852325748530965,52.403374450875255],[4.852244378519896,52.410114836818096],[4.838283114951327,52.410050972843436],[4.838366608974078,52.403310599442165]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00132000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00132000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00132000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00132000001-warped.tif

# ==============================================
# Name: DUIZ00141000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00141000001.jpg ]; then
  wget -O output/downloads/DUIZ00141000001.jpg "https://webservices.picturae.com/mediabank/media/5b5a574d-3b73-07ee-8018-d3135cf286a3/downloadoriginal/41c55fea-d5dc-577d-d14b-80859fd3cfc3?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 208 213 4.852244378519896 52.410114836818096 \
-gcp 5800 197 4.866205687789138 52.41017705512218 \
-gcp 5808 4620 4.866284933764953 52.403436656960864 \
-gcp 205 4639 4.852325748530965 52.403374450875255 \
   output/downloads/DUIZ00141000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00141000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.852325748530965,52.403374450875255],[4.866284933764953,52.403436656960864],[4.866205687789138,52.41017705512218],[4.852244378519896,52.410114836818096],[4.852325748530965,52.403374450875255]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00141000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00141000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00141000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00141000001-warped.tif

# ==============================================
# Name: DUIZ00149000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00149000001.jpg ]; then
  wget -O output/downloads/DUIZ00149000001.jpg "https://webservices.picturae.com/mediabank/media/e7a72c5d-036f-52ff-dd76-a8c222b0deae/downloadoriginal/bd93ce6e-4851-4c5e-d58e-10c02ee69159?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 255 217 4.866205687789138 52.41017705512218 \
-gcp 5844 242 4.880167041566347 52.410237627744756 \
-gcp 5820 4662 4.880244163483944 52.40349721768798 \
-gcp 225 4642 4.866284933764953 52.403436656960864 \
   output/downloads/DUIZ00149000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00149000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866284933764953,52.403436656960864],[4.880244163483944,52.40349721768798],[4.880167041566347,52.410237627744756],[4.866205687789138,52.41017705512218],[4.866284933764953,52.403436656960864]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00149000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00149000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00149000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00149000001-warped.tif

# ==============================================
# Name: DUIZ00155000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00155000001.jpg ]; then
  wget -O output/downloads/DUIZ00155000001.jpg "https://webservices.picturae.com/mediabank/media/ec00a4b7-f99c-d00c-6fa0-c5ec037a70c0/downloadoriginal/3ec34002-00f8-a10d-a1e4-08b9ad16a091?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 209 220 4.880167041566347 52.410237627744756 \
-gcp 5801 203 4.894128438658776 52.4102965546749 \
-gcp 5809 4619 4.8942034364958165 52.40355613304592 \
-gcp 221 4639 4.880244163483944 52.40349721768798 \
   output/downloads/DUIZ00155000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00155000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880244163483944,52.40349721768798],[4.8942034364958165,52.40355613304592],[4.894128438658776,52.4102965546749],[4.880167041566347,52.410237627744756],[4.880244163483944,52.40349721768798]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00155000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00155000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00155000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00155000001-warped.tif

# ==============================================
# Name: DUIZ00161000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00161000001.jpg ]; then
  wget -O output/downloads/DUIZ00161000001.jpg "https://webservices.picturae.com/mediabank/media/96826c2c-6367-09a5-3652-a875ee942348/downloadoriginal/e268e3e8-cfe4-6ca5-c378-e57051f10ecf?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 200 202 4.894128438658776 52.4102965546749 \
-gcp 5795 202 4.908089877873669 52.41035383590234 \
-gcp 5794 4622 4.908162751608422 52.403613403024195 \
-gcp 200 4623 4.8942034364958165 52.40355613304592 \
   output/downloads/DUIZ00161000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00161000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.8942034364958165,52.40355613304592],[4.908162751608422,52.403613403024195],[4.908089877873669,52.41035383590234],[4.894128438658776,52.4102965546749],[4.8942034364958165,52.40355613304592]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00161000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00161000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00161000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00161000001-warped.tif

# ==============================================
# Name: DUIZ00166000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00166000001.jpg ]; then
  wget -O output/downloads/DUIZ00166000001.jpg "https://webservices.picturae.com/mediabank/media/75da8826-dd96-d566-50d2-907fbeb0113b/downloadoriginal/55b3a4b5-4e77-a86e-5ac8-1056ecb29c56?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 243 226 4.908089877873669 52.41035383590234 \
-gcp 5852 236 4.922051358018236 52.41040947141681 \
-gcp 5838 4669 4.92212210762959 52.40366902761266 \
-gcp 228 4656 4.908162751608422 52.403613403024195 \
   output/downloads/DUIZ00166000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00166000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908162751608422,52.403613403024195],[4.92212210762959,52.40366902761266],[4.922051358018236,52.41040947141681],[4.908089877873669,52.41035383590234],[4.908162751608422,52.403613403024195]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00166000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00166000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00166000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00166000001-warped.tif

# ==============================================
# Name: DUIZ00171000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00171000001.jpg ]; then
  wget -O output/downloads/DUIZ00171000001.jpg "https://webservices.picturae.com/mediabank/media/371dd447-d943-7cb4-83d9-136d80456bd0/downloadoriginal/81bd4386-c253-32e7-1245-4fd712af13c1?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 275 255 4.922051358018236 52.41040947141681 \
-gcp 5894 268 4.9360128778996675 52.41046346120849 \
-gcp 5883 4709 4.936081503367122 52.403723006801435 \
-gcp 269 4703 4.92212210762959 52.40366902761266 \
   output/downloads/DUIZ00171000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00171000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.92212210762959,52.40366902761266],[4.936081503367122,52.403723006801435],[4.9360128778996675,52.41046346120849],[4.922051358018236,52.41040947141681],[4.92212210762959,52.40366902761266]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00171000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00171000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00171000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00171000001-warped.tif

# ==============================================
# Name: DUIZ00176000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00176000001.jpg ]; then
  wget -O output/downloads/DUIZ00176000001.jpg "https://webservices.picturae.com/mediabank/media/458d9af4-1eb1-6c22-1c53-533a6aab24f0/downloadoriginal/e5958bb8-e8a1-1ec3-7fa9-b64984410ca0?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 211 203 4.9360128778996675 52.41046346120849 \
-gcp 5812 203 4.9499744363251335 52.410515805267835 \
-gcp 5809 4628 4.950040937628804 52.403775340581 \
-gcp 210 4629 4.936081503367122 52.403723006801435 \
   output/downloads/DUIZ00176000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00176000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936081503367122,52.403723006801435],[4.950040937628804,52.403775340581],[4.9499744363251335,52.410515805267835],[4.9360128778996675,52.41046346120849],[4.936081503367122,52.403723006801435]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00176000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00176000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00176000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00176000001-warped.tif

# ==============================================
# Name: DUIZ00184000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00184000001.jpg ]; then
  wget -O output/downloads/DUIZ00184000001.jpg "https://webservices.picturae.com/mediabank/media/e6361ee6-5c0e-451f-ad9f-9bfc34f4c1da/downloadoriginal/d6fa0fd2-5fa6-2489-dea8-7af564d8c316?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 198 169 4.9499744363251335 52.410515805267835 \
-gcp 5826 177 4.963936032101777 52.4105665035855 \
-gcp 5811 4610 4.964000409222395 52.40382602894206 \
-gcp 193 4602 4.950040937628804 52.403775340581 \
   output/downloads/DUIZ00184000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00184000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.950040937628804,52.403775340581],[4.964000409222395,52.40382602894206],[4.963936032101777,52.4105665035855],[4.9499744363251335,52.410515805267835],[4.950040937628804,52.403775340581]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00184000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00184000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00184000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00184000001-warped.tif

# ==============================================
# Name: DUIZ00199000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00199000001.jpg ]; then
  wget -O output/downloads/DUIZ00199000001.jpg "https://webservices.picturae.com/mediabank/media/ca735b1d-6daa-93ff-4af1-cb6d527a53fd/downloadoriginal/9f9daf2c-04ea-614f-b98b-f9a6fa2f2b90?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 232 270 4.838366608974078 52.403310599442165 \
-gcp 5850 253 4.852325748530965 52.403374450875255 \
-gcp 5865 4697 4.8524070900729255 52.396634055419845 \
-gcp 246 4719 4.838450073784738 52.39657021652456 \
   output/downloads/DUIZ00199000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00199000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.838450073784738,52.39657021652456],[4.8524070900729255,52.396634055419845],[4.852325748530965,52.403374450875255],[4.838366608974078,52.403310599442165],[4.838450073784738,52.39657021652456]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00199000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00199000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00199000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00199000001-warped.tif

# ==============================================
# Name: DUIZ00206000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00206000001.jpg ]; then
  wget -O output/downloads/DUIZ00206000001.jpg "https://webservices.picturae.com/mediabank/media/689bdfac-43f3-1951-fea6-c5e50daf964f/downloadoriginal/c6547b26-ed82-8b8e-2df6-59fcb2c00a3c?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 322 438 4.852325748530965 52.403374450875255 \
-gcp 5944 461 4.866284933764953 52.403436656960864 \
-gcp 5924 4914 4.866364152014655 52.396696249290706 \
-gcp 304 4890 4.8524070900729255 52.396634055419845 \
   output/downloads/DUIZ00206000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00206000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.8524070900729255,52.396634055419845],[4.866364152014655,52.396696249290706],[4.866284933764953,52.403436656960864],[4.852325748530965,52.403374450875255],[4.8524070900729255,52.396634055419845]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00206000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00206000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00206000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00206000001-warped.tif

# ==============================================
# Name: DUIZ00213000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00213000001.jpg ]; then
  wget -O output/downloads/DUIZ00213000001.jpg "https://webservices.picturae.com/mediabank/media/4ac4a595-34b8-83be-88fd-9a55ce260fc4/downloadoriginal/024567e8-239a-0558-acd2-23fa348a706b?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 270 256 4.866284933764953 52.403436656960864 \
-gcp 5868 236 4.880244163483944 52.40349721768798 \
-gcp 5881 4654 4.880321258418444 52.39675679812607 \
-gcp 281 4668 4.866364152014655 52.396696249290706 \
   output/downloads/DUIZ00213000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00213000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866364152014655,52.396696249290706],[4.880321258418444,52.39675679812607],[4.880244163483944,52.40349721768798],[4.866284933764953,52.403436656960864],[4.866364152014655,52.396696249290706]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00213000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00213000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00213000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00213000001-warped.tif

# ==============================================
# Name: DUIZ00220000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00220000001.jpg ]; then
  wget -O output/downloads/DUIZ00220000001.jpg "https://webservices.picturae.com/mediabank/media/ba7f995f-afae-be9c-4e7e-0923b9bfc44f/downloadoriginal/0ce11102-2c8f-9a99-6798-42c46d2bc34e?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 204 216 4.880244163483944 52.40349721768798 \
-gcp 5795 192 4.8942034364958165 52.40355613304592 \
-gcp 5808 4612 4.894278408092784 52.39681570191524 \
-gcp 215 4634 4.880321258418444 52.39675679812607 \
   output/downloads/DUIZ00220000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00220000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880321258418444,52.39675679812607],[4.894278408092784,52.39681570191524],[4.8942034364958165,52.40355613304592],[4.880244163483944,52.40349721768798],[4.880321258418444,52.39675679812607]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00220000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00220000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00220000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00220000001-warped.tif

# ==============================================
# Name: DUIZ00231000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00231000001.jpg ]; then
  wget -O output/downloads/DUIZ00231000001.jpg "https://webservices.picturae.com/mediabank/media/552defd9-20b5-9dd5-c02f-fd92732d1936/downloadoriginal/76554548-73b4-ffd5-e5ff-59b03e90ba72?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 370 398 4.8942034364958165 52.40355613304592 \
-gcp 7765 379 4.908162751608422 52.403613403024195 \
-gcp 7785 6227 4.908235599846147 52.39687296064778 \
-gcp 371 6254 4.894278408092784 52.39681570191524 \
   output/downloads/DUIZ00231000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00231000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894278408092784,52.39681570191524],[4.908235599846147,52.39687296064778],[4.908162751608422,52.403613403024195],[4.8942034364958165,52.40355613304592],[4.894278408092784,52.39681570191524]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00231000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00231000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00231000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00231000001-warped.tif

# ==============================================
# Name: DUIZ00243000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00243000001.jpg ]; then
  wget -O output/downloads/DUIZ00243000001.jpg "https://webservices.picturae.com/mediabank/media/539d3813-1166-db8f-24e9-1e88299cf8db/downloadoriginal/0c25a099-11ae-970f-e984-25e40e0bb4da?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 276 306 4.908162751608422 52.403613403024195 \
-gcp 7652 294 4.92212210762959 52.40366902761266 \
-gcp 7670 6125 4.922192832486973 52.39692857431355 \
-gcp 283 6147 4.908235599846147 52.39687296064778 \
   output/downloads/DUIZ00243000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00243000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908235599846147,52.39687296064778],[4.922192832486973,52.39692857431355],[4.92212210762959,52.40366902761266],[4.908162751608422,52.403613403024195],[4.908235599846147,52.39687296064778]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00243000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00243000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00243000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00243000001-warped.tif

# ==============================================
# Name: DUIZ00249000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00249000001.jpg ]; then
  wget -O output/downloads/DUIZ00249000001.jpg "https://webservices.picturae.com/mediabank/media/05b97356-1634-2831-f506-b2f4a9a81f0f/downloadoriginal/3af1f39e-b8ad-25d8-9b4d-eedadbfe2f74?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 340 394 4.92212210762959 52.40366902761266 \
-gcp 7711 339 4.936081503367122 52.403723006801435 \
-gcp 7761 6172 4.936150104823676 52.396982542902656 \
-gcp 379 6233 4.922192832486973 52.39692857431355 \
   output/downloads/DUIZ00249000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00249000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922192832486973,52.39692857431355],[4.936150104823676,52.396982542902656],[4.936081503367122,52.403723006801435],[4.92212210762959,52.40366902761266],[4.922192832486973,52.39692857431355]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00249000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00249000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00249000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00249000001-warped.tif

# ==============================================
# Name: DUIZ00256000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00256000001.jpg ]; then
  wget -O output/downloads/DUIZ00256000001.jpg "https://webservices.picturae.com/mediabank/media/7519e85c-12da-f1cb-944a-d8ccd7e37b5b/downloadoriginal/74b51651-9629-19d5-f484-16f51ea9fa18?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 309 383 4.936081503367122 52.403723006801435 \
-gcp 7680 340 4.950040937628804 52.403775340581 \
-gcp 7723 6165 4.950107415664662 52.39703486640556 \
-gcp 343 6219 4.936150104823676 52.396982542902656 \
   output/downloads/DUIZ00256000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00256000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936150104823676,52.396982542902656],[4.950107415664662,52.39703486640556],[4.950040937628804,52.403775340581],[4.936081503367122,52.403723006801435],[4.936150104823676,52.396982542902656]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00256000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00256000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00256000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00256000001-warped.tif

# ==============================================
# Name: DUIZ00263000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00263000001.jpg ]; then
  wget -O output/downloads/DUIZ00263000001.jpg "https://webservices.picturae.com/mediabank/media/80ebaa55-e5a8-c538-771e-7a0b91b58305/downloadoriginal/0a263f8b-42a7-65d8-bb4f-42099eb14863?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 348 377 4.950040937628804 52.403775340581 \
-gcp 7723 347 4.964000409222395 52.40382602894206 \
-gcp 7750 6174 4.964064763818304 52.397085544813 \
-gcp 368 6215 4.950107415664662 52.39703486640556 \
   output/downloads/DUIZ00263000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00263000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.950107415664662,52.39703486640556],[4.964064763818304,52.397085544813],[4.964000409222395,52.40382602894206],[4.950040937628804,52.403775340581],[4.950107415664662,52.39703486640556]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00263000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00263000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00263000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00263000001-warped.tif

# ==============================================
# Name: DUIZ00279000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00279000001.jpg ]; then
  wget -O output/downloads/DUIZ00279000001.jpg "https://webservices.picturae.com/mediabank/media/ac3c562d-7df1-54b9-fb9c-ddafa91b4546/downloadoriginal/63488085-42e9-500f-facc-a4f06640cd74?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 344 359 4.838450073784738 52.39657021652456 \
-gcp 7753 350 4.8524070900729255 52.396634055419845 \
-gcp 7769 6156 4.852488403160459 52.389893650497974 \
-gcp 373 6187 4.838533509398376 52.38982982413665 \
   output/downloads/DUIZ00279000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00279000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.838533509398376,52.38982982413665],[4.852488403160459,52.389893650497974],[4.8524070900729255,52.396634055419845],[4.838450073784738,52.39657021652456],[4.838533509398376,52.38982982413665]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00279000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00279000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00279000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00279000001-warped.tif

# ==============================================
# Name: DUIZ00286000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00286000001.jpg ]; then
  wget -O output/downloads/DUIZ00286000001.jpg "https://webservices.picturae.com/mediabank/media/843760c9-c7cd-a4ae-5aeb-5e7f5666f71a/downloadoriginal/828aac59-e1fd-391f-2b21-839be4edd854?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 588 520 4.8524070900729255 52.396634055419845 \
-gcp 7972 588 4.866364152014655 52.396696249290706 \
-gcp 7902 6412 4.866443342552546 52.38995583215777 \
-gcp 535 6356 4.852488403160459 52.389893650497974 \
   output/downloads/DUIZ00286000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00286000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.852488403160459,52.389893650497974],[4.866443342552546,52.38995583215777],[4.866364152014655,52.396696249290706],[4.8524070900729255,52.396634055419845],[4.852488403160459,52.389893650497974]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00286000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00286000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00286000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00286000001-warped.tif

# ==============================================
# Name: DUIZ00301000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00301000001.jpg ]; then
  wget -O output/downloads/DUIZ00301000001.jpg "https://webservices.picturae.com/mediabank/media/4932dfb5-aff6-51cb-3a49-0a2906630bc4/downloadoriginal/ba223de3-8a49-f7fd-3e06-172571471fb3?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 374 398 4.866364152014655 52.396696249290706 \
-gcp 7744 356 4.880321258418444 52.39675679812607 \
-gcp 7786 6190 4.880398326383764 52.39001636910501 \
-gcp 394 6243 4.866443342552546 52.38995583215777 \
   output/downloads/DUIZ00301000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00301000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866443342552546,52.38995583215777],[4.880398326383764,52.39001636910501],[4.880321258418444,52.39675679812607],[4.866364152014655,52.396696249290706],[4.866443342552546,52.38995583215777]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00301000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00301000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00301000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00301000001-warped.tif

# ==============================================
# Name: DUIZ00309000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00309000001.jpg ]; then
  wget -O output/downloads/DUIZ00309000001.jpg "https://webservices.picturae.com/mediabank/media/8bee8828-9bfe-3dd9-a817-d3385e410cde/downloadoriginal/15e18d29-874b-f0c0-61ab-8fc054f92965?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 322 349 4.880321258418444 52.39675679812607 \
-gcp 7694 318 4.894278408092784 52.39681570191524 \
-gcp 7724 6152 4.894353353463219 52.39007526132896 \
-gcp 334 6192 4.880398326383764 52.39001636910501 \
   output/downloads/DUIZ00309000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00309000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880398326383764,52.39001636910501],[4.894353353463219,52.39007526132896],[4.894278408092784,52.39681570191524],[4.880321258418444,52.39675679812607],[4.880398326383764,52.39001636910501]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00309000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00309000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00309000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00309000001-warped.tif

# ==============================================
# Name: DUIZ00319000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00319000001.jpg ]; then
  wget -O output/downloads/DUIZ00319000001.jpg "https://webservices.picturae.com/mediabank/media/8bf31028-cddf-c63b-e011-88f66f79d2b6/downloadoriginal/44e27a8b-06c7-0e46-d8b0-f4ed0a3046e9?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 334 399 4.894278408092784 52.39681570191524 \
-gcp 7712 349 4.908235599846147 52.39687296064778 \
-gcp 7755 6189 4.9083084225999976 52.39013250881918 \
-gcp 364 6248 4.894353353463219 52.39007526132896 \
   output/downloads/DUIZ00319000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00319000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894353353463219,52.39007526132896],[4.9083084225999976,52.39013250881918],[4.908235599846147,52.39687296064778],[4.894278408092784,52.39681570191524],[4.894353353463219,52.39007526132896]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00319000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00319000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00319000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00319000001-warped.tif

# ==============================================
# Name: DUIZ00330000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00330000001.jpg ]; then
  wget -O output/downloads/DUIZ00330000001.jpg "https://webservices.picturae.com/mediabank/media/36b325ae-3b1c-e670-9fa9-defd38acddb9/downloadoriginal/960e022c-fc3b-1f00-6ea1-59362a79bedf?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 348 378 4.908235599846147 52.39687296064778 \
-gcp 7719 344 4.922192832486973 52.39692857431355 \
-gcp 7754 6168 4.922263532603152 52.39018811156555 \
-gcp 374 6214 4.9083084225999976 52.39013250881918 \
   output/downloads/DUIZ00330000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00330000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.9083084225999976,52.39013250881918],[4.922263532603152,52.39018811156555],[4.922192832486973,52.39692857431355],[4.908235599846147,52.39687296064778],[4.9083084225999976,52.39013250881918]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00330000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00330000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00330000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00330000001-warped.tif

# ==============================================
# Name: DUIZ00341000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00341000001.jpg ]; then
  wget -O output/downloads/DUIZ00341000001.jpg "https://webservices.picturae.com/mediabank/media/9b3a6bbe-c9bd-7794-7441-444e5c102807/downloadoriginal/ca8d2029-089d-680a-cb4e-7c4d446bab37?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 354 361 4.922192832486973 52.39692857431355 \
-gcp 7723 348 4.936150104823676 52.396982542902656 \
-gcp 7743 6172 4.9362186822817185 52.3902420695582 \
-gcp 356 6201 4.922263532603152 52.39018811156555 \
   output/downloads/DUIZ00341000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00341000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922263532603152,52.39018811156555],[4.9362186822817185,52.3902420695582],[4.936150104823676,52.396982542902656],[4.922192832486973,52.39692857431355],[4.922263532603152,52.39018811156555]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00341000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00341000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00341000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00341000001-warped.tif

# ==============================================
# Name: DUIZ00352000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00352000001.jpg ]; then
  wget -O output/downloads/DUIZ00352000001.jpg "https://webservices.picturae.com/mediabank/media/c7b4c902-e973-61a4-b15d-d52c87cd58e1/downloadoriginal/71c5321c-9e6f-c904-4b1b-ebfca8e215ef?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 366 366 4.936150104823676 52.396982542902656 \
-gcp 7744 341 4.950107415664662 52.39703486640556 \
-gcp 7768 6173 4.95017387044471 52.390294382787616 \
-gcp 384 6203 4.9362186822817185 52.3902420695582 \
   output/downloads/DUIZ00352000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00352000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.9362186822817185,52.3902420695582],[4.95017387044471,52.390294382787616],[4.950107415664662,52.39703486640556],[4.936150104823676,52.396982542902656],[4.9362186822817185,52.3902420695582]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00352000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00352000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00352000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00352000001-warped.tif

# ==============================================
# Name: DUIZ00360000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00360000001.jpg ]; then
  wget -O output/downloads/DUIZ00360000001.jpg "https://webservices.picturae.com/mediabank/media/4c8cadd9-226f-dd00-2dc4-78c857b7bca6/downloadoriginal/e69493e2-295b-7941-632e-32e0c16a454b?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 349 391 4.950107415664662 52.39703486640556 \
-gcp 7726 352 4.964064763818304 52.397085544813 \
-gcp 7765 6181 4.964129095901115 52.39034505124449 \
-gcp 379 6231 4.95017387044471 52.390294382787616 \
   output/downloads/DUIZ00360000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00360000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.95017387044471,52.390294382787616],[4.964129095901115,52.39034505124449],[4.964064763818304,52.397085544813],[4.950107415664662,52.39703486640556],[4.95017387044471,52.390294382787616]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00360000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00360000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00360000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00360000001-warped.tif

# ==============================================
# Name: DUIZ00383000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00383000001.jpg ]; then
  wget -O output/downloads/DUIZ00383000001.jpg "https://webservices.picturae.com/mediabank/media/a37979b0-e5be-6c05-7930-75d32b143cb9/downloadoriginal/50f37867-2a74-bbff-194f-01b65e0408ef?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 307 367 4.838533509398376 52.38982982413665 \
-gcp 7676 317 4.852488403160459 52.389893650497974 \
-gcp 7726 6142 4.852569687808245 52.38315323615572 \
-gcp 340 6206 4.8386169158300465 52.38308942232452 \
   output/downloads/DUIZ00383000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00383000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.8386169158300465,52.38308942232452],[4.852569687808245,52.38315323615572],[4.852488403160459,52.389893650497974],[4.838533509398376,52.38982982413665],[4.8386169158300465,52.38308942232452]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00383000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00383000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00383000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00383000001-warped.tif

# ==============================================
# Name: DUIZ00392000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00392000001.jpg ]; then
  wget -O output/downloads/DUIZ00392000001.jpg "https://webservices.picturae.com/mediabank/media/423cdd1e-80b1-630c-594c-fcf8dc2e75dc/downloadoriginal/15b5213d-f9f0-3b4c-032f-7026d8d9d2bc?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 402 373 4.852488403160459 52.389893650497974 \
-gcp 7781 376 4.866443342552546 52.38995583215777 \
-gcp 7784 6215 4.866522505392917 52.383215405608155 \
-gcp 389 6220 4.852569687808245 52.38315323615572 \
   output/downloads/DUIZ00392000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00392000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.852569687808245,52.38315323615572],[4.866522505392917,52.383215405608155],[4.866443342552546,52.38995583215777],[4.852488403160459,52.389893650497974],[4.852569687808245,52.38315323615572]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00392000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00392000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00392000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00392000001-warped.tif

# ==============================================
# Name: DUIZ00404000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00404000001.jpg ]; then
  wget -O output/downloads/DUIZ00404000001.jpg "https://webservices.picturae.com/mediabank/media/7bcbfa93-98c9-be4d-ade2-7fd510b23994/downloadoriginal/e5120c4b-c445-d420-77e6-32b3fcc8419f?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 267 312 4.866443342552546 52.38995583215777 \
-gcp 7639 318 4.880398326383764 52.39001636910501 \
-gcp 7644 6155 4.8804753673938075 52.38327593067086 \
-gcp 252 6163 4.866522505392917 52.383215405608155 \
   output/downloads/DUIZ00404000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00404000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866522505392917,52.383215405608155],[4.8804753673938075,52.38327593067086],[4.880398326383764,52.39001636910501],[4.866443342552546,52.38995583215777],[4.866522505392917,52.383215405608155]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00404000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00404000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00404000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00404000001-warped.tif

# ==============================================
# Name: DUIZ00417000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00417000001.jpg ]; then
  wget -O output/downloads/DUIZ00417000001.jpg "https://webservices.picturae.com/mediabank/media/8e6951a3-3fd7-be4a-cb6e-13655fe2ed40/downloadoriginal/ddca16bc-0ec9-a3e3-dec9-fdf8a1ae3b62?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 355 378 4.880398326383764 52.39001636910501 \
-gcp 7742 341 4.894353353463219 52.39007526132896 \
-gcp 7777 6177 4.894428272620639 52.383334811333086 \
-gcp 369 6223 4.8804753673938075 52.38327593067086 \
   output/downloads/DUIZ00417000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00417000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.8804753673938075,52.38327593067086],[4.894428272620639,52.383334811333086],[4.894353353463219,52.39007526132896],[4.880398326383764,52.39001636910501],[4.8804753673938075,52.38327593067086]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00417000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00417000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00417000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00417000001-warped.tif

# ==============================================
# Name: DUIZ00428000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00428000001.jpg ]; then
  wget -O output/downloads/DUIZ00428000001.jpg "https://webservices.picturae.com/mediabank/media/34f7165e-b753-5ff9-8836-a0b2811f0fec/downloadoriginal/4613afdc-2299-f2b7-5e0d-750dad3b569f?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 362 299 4.894353353463219 52.39007526132896 \
-gcp 7816 305 4.9083084225999976 52.39013250881918 \
-gcp 7820 6190 4.908381219883109 52.383392047584415 \
-gcp 361 6198 4.894428272620639 52.383334811333086 \
   output/downloads/DUIZ00428000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00428000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894428272620639,52.383334811333086],[4.908381219883109,52.383392047584415],[4.9083084225999976,52.39013250881918],[4.894353353463219,52.39007526132896],[4.894428272620639,52.383334811333086]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00428000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00428000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00428000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00428000001-warped.tif

# ==============================================
# Name: DUIZ00440000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00440000001.jpg ]; then
  wget -O output/downloads/DUIZ00440000001.jpg "https://webservices.picturae.com/mediabank/media/51ea503b-0b5b-2400-afb2-7e6f09f29042/downloadoriginal/e65eb575-c87c-0841-2c6d-416232532bcf?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 364 313 4.9083084225999976 52.39013250881918 \
-gcp 7813 296 4.922263532603152 52.39018811156555 \
-gcp 7834 6187 4.922334207990887 52.38344763941474 \
-gcp 371 6219 4.908381219883109 52.383392047584415 \
   output/downloads/DUIZ00440000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00440000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908381219883109,52.383392047584415],[4.922334207990887,52.38344763941474],[4.922263532603152,52.39018811156555],[4.9083084225999976,52.39013250881918],[4.908381219883109,52.383392047584415]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00440000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00440000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00440000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00440000001-warped.tif

# ==============================================
# Name: DUIZ00449000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00449000001.jpg ]; then
  wget -O output/downloads/DUIZ00449000001.jpg "https://webservices.picturae.com/mediabank/media/3d7abee1-8334-03cc-8861-4325d27261f9/downloadoriginal/299fe35f-e8de-9624-fcfa-edde4801cc66?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 352 322 4.922263532603152 52.39018811156555 \
-gcp 7803 309 4.9362186822817185 52.3902420695582 \
-gcp 7821 6191 4.936287235753622 52.38350158681417 \
-gcp 365 6221 4.922334207990887 52.38344763941474 \
   output/downloads/DUIZ00449000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00449000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922334207990887,52.38344763941474],[4.936287235753622,52.38350158681417],[4.9362186822817185,52.3902420695582],[4.922263532603152,52.39018811156555],[4.922334207990887,52.38344763941474]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00449000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00449000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00449000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00449000001-warped.tif

# ==============================================
# Name: DUIZ00457000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00457000001.jpg ]; then
  wget -O output/downloads/DUIZ00457000001.jpg "https://webservices.picturae.com/mediabank/media/7d95e4aa-cf44-4152-ffd1-f98bffe73520/downloadoriginal/6efe7971-11d1-7484-8038-537ff5066d4d?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 273 306 4.9362186822817185 52.3902420695582 \
-gcp 5915 269 4.95017387044471 52.390294382787616 \
-gcp 5945 4725 4.95024030198094 52.38355388977318 \
-gcp 303 4767 4.936287235753622 52.38350158681417 \
   output/downloads/DUIZ00457000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00457000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936287235753622,52.38350158681417],[4.95024030198094,52.38355388977318],[4.95017387044471,52.390294382787616],[4.9362186822817185,52.3902420695582],[4.936287235753622,52.38350158681417]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00457000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00457000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00457000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00457000001-warped.tif

# ==============================================
# Name: DUIZ00465000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00465000001.jpg ]; then
  wget -O output/downloads/DUIZ00465000001.jpg "https://webservices.picturae.com/mediabank/media/0899b9c1-4f13-af51-468f-d32e675fd6ee/downloadoriginal/ae960fc5-8b7f-39e5-ed6e-a35159a9ef48?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 267 287 4.95017387044471 52.390294382787616 \
-gcp 5908 263 4.964129095901115 52.39034505124449 \
-gcp 5923 4724 4.964193405482442 52.38360454828251 \
-gcp 277 4753 4.95024030198094 52.38355388977318 \
   output/downloads/DUIZ00465000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00465000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.95024030198094,52.38355388977318],[4.964193405482442,52.38360454828251],[4.964129095901115,52.39034505124449],[4.95017387044471,52.390294382787616],[4.95024030198094,52.38355388977318]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00465000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00465000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00465000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00465000001-warped.tif

# ==============================================
# Name: DUIZ00489000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00489000001.jpg ]; then
  wget -O output/downloads/DUIZ00489000001.jpg "https://webservices.picturae.com/mediabank/media/b621b90d-93eb-2556-e397-cdc01d0514df/downloadoriginal/a033ba1c-1ca6-fded-d0c0-da30756b89ec?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 275 310 4.8386169158300465 52.38308942232452 \
-gcp 5926 274 4.852569687808245 52.38315323615572 \
-gcp 5956 4741 4.852650944030937 52.3764128124391 \
-gcp 306 4782 4.8387002930947975 52.37634901113423 \
   output/downloads/DUIZ00489000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00489000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.8387002930947975,52.37634901113423],[4.852650944030937,52.3764128124391],[4.852569687808245,52.38315323615572],[4.8386169158300465,52.38308942232452],[4.8387002930947975,52.37634901113423]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00489000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00489000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00489000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00489000001-warped.tif

# ==============================================
# Name: DUIZ00498000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00498000001.jpg ]; then
  wget -O output/downloads/DUIZ00498000001.jpg "https://webservices.picturae.com/mediabank/media/20538acd-ac73-df9a-cc5b-fc13426ddc10/downloadoriginal/93c5c06c-701d-2f4c-5245-0b31c50af79f?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 300 337 4.852569687808245 52.38315323615572 \
-gcp 5956 328 4.866522505392917 52.383215405608155 \
-gcp 5962 4802 4.866601640550044 52.376474969687905 \
-gcp 300 4816 4.852650944030937 52.3764128124391 \
   output/downloads/DUIZ00498000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00498000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.852650944030937,52.3764128124391],[4.866601640550044,52.376474969687905],[4.866522505392917,52.383215405608155],[4.852569687808245,52.38315323615572],[4.852650944030937,52.3764128124391]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00498000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00498000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00498000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00498000001-warped.tif

# ==============================================
# Name: DUIZ00514000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00514000001.jpg ]; then
  wget -O output/downloads/DUIZ00514000001.jpg "https://webservices.picturae.com/mediabank/media/ee05e54f-0a32-c250-dd99-d0a3edc51f6a/downloadoriginal/e3f19283-83f8-e351-1bab-f7f5cc968603?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 276 294 4.866522505392917 52.383215405608155 \
-gcp 5929 281 4.8804753673938075 52.38327593067086 \
-gcp 5941 4746 4.880552381462476 52.376535482869706 \
-gcp 289 4768 4.866601640550044 52.376474969687905 \
   output/downloads/DUIZ00514000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00514000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866601640550044,52.376474969687905],[4.880552381462476,52.376535482869706],[4.8804753673938075,52.38327593067086],[4.866522505392917,52.383215405608155],[4.866601640550044,52.376474969687905]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00514000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00514000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00514000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00514000001-warped.tif

# ==============================================
# Name: DUIZ00531000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00531000001.jpg ]; then
  wget -O output/downloads/DUIZ00531000001.jpg "https://webservices.picturae.com/mediabank/media/5382c448-eb5a-3a5d-260e-6c43e3005f52/downloadoriginal/41ac47ea-6d05-d96f-bc3d-72f61e6c1a7f?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 372 346 4.8804753673938075 52.38327593067086 \
-gcp 6014 343 4.894428272620639 52.383334811333086 \
-gcp 6025 4823 4.894503165578564 52.37659435197371 \
-gcp 370 4828 4.880552381462476 52.376535482869706 \
   output/downloads/DUIZ00531000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00531000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880552381462476,52.376535482869706],[4.894503165578564,52.37659435197371],[4.894428272620639,52.383334811333086],[4.8804753673938075,52.38327593067086],[4.880552381462476,52.376535482869706]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00531000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00531000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00531000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00531000001-warped.tif

# ==============================================
# Name: DUIZ00545000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00545000001.jpg ]; then
  wget -O output/downloads/DUIZ00545000001.jpg "https://webservices.picturae.com/mediabank/media/d8fa6cad-4f4e-76e0-d07a-4dc71b55000f/downloadoriginal/63c236ec-0cb5-306d-df82-f82d7a8543a3?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 276 300 4.894428272620639 52.383334811333086 \
-gcp 5916 274 4.908381219883109 52.383392047584415 \
-gcp 5939 4732 4.90845399170862 52.37665157698962 \
-gcp 298 4765 4.894503165578564 52.37659435197371 \
   output/downloads/DUIZ00545000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00545000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894503165578564,52.37659435197371],[4.90845399170862,52.37665157698962],[4.908381219883109,52.383392047584415],[4.894428272620639,52.383334811333086],[4.894503165578564,52.37659435197371]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00545000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00545000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00545000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00545000001-warped.tif

# ==============================================
# Name: DUIZ00557000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00557000001.jpg ]; then
  wget -O output/downloads/DUIZ00557000001.jpg "https://webservices.picturae.com/mediabank/media/90a1c15c-dc2c-bf90-c79f-f51da7f0f42d/downloadoriginal/149afe1b-28a5-23ee-b906-0f9fd202613b?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 363 346 4.908381219883109 52.383392047584415 \
-gcp 6010 337 4.922334207990887 52.38344763941474 \
-gcp 6026 4797 4.92240485866293 52.37670715790714 \
-gcp 349 4807 4.90845399170862 52.37665157698962 \
   output/downloads/DUIZ00557000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00557000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.90845399170862,52.37665157698962],[4.92240485866293,52.37670715790714],[4.922334207990887,52.38344763941474],[4.908381219883109,52.383392047584415],[4.90845399170862,52.37665157698962]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00557000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00557000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00557000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00557000001-warped.tif

# ==============================================
# Name: DUIZ00564000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00564000001.jpg ]; then
  wget -O output/downloads/DUIZ00564000001.jpg "https://webservices.picturae.com/mediabank/media/ab21be07-d079-960f-c8a5-472764578b25/downloadoriginal/fcf02ad8-1d64-2c56-cb0c-85762f4f6ecc?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 283 281 4.922334207990887 52.38344763941474 \
-gcp 5893 292 4.936287235753622 52.38350158681417 \
-gcp 5889 4723 4.936355765251757 52.376761094716606 \
-gcp 278 4722 4.92240485866293 52.37670715790714 \
   output/downloads/DUIZ00564000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00564000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.92240485866293,52.37670715790714],[4.936355765251757,52.376761094716606],[4.936287235753622,52.38350158681417],[4.922334207990887,52.38344763941474],[4.92240485866293,52.37670715790714]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00564000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00564000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00564000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00564000001-warped.tif

# ==============================================
# Name: DUIZ00569000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00569000001.jpg ]; then
  wget -O output/downloads/DUIZ00569000001.jpg "https://webservices.picturae.com/mediabank/media/a6b34ddb-b040-37e6-abb4-cdb4320f19a5/downloadoriginal/62df2614-08cd-6741-9550-31274651c798?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 278 279 4.936287235753622 52.38350158681417 \
-gcp 5886 275 4.95024030198094 52.38355388977318 \
-gcp 5891 4704 4.950306710285335 52.376813387408355 \
-gcp 282 4713 4.936355765251757 52.376761094716606 \
   output/downloads/DUIZ00569000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00569000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936355765251757,52.376761094716606],[4.950306710285335,52.376813387408355],[4.95024030198094,52.38355388977318],[4.936287235753622,52.38350158681417],[4.936355765251757,52.376761094716606]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00569000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00569000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00569000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00569000001-warped.tif

# ==============================================
# Name: DUIZ00576000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00576000001.jpg ]; then
  wget -O output/downloads/DUIZ00576000001.jpg "https://webservices.picturae.com/mediabank/media/a2169ad5-197b-5d2d-8dbb-a21264a49bf8/downloadoriginal/e883fd4a-a6bb-130b-97d7-56a53055a581?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 273 279 4.95024030198094 52.38355388977318 \
-gcp 5910 272 4.964193405482442 52.38360454828251 \
-gcp 5917 4723 4.964257692573884 52.37686403597311 \
-gcp 281 4739 4.950306710285335 52.376813387408355 \
   output/downloads/DUIZ00576000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00576000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.950306710285335,52.376813387408355],[4.964257692573884,52.37686403597311],[4.964193405482442,52.38360454828251],[4.95024030198094,52.38355388977318],[4.950306710285335,52.376813387408355]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00576000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00576000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00576000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00576000001-warped.tif

# ==============================================
# Name: DUIZ00604000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00604000001.jpg ]; then
  wget -O output/downloads/DUIZ00604000001.jpg "https://webservices.picturae.com/mediabank/media/9dcc99d9-39d5-7ba5-6dd6-a5622207830f/downloadoriginal/b3045803-f969-82b3-0076-fb3bb8d03415?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 275 282 4.8387002930947975 52.37634901113423 \
-gcp 5884 274 4.852650944030937 52.3764128124391 \
-gcp 5896 4704 4.852732171843195 52.36967237939421 \
-gcp 285 4722 4.8387836412076615 52.369608590611875 \
   output/downloads/DUIZ00604000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00604000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.8387836412076615,52.369608590611875],[4.852732171843195,52.36967237939421],[4.852650944030937,52.3764128124391],[4.8387002930947975,52.37634901113423],[4.8387836412076615,52.369608590611875]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00604000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00604000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00604000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00604000001-warped.tif

# ==============================================
# Name: DUIZ00619000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00619000001.jpg ]; then
  wget -O output/downloads/DUIZ00619000001.jpg "https://webservices.picturae.com/mediabank/media/f4e26104-e1dd-c784-8724-f4451ec2ea5e/downloadoriginal/49f46ebc-aae4-d54c-a910-b75f7c787577?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 306 308 4.852650944030937 52.3764128124391 \
-gcp 5920 313 4.866601640550044 52.376474969687905 \
-gcp 5916 4752 4.866680748038203 52.369734524443096 \
-gcp 296 4753 4.852732171843195 52.36967237939421 \
   output/downloads/DUIZ00619000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00619000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.852732171843195,52.36967237939421],[4.866680748038203,52.369734524443096],[4.866601640550044,52.376474969687905],[4.852650944030937,52.3764128124391],[4.852732171843195,52.36967237939421]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00619000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00619000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00619000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00619000001-warped.tif

# ==============================================
# Name: DUIZ00639000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00639000001.jpg ]; then
  wget -O output/downloads/DUIZ00639000001.jpg "https://webservices.picturae.com/mediabank/media/4a578db5-f87f-812c-c994-d27dd0cdcee6/downloadoriginal/b2ca3209-a54f-25ab-e9aa-4bb1020bbe72?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 274 295 4.866601640550044 52.376474969687905 \
-gcp 5892 262 4.880552381462476 52.376535482869706 \
-gcp 5916 4695 4.880629368603654 52.36979502574761 \
-gcp 293 4734 4.866680748038203 52.369734524443096 \
   output/downloads/DUIZ00639000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00639000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866680748038203,52.369734524443096],[4.880629368603654,52.36979502574761],[4.880552381462476,52.376535482869706],[4.866601640550044,52.376474969687905],[4.866680748038203,52.369734524443096]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00639000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00639000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00639000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00639000001-warped.tif

# ==============================================
# Name: DUIZ00659000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00659000001.jpg ]; then
  wget -O output/downloads/DUIZ00659000001.jpg "https://webservices.picturae.com/mediabank/media/7b89bd91-241a-b0ed-c757-7472c4899fe4/downloadoriginal/0a8fce13-beb2-12a7-c84a-29b02c8aabd8?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 280 300 4.880552381462476 52.376535482869706 \
-gcp 5883 273 4.894503165578564 52.37659435197371 \
-gcp 5905 4699 4.894578032350497 52.369853883296926 \
-gcp 294 4732 4.880629368603654 52.36979502574761 \
   output/downloads/DUIZ00659000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00659000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880629368603654,52.36979502574761],[4.894578032350497,52.369853883296926],[4.894503165578564,52.37659435197371],[4.880552381462476,52.376535482869706],[4.880629368603654,52.36979502574761]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00659000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00659000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00659000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00659000001-warped.tif

# ==============================================
# Name: DUIZ00679000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00679000001.jpg ]; then
  wget -O output/downloads/DUIZ00679000001.jpg "https://webservices.picturae.com/mediabank/media/8147e618-79c3-f335-23fa-b847fb8af849/downloadoriginal/236539e1-406f-07d6-ea7d-373a5abaebc7?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 274 317 4.894503165578564 52.37659435197371 \
-gcp 5890 271 4.90845399170862 52.37665157698962 \
-gcp 5923 4709 4.908526738089654 52.36991109708077 \
-gcp 302 4757 4.894578032350497 52.369853883296926 \
   output/downloads/DUIZ00679000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00679000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894578032350497,52.369853883296926],[4.908526738089654,52.36991109708077],[4.90845399170862,52.37665157698962],[4.894503165578564,52.37659435197371],[4.894578032350497,52.369853883296926]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00679000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00679000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00679000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00679000001-warped.tif

# ==============================================
# Name: DUIZ00694000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00694000001.jpg ]; then
  wget -O output/downloads/DUIZ00694000001.jpg "https://webservices.picturae.com/mediabank/media/46d8ac60-fe62-ee64-7fe5-0373ac257705/downloadoriginal/220b420c-1ffa-c551-bba7-89483acfc443?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 268 323 4.90845399170862 52.37665157698962 \
-gcp 5882 283 4.92240485866293 52.37670715790714 \
-gcp 5913 4719 4.92247548463202 52.36996666708887 \
-gcp 291 4762 4.908526738089654 52.36991109708077 \
   output/downloads/DUIZ00694000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00694000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908526738089654,52.36991109708077],[4.92247548463202,52.36996666708887],[4.92240485866293,52.37670715790714],[4.90845399170862,52.37665157698962],[4.908526738089654,52.36991109708077]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00694000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00694000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00694000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00694000001-warped.tif

# ==============================================
# Name: DUIZ00705000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00705000001.jpg ]; then
  wget -O output/downloads/DUIZ00705000001.jpg "https://webservices.picturae.com/mediabank/media/1a6bc2d1-50cb-70a3-c668-78a90fc3d900/downloadoriginal/7b36a70e-6cce-66bc-f876-4122b86158a5?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 264 276 4.92240485866293 52.37670715790714 \
-gcp 5883 266 4.936355765251757 52.376761094716606 \
-gcp 5889 4704 4.936424270788474 52.37002059331152 \
-gcp 266 4720 4.92247548463202 52.36996666708887 \
   output/downloads/DUIZ00705000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00705000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.92247548463202,52.36996666708887],[4.936424270788474,52.37002059331152],[4.936355765251757,52.376761094716606],[4.92240485866293,52.37670715790714],[4.92247548463202,52.36996666708887]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00705000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00705000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00705000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00705000001-warped.tif

# ==============================================
# Name: DUIZ00713000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00713000001.jpg ]; then
  wget -O output/downloads/DUIZ00713000001.jpg "https://webservices.picturae.com/mediabank/media/399ab824-966e-c0b8-cdef-7b1858266ca2/downloadoriginal/725cde18-f2bb-b3c1-d357-f0c69b1a960c?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 270 284 4.936355765251757 52.376761094716606 \
-gcp 5886 274 4.950306710285335 52.376813387408355 \
-gcp 5897 4706 4.950373095369869 52.370072875739126 \
-gcp 282 4723 4.936424270788474 52.37002059331152 \
   output/downloads/DUIZ00713000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00713000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936424270788474,52.37002059331152],[4.950373095369869,52.370072875739126],[4.950306710285335,52.376813387408355],[4.936355765251757,52.376761094716606],[4.936424270788474,52.37002059331152]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00713000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00713000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00713000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00713000001-warped.tif

# ==============================================
# Name: DUIZ00720000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00720000001.jpg ]; then
  wget -O output/downloads/DUIZ00720000001.jpg "https://webservices.picturae.com/mediabank/media/9f37022f-9920-d452-6683-5a0ee8e251d6/downloadoriginal/0820ede7-1fce-42fc-1cf4-0589db45cc5e?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 280 294 4.950306710285335 52.376813387408355 \
-gcp 5886 269 4.964257692573884 52.37686403597311 \
-gcp 5909 4696 4.964321957187033 52.37012351436242 \
-gcp 300 4727 4.950373095369869 52.370072875739126 \
   output/downloads/DUIZ00720000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00720000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.950373095369869,52.370072875739126],[4.964321957187033,52.37012351436242],[4.964257692573884,52.37686403597311],[4.950306710285335,52.376813387408355],[4.950373095369869,52.370072875739126]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00720000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00720000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00720000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00720000001-warped.tif

# ==============================================
# Name: DUIZ00737000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00737000001.jpg ]; then
  wget -O output/downloads/DUIZ00737000001.jpg "https://webservices.picturae.com/mediabank/media/ba910ac9-9f16-cf32-b264-441cb2e3aaf3/downloadoriginal/6993c587-68b6-9078-39ae-6f925d32d96a?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 265 310 4.8387836412076615 52.369608590611875 \
-gcp 5884 277 4.852732171843195 52.36967237939421 \
-gcp 5910 4717 4.852813371259658 52.362931937067145 \
-gcp 279 4752 4.838866960183661 52.362868160803544 \
   output/downloads/DUIZ00737000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00737000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.838866960183661,52.362868160803544],[4.852813371259658,52.362931937067145],[4.852732171843195,52.36967237939421],[4.8387836412076615,52.369608590611875],[4.838866960183661,52.362868160803544]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00737000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00737000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00737000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00737000001-warped.tif

# ==============================================
# Name: DUIZ00753000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00753000001.jpg ]; then
  wget -O output/downloads/DUIZ00753000001.jpg "https://webservices.picturae.com/mediabank/media/04ed5bde-7c57-65ba-731b-e953db1f46a2/downloadoriginal/777420e7-f22b-2685-d7ef-4c621262a128?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 288 389 4.852732171843195 52.36967237939421 \
-gcp 5898 344 4.866680748038203 52.369734524443096 \
-gcp 5930 4779 4.866759827871651 52.362994069919836 \
-gcp 321 4832 4.852813371259658 52.362931937067145 \
   output/downloads/DUIZ00753000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00753000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.852813371259658,52.362931937067145],[4.866759827871651,52.362994069919836],[4.866680748038203,52.369734524443096],[4.852732171843195,52.36967237939421],[4.852813371259658,52.362931937067145]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00753000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00753000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00753000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00753000001-warped.tif

# ==============================================
# Name: DUIZ00771000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00771000001.jpg ]; then
  wget -O output/downloads/DUIZ00771000001.jpg "https://webservices.picturae.com/mediabank/media/e8ca16a5-e99f-361e-60eb-17028f8371de/downloadoriginal/54c5a295-e54a-a32c-3e0c-00ee44f98e95?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 277 289 4.866680748038203 52.369734524443096 \
-gcp 5881 271 4.880629368603654 52.36979502574761 \
-gcp 5902 4695 4.880706328831222 52.363054559350594 \
-gcp 292 4725 4.866759827871651 52.362994069919836 \
   output/downloads/DUIZ00771000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00771000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866759827871651,52.362994069919836],[4.880706328831222,52.363054559350594],[4.880629368603654,52.36979502574761],[4.866680748038203,52.369734524443096],[4.866759827871651,52.362994069919836]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00771000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00771000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00771000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00771000001-warped.tif

# ==============================================
# Name: DUIZ00792000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00792000001.jpg ]; then
  wget -O output/downloads/DUIZ00792000001.jpg "https://webservices.picturae.com/mediabank/media/8a147ce2-c8a5-e1ee-f71f-1d3ea29ba63f/downloadoriginal/fa969ec4-db2e-75fb-0833-3cdee2e22bd0?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 283 276 4.880629368603654 52.36979502574761 \
-gcp 5888 285 4.894578032350497 52.369853883296926 \
-gcp 5882 4712 4.894652872949934 52.36311340534879 \
-gcp 277 4707 4.880706328831222 52.363054559350594 \
   output/downloads/DUIZ00792000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00792000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880706328831222,52.363054559350594],[4.894652872949934,52.36311340534879],[4.894578032350497,52.369853883296926],[4.880629368603654,52.36979502574761],[4.880706328831222,52.363054559350594]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00792000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00792000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00792000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00792000001-warped.tif

# ==============================================
# Name: DUIZ00817000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00817000001.jpg ]; then
  wget -O output/downloads/DUIZ00817000001.jpg "https://webservices.picturae.com/mediabank/media/f25dff93-4d15-ad3d-66cf-09584886aee5/downloadoriginal/3a53ec44-ae48-ba56-e6e8-38993e74c205?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 270 259 4.894578032350497 52.369853883296926 \
-gcp 5852 259 4.908526738089654 52.36991109708077 \
-gcp 5857 4665 4.908599459039318 52.36317060790394 \
-gcp 258 4672 4.894652872949934 52.36311340534879 \
   output/downloads/DUIZ00817000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00817000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894652872949934,52.36311340534879],[4.908599459039318,52.36317060790394],[4.908526738089654,52.36991109708077],[4.894578032350497,52.369853883296926],[4.894652872949934,52.36311340534879]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00817000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00817000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00817000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00817000001-warped.tif

# ==============================================
# Name: DUIZ00832000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00832000001.jpg ]; then
  wget -O output/downloads/DUIZ00832000001.jpg "https://webservices.picturae.com/mediabank/media/2db369b3-88ef-d98e-4564-5d2086056e3f/downloadoriginal/846b5eb7-5a4a-e548-a92a-dcf97bfd7061?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 216 240 4.908526738089654 52.36991109708077 \
-gcp 5793 206 4.92247548463202 52.36996666708887 \
-gcp 5825 4611 4.92254608591089 52.36322616700596 \
-gcp 242 4656 4.908599459039318 52.36317060790394 \
   output/downloads/DUIZ00832000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00832000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908599459039318,52.36317060790394],[4.92254608591089,52.36322616700596],[4.92247548463202,52.36996666708887],[4.908526738089654,52.36991109708077],[4.908599459039318,52.36317060790394]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00832000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00832000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00832000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00832000001-warped.tif

# ==============================================
# Name: DUIZ00848000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00848000001.jpg ]; then
  wget -O output/downloads/DUIZ00848000001.jpg "https://webservices.picturae.com/mediabank/media/20e0460e-0b72-1fc5-7272-499bd5b32c5c/downloadoriginal/69a2ad5a-74b6-f7d9-d340-be799c531d42?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 240 265 4.92247548463202 52.36996666708887 \
-gcp 5835 248 4.936424270788474 52.37002059331152 \
-gcp 5840 4663 4.936492752376133 52.36328008264502 \
-gcp 252 4687 4.92254608591089 52.36322616700596 \
   output/downloads/DUIZ00848000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00848000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.92254608591089,52.36322616700596],[4.936492752376133,52.36328008264502],[4.936424270788474,52.37002059331152],[4.92247548463202,52.36996666708887],[4.92254608591089,52.36322616700596]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00848000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00848000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00848000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00848000001-warped.tif

# ==============================================
# Name: DUIZ00860000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00860000001.jpg ]; then
  wget -O output/downloads/DUIZ00860000001.jpg "https://webservices.picturae.com/mediabank/media/c8757d27-dbd3-2500-3962-10d10f5d0701/downloadoriginal/4a6d49ac-e121-6beb-d9c2-c13799b14146?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 248 250 4.936424270788474 52.37002059331152 \
-gcp 5831 250 4.950373095369869 52.370072875739126 \
-gcp 5828 4664 4.950439457246515 52.36333235481158 \
-gcp 247 4674 4.936492752376133 52.36328008264502 \
   output/downloads/DUIZ00860000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00860000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936492752376133,52.36328008264502],[4.950439457246515,52.36333235481158],[4.950373095369869,52.370072875739126],[4.936424270788474,52.37002059331152],[4.936492752376133,52.36328008264502]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00860000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00860000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00860000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00860000001-warped.tif

# ==============================================
# Name: DUIZ00870000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00870000001.jpg ]; then
  wget -O output/downloads/DUIZ00870000001.jpg "https://webservices.picturae.com/mediabank/media/f6e4b56e-ff67-b01d-190d-82e40b55e079/downloadoriginal/781ef96f-bfc8-2cb2-1dec-74a03408ba05?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 208 229 4.950373095369869 52.370072875739126 \
-gcp 5785 208 4.964321957187033 52.37012351436242 \
-gcp 5806 4612 4.964386199333477 52.36338298349637 \
-gcp 226 4639 4.950439457246515 52.36333235481158 \
   output/downloads/DUIZ00870000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00870000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.950439457246515,52.36333235481158],[4.964386199333477,52.36338298349637],[4.964321957187033,52.37012351436242],[4.950373095369869,52.370072875739126],[4.950439457246515,52.36333235481158]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00870000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00870000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00870000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00870000001-warped.tif

# ==============================================
# Name: DUIZ00891000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00891000001.jpg ]; then
  wget -O output/downloads/DUIZ00891000001.jpg "https://webservices.picturae.com/mediabank/media/313b3070-d573-032d-6213-a1b63d274282/downloadoriginal/07ca2078-3070-d0fa-5b3b-b589d07e3f71?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 222 215 4.838866960183661 52.362868160803544 \
-gcp 5807 230 4.852813371259658 52.362931937067145 \
-gcp 5797 4635 4.85289454229496 52.3561914855039 \
-gcp 211 4627 4.838950250037816 52.356127721755264 \
   output/downloads/DUIZ00891000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00891000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.838950250037816,52.356127721755264],[4.85289454229496,52.3561914855039],[4.852813371259658,52.362931937067145],[4.838866960183661,52.362868160803544],[4.838950250037816,52.356127721755264]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00891000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00891000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00891000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00891000001-warped.tif

# ==============================================
# Name: DUIZ00905000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00905000001.jpg ]; then
  wget -O output/downloads/DUIZ00905000001.jpg "https://webservices.picturae.com/mediabank/media/597bad15-1836-cc3a-086c-660acb57a4a8/downloadoriginal/3ba91583-fce1-cb37-914a-42c4a109b8cc?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 205 192 4.852813371259658 52.362931937067145 \
-gcp 5783 210 4.866759827871651 52.362994069919836 \
-gcp 5769 4625 4.866838880064639 52.356253606164074 \
-gcp 176 4612 4.85289454229496 52.3561914855039 \
   output/downloads/DUIZ00905000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00905000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.85289454229496,52.3561914855039],[4.866838880064639,52.356253606164074],[4.866759827871651,52.362994069919836],[4.852813371259658,52.362931937067145],[4.85289454229496,52.3561914855039]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00905000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00905000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00905000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00905000001-warped.tif

# ==============================================
# Name: DUIZ00924000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00924000001.jpg ]; then
  wget -O output/downloads/DUIZ00924000001.jpg "https://webservices.picturae.com/mediabank/media/0235a222-4458-4c2a-7253-e82ddc913799/downloadoriginal/ff585d1f-74b4-17dd-0f51-0108ab5adda7?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 230 207 4.866759827871651 52.362994069919836 \
-gcp 5818 214 4.880706328831222 52.363054559350594 \
-gcp 5811 4631 4.8807832621590475 52.356314083724776 \
-gcp 225 4623 4.866838880064639 52.356253606164074 \
   output/downloads/DUIZ00924000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00924000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866838880064639,52.356253606164074],[4.8807832621590475,52.356314083724776],[4.880706328831222,52.363054559350594],[4.866759827871651,52.362994069919836],[4.866838880064639,52.356253606164074]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00924000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00924000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00924000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00924000001-warped.tif

# ==============================================
# Name: DUIZ00942000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00942000001.jpg ]; then
  wget -O output/downloads/DUIZ00942000001.jpg "https://webservices.picturae.com/mediabank/media/44aece33-e237-5307-e543-00e3b20ae6b3/downloadoriginal/d7e86f21-00f3-6bcc-758b-a10b80e9816c?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 220 207 4.880706328831222 52.363054559350594 \
-gcp 5799 220 4.894652872949934 52.36311340534879 \
-gcp 5794 4626 4.894727687390359 52.35637291817528 \
-gcp 213 4621 4.8807832621590475 52.356314083724776 \
   output/downloads/DUIZ00942000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00942000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.8807832621590475,52.356314083724776],[4.894727687390359,52.35637291817528],[4.894652872949934,52.36311340534879],[4.880706328831222,52.363054559350594],[4.8807832621590475,52.356314083724776]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00942000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00942000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00942000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00942000001-warped.tif

# ==============================================
# Name: DUIZ00961000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00961000001.jpg ]; then
  wget -O output/downloads/DUIZ00961000001.jpg "https://webservices.picturae.com/mediabank/media/2bbbed1f-4059-8707-afac-2ee3fdf1787a/downloadoriginal/8f42cd01-2194-776a-1a89-081d6061b75f?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 231 211 4.894652872949934 52.36311340534879 \
-gcp 5810 230 4.908599459039318 52.36317060790394 \
-gcp 5799 4634 4.908672154570723 52.35643010950521 \
-gcp 216 4627 4.894727687390359 52.35637291817528 \
   output/downloads/DUIZ00961000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00961000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894727687390359,52.35637291817528],[4.908672154570723,52.35643010950521],[4.908599459039318,52.36317060790394],[4.894652872949934,52.36311340534879],[4.894727687390359,52.35637291817528]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00961000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00961000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00961000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00961000001-warped.tif

# ==============================================
# Name: DUIZ00976000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00976000001.jpg ]; then
  wget -O output/downloads/DUIZ00976000001.jpg "https://webservices.picturae.com/mediabank/media/fd8a942e-f712-0218-ea84-1ca5273430ec/downloadoriginal/4c9def7f-760f-4afb-0bd0-55393367d853?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 212 224 4.908599459039318 52.36317060790394 \
-gcp 5790 215 4.92254608591089 52.36322616700596 \
-gcp 5803 4625 4.922616662512259 52.35648565770444 \
-gcp 219 4641 4.908672154570723 52.35643010950521 \
   output/downloads/DUIZ00976000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00976000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908672154570723,52.35643010950521],[4.922616662512259,52.35648565770444],[4.92254608591089,52.36322616700596],[4.908599459039318,52.36317060790394],[4.908672154570723,52.35643010950521]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00976000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00976000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00976000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00976000001-warped.tif

# ==============================================
# Name: DUIZ00989000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00989000001.jpg ]; then
  wget -O output/downloads/DUIZ00989000001.jpg "https://webservices.picturae.com/mediabank/media/e1450c76-9cd8-f323-9a97-8fd040f450b8/downloadoriginal/8d3bb128-e064-8118-88d4-4a6da5a79c5d?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 229 209 4.92254608591089 52.36322616700596 \
-gcp 5807 226 4.936492752376133 52.36328008264502 \
-gcp 5795 4626 4.936561210027068 52.356539562763146 \
-gcp 214 4616 4.922616662512259 52.35648565770444 \
   output/downloads/DUIZ00989000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00989000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922616662512259,52.35648565770444],[4.936561210027068,52.356539562763146],[4.936492752376133,52.36328008264502],[4.92254608591089,52.36322616700596],[4.922616662512259,52.35648565770444]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00989000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00989000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00989000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00989000001-warped.tif

# ==============================================
# Name: DUIZ01000000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01000000001.jpg ]; then
  wget -O output/downloads/DUIZ01000000001.jpg "https://webservices.picturae.com/mediabank/media/7dd5fbae-762c-1c18-7112-52412864f37e/downloadoriginal/b77ba3cf-7c5e-e4a1-cc47-076e7c4d16d3?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 220 223 4.936492752376133 52.36328008264502 \
-gcp 5809 199 4.950439457246515 52.36333235481158 \
-gcp 5826 4615 4.950505795927228 52.3565918246718 \
-gcp 231 4642 4.936561210027068 52.356539562763146 \
   output/downloads/DUIZ01000000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01000000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936561210027068,52.356539562763146],[4.950505795927228,52.3565918246718],[4.950439457246515,52.36333235481158],[4.936492752376133,52.36328008264502],[4.936561210027068,52.356539562763146]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01000000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01000000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01000000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01000000001-warped.tif

# ==============================================
# Name: DUIZ01007000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01007000001.jpg ]; then
  wget -O output/downloads/DUIZ01007000001.jpg "https://webservices.picturae.com/mediabank/media/0b215458-0ac0-6107-f4ee-82c8b6577348/downloadoriginal/585ab164-c5fc-f94d-049b-246fb94af590?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 276 252 4.950439457246515 52.36333235481158 \
-gcp 5859 277 4.964386199333477 52.36338298349637 \
-gcp 5841 4692 4.964450419024794 52.356642443421116 \
-gcp 249 4679 4.950505795927228 52.3565918246718 \
   output/downloads/DUIZ01007000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01007000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.950505795927228,52.3565918246718],[4.964450419024794,52.356642443421116],[4.964386199333477,52.36338298349637],[4.950439457246515,52.36333235481158],[4.950505795927228,52.3565918246718]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01007000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01007000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01007000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01007000001-warped.tif

# ==============================================
# Name: DUIZ01021000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01021000001.jpg ]; then
  wget -O output/downloads/DUIZ01021000001.jpg "https://webservices.picturae.com/mediabank/media/940d5cff-f571-4de1-9ac2-e283c59c1dc3/downloadoriginal/c343d7f5-6d04-2079-8963-f9da10d9e93b?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 240 213 4.838950250037816 52.356127721755264 \
-gcp 5823 243 4.85289454229496 52.3561914855039 \
-gcp 5806 4645 4.852975684963722 52.34945102475066 \
-gcp 219 4626 4.839033510785126 52.34938727351315 \
   output/downloads/DUIZ01021000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01021000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.839033510785126,52.34938727351315],[4.852975684963722,52.34945102475066],[4.85289454229496,52.3561914855039],[4.838950250037816,52.356127721755264],[4.839033510785126,52.34938727351315]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01021000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01021000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01021000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01021000001-warped.tif

# ==============================================
# Name: DUIZ01034000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01034000001.jpg ]; then
  wget -O output/downloads/DUIZ01034000001.jpg "https://webservices.picturae.com/mediabank/media/f43b94c7-0043-abff-0a44-49a38af3c29e/downloadoriginal/494f22a4-d880-6786-fb34-745e8383211e?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 229 211 4.85289454229496 52.3561914855039 \
-gcp 5808 233 4.866838880064639 52.356253606164074 \
-gcp 5795 4639 4.866917904631407 52.349513133222054 \
-gcp 212 4630 4.852975684963722 52.34945102475066 \
   output/downloads/DUIZ01034000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01034000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.852975684963722,52.34945102475066],[4.866917904631407,52.349513133222054],[4.866838880064639,52.356253606164074],[4.85289454229496,52.3561914855039],[4.852975684963722,52.34945102475066]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01034000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01034000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01034000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01034000001-warped.tif

# ==============================================
# Name: DUIZ01049000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01049000001.jpg ]; then
  wget -O output/downloads/DUIZ01049000001.jpg "https://webservices.picturae.com/mediabank/media/190c9c3f-9b31-3f4c-7fac-a625c973c862/downloadoriginal/fd0335da-a9c7-8e94-e8d3-6c5b91f7a6ed?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 203 236 4.866838880064639 52.356253606164074 \
-gcp 5783 198 4.8807832621590475 52.356314083724776 \
-gcp 5812 4609 4.880860168600992 52.3495735989162 \
-gcp 229 4650 4.866917904631407 52.349513133222054 \
   output/downloads/DUIZ01049000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01049000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866917904631407,52.349513133222054],[4.880860168600992,52.3495735989162],[4.8807832621590475,52.356314083724776],[4.866838880064639,52.356253606164074],[4.866917904631407,52.349513133222054]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01049000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01049000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01049000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01049000001-warped.tif

# ==============================================
# Name: DUIZ01061000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01061000001.jpg ]; then
  wget -O output/downloads/DUIZ01061000001.jpg "https://webservices.picturae.com/mediabank/media/2256aec9-c281-3175-7e20-5b5dd83b473d/downloadoriginal/419d5d6e-ce12-0959-93e3-7c22e5810abe?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 225 210 4.8807832621590475 52.356314083724776 \
-gcp 5808 229 4.894727687390359 52.35637291817528 \
-gcp 5795 4635 4.894802475685259 52.34963242182257 \
-gcp 209 4624 4.880860168600992 52.3495735989162 \
   output/downloads/DUIZ01061000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01061000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880860168600992,52.3495735989162],[4.894802475685259,52.34963242182257],[4.894727687390359,52.35637291817528],[4.8807832621590475,52.356314083724776],[4.880860168600992,52.3495735989162]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01061000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01061000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01061000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01061000001-warped.tif

# ==============================================
# Name: DUIZ01075000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01075000001.jpg ]; then
  wget -O output/downloads/DUIZ01075000001.jpg "https://webservices.picturae.com/mediabank/media/b21fb2a4-33bf-554e-92e1-5a6646cecfe4/downloadoriginal/773a54ff-eadd-0736-a513-05b3bcebaae0?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 248 293 4.894727687390359 52.35637291817528 \
-gcp 5841 292 4.908672154570723 52.35643010950521 \
-gcp 5844 4703 4.9087448246969645 52.34968960193067 \
-gcp 251 4717 4.894802475685259 52.34963242182257 \
   output/downloads/DUIZ01075000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01075000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894802475685259,52.34963242182257],[4.9087448246969645,52.34968960193067],[4.908672154570723,52.35643010950521],[4.894727687390359,52.35637291817528],[4.894802475685259,52.34963242182257]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01075000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01075000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01075000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01075000001-warped.tif

# ==============================================
# Name: DUIZ01088000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01088000001.jpg ]; then
  wget -O output/downloads/DUIZ01088000001.jpg "https://webservices.picturae.com/mediabank/media/dd82a678-dbb7-e78a-da9a-8d63e49bf86d/downloadoriginal/02bb1b03-ac2b-2e27-b77c-0b17ac36489c?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 191 193 4.908672154570723 52.35643010950521 \
-gcp 5767 202 4.922616662512259 52.35648565770444 \
-gcp 5764 4615 4.922687214448846 52.34974513923041 \
-gcp 180 4613 4.9087448246969645 52.34968960193067 \
   output/downloads/DUIZ01088000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01088000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.9087448246969645,52.34968960193067],[4.922687214448846,52.34974513923041],[4.922616662512259,52.35648565770444],[4.908672154570723,52.35643010950521],[4.9087448246969645,52.34968960193067]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01088000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01088000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01088000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01088000001-warped.tif

# ==============================================
# Name: DUIZ01100000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01100000001.jpg ]; then
  wget -O output/downloads/DUIZ01100000001.jpg "https://webservices.picturae.com/mediabank/media/11fe29a3-4438-50f8-9047-2436aafbbdae/downloadoriginal/183cd90d-e5f6-a73b-59a6-4718051b0be7?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 216 227 4.922616662512259 52.35648565770444 \
-gcp 5799 213 4.936561210027068 52.356539562763146 \
-gcp 5813 4620 4.936629643753615 52.34979903371197 \
-gcp 228 4637 4.922687214448846 52.34974513923041 \
   output/downloads/DUIZ01100000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01100000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922687214448846,52.34974513923041],[4.936629643753615,52.34979903371197],[4.936561210027068,52.356539562763146],[4.922616662512259,52.35648565770444],[4.922687214448846,52.34974513923041]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01100000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01100000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01100000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01100000001-warped.tif

# ==============================================
# Name: DUIZ01109000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01109000001.jpg ]; then
  wget -O output/downloads/DUIZ01109000001.jpg "https://webservices.picturae.com/mediabank/media/35985f4f-6409-1c5c-74f3-f0df3538db34/downloadoriginal/043991cd-7fa0-2cd6-1ff0-85cc2b9161a9?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 209 228 4.936561210027068 52.356539562763146 \
-gcp 5792 211 4.950505795927228 52.3565918246718 \
-gcp 5806 4623 4.950572111423964 52.349851285365816 \
-gcp 220 4645 4.936629643753615 52.34979903371197 \
   output/downloads/DUIZ01109000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01109000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936629643753615,52.34979903371197],[4.950572111423964,52.349851285365816],[4.950505795927228,52.3565918246718],[4.936561210027068,52.356539562763146],[4.936629643753615,52.34979903371197]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01109000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01109000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01109000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01109000001-warped.tif

# ==============================================
# Name: DUIZ01116000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01116000001.jpg ]; then
  wget -O output/downloads/DUIZ01116000001.jpg "https://webservices.picturae.com/mediabank/media/721da350-9ecf-d32f-033e-abd553244655/downloadoriginal/6f04262d-0204-bcc5-53e8-c592b2ff5533?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 212 216 4.950505795927228 52.3565918246718 \
-gcp 5793 208 4.964450419024794 52.356642443421116 \
-gcp 5805 4623 4.964514616272553 52.34990189418268 \
-gcp 216 4637 4.950572111423964 52.349851285365816 \
   output/downloads/DUIZ01116000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01116000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.950572111423964,52.349851285365816],[4.964514616272553,52.34990189418268],[4.964450419024794,52.356642443421116],[4.950505795927228,52.3565918246718],[4.950572111423964,52.349851285365816]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01116000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01116000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01116000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01116000001-warped.tif

# ==============================================
# Name: DUIZ01134000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01134000001.jpg ]; then
  wget -O output/downloads/DUIZ01134000001.jpg "https://webservices.picturae.com/mediabank/media/73d04dff-656a-5a9a-07b1-43d3e27b03a4/downloadoriginal/a8fc36bd-025a-266d-3b06-59a740271cc1?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 222 209 4.839033510785126 52.34938727351315 \
-gcp 5808 218 4.852975684963722 52.34945102475066 \
-gcp 5801 4627 4.853056799280559 52.34271055485341 \
-gcp 216 4620 4.839116742440586 52.342646816123214 \
   output/downloads/DUIZ01134000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01134000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.839116742440586,52.342646816123214],[4.853056799280559,52.34271055485341],[4.852975684963722,52.34945102475066],[4.839033510785126,52.34938727351315],[4.839116742440586,52.342646816123214]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01134000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01134000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01134000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01134000001-warped.tif

# ==============================================
# Name: DUIZ01148000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01148000001.jpg ]; then
  wget -O output/downloads/DUIZ01148000001.jpg "https://webservices.picturae.com/mediabank/media/e872f310-3060-a977-b481-e1e2881b2610/downloadoriginal/77c56adc-81eb-6d32-9858-757fa25e26cd?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 222 210 4.852975684963722 52.34945102475066 \
-gcp 5805 203 4.866917904631407 52.349513133222054 \
-gcp 5816 4610 4.866996901586188 52.342772651139654 \
-gcp 231 4626 4.853056799280559 52.34271055485341 \
   output/downloads/DUIZ01148000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01148000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.853056799280559,52.34271055485341],[4.866996901586188,52.342772651139654],[4.866917904631407,52.349513133222054],[4.852975684963722,52.34945102475066],[4.853056799280559,52.34271055485341]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01148000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01148000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01148000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01148000001-warped.tif

# ==============================================
# Name: DUIZ01159000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01159000001.jpg ]; then
  wget -O output/downloads/DUIZ01159000001.jpg "https://webservices.picturae.com/mediabank/media/7ef32b6e-e4fa-f1a8-ae18-2e0e70255d55/downloadoriginal/a56ffbf2-1363-6433-5c0c-eb1820d3f754?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 240 210 4.866917904631407 52.349513133222054 \
-gcp 5817 226 4.880860168600992 52.3495735989162 \
-gcp 5808 4634 4.880937048170903 52.34283310497098 \
-gcp 217 4628 4.866996901586188 52.342772651139654 \
   output/downloads/DUIZ01159000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01159000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866996901586188,52.342772651139654],[4.880937048170903,52.34283310497098],[4.880860168600992,52.3495735989162],[4.866917904631407,52.349513133222054],[4.866996901586188,52.342772651139654]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01159000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01159000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01159000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01159000001-warped.tif

# ==============================================
# Name: DUIZ01171000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01171000001.jpg ]; then
  wget -O output/downloads/DUIZ01171000001.jpg "https://webservices.picturae.com/mediabank/media/fa587814-dd06-43c8-b0a1-511ac09fc67e/downloadoriginal/85840d7e-43ce-dc57-fec3-2f53e3e69ced?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 233 210 4.880860168600992 52.3495735989162 \
-gcp 5816 219 4.894802475685259 52.34963242182257 \
-gcp 5810 4624 4.8948772378480925 52.34289191633669 \
-gcp 228 4621 4.880937048170903 52.34283310497098 \
   output/downloads/DUIZ01171000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01171000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880937048170903,52.34283310497098],[4.8948772378480925,52.34289191633669],[4.894802475685259,52.34963242182257],[4.880860168600992,52.3495735989162],[4.880937048170903,52.34283310497098]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01171000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01171000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01171000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01171000001-warped.tif

# ==============================================
# Name: DUIZ01181000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01181000001.jpg ]; then
  wget -O output/downloads/DUIZ01181000001.jpg "https://webservices.picturae.com/mediabank/media/6e04d0b5-de58-ab6b-4fb7-fa001d45ed92/downloadoriginal/8459195f-d0f1-3fbd-dec3-a955024ed047?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 211 224 4.894802475685259 52.34963242182257 \
-gcp 5798 208 4.9087448246969645 52.34968960193067 \
-gcp 5809 4618 4.908817469431128 52.34294908522636 \
-gcp 225 4641 4.8948772378480925 52.34289191633669 \
   output/downloads/DUIZ01181000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01181000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.8948772378480925,52.34289191633669],[4.908817469431128,52.34294908522636],[4.9087448246969645,52.34968960193067],[4.894802475685259,52.34963242182257],[4.8948772378480925,52.34289191633669]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01181000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01181000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01181000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01181000001-warped.tif

# ==============================================
# Name: DUIZ01196000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01196000001.jpg ]; then
  wget -O output/downloads/DUIZ01196000001.jpg "https://webservices.picturae.com/mediabank/media/62dedc1e-4471-435a-b463-9c83e2c46526/downloadoriginal/61062753-8396-544d-f891-d99a509f1006?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 223 207 4.9087448246969645 52.34968960193067 \
-gcp 5803 229 4.922687214448846 52.34974513923041 \
-gcp 5788 4637 4.922757741733356 52.34300461162991 \
-gcp 206 4624 4.908817469431128 52.34294908522636 \
   output/downloads/DUIZ01196000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01196000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908817469431128,52.34294908522636],[4.922757741733356,52.34300461162991],[4.922687214448846,52.34974513923041],[4.9087448246969645,52.34968960193067],[4.908817469431128,52.34294908522636]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01196000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01196000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01196000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01196000001-warped.tif

# ==============================================
# Name: DUIZ01203000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01203000001.jpg ]; then
  wget -O output/downloads/DUIZ01203000001.jpg "https://webservices.picturae.com/mediabank/media/25f6a0a1-fae0-c268-b2c7-74f89f19ef4d/downloadoriginal/092d0ab8-8c20-7561-bb59-4c4f97d08108?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 240 212 4.922687214448846 52.34974513923041 \
-gcp 5823 241 4.936629643753615 52.34979903371197 \
-gcp 5804 4648 4.936698053568099 52.34305849553756 \
-gcp 217 4626 4.922757741733356 52.34300461162991 \
   output/downloads/DUIZ01203000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01203000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922757741733356,52.34300461162991],[4.936698053568099,52.34305849553756],[4.936629643753615,52.34979903371197],[4.922687214448846,52.34974513923041],[4.922757741733356,52.34300461162991]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01203000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01203000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01203000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01203000001-warped.tif

# ==============================================
# Name: DUIZ01212000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01212000001.jpg ]; then
  wget -O output/downloads/DUIZ01212000001.jpg "https://webservices.picturae.com/mediabank/media/0c2dc163-b8d6-99b4-fafc-e680e50ad286/downloadoriginal/57c6f39c-fba9-6be7-6a94-22ad77a55159?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 205 207 4.936629643753615 52.34979903371197 \
-gcp 5784 203 4.950572111423964 52.349851285365816 \
-gcp 5796 4618 4.95063840374866 52.3431107369397 \
-gcp 207 4632 4.936698053568099 52.34305849553756 \
   output/downloads/DUIZ01212000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01212000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936698053568099,52.34305849553756],[4.95063840374866,52.3431107369397],[4.950572111423964,52.349851285365816],[4.936629643753615,52.34979903371197],[4.936698053568099,52.34305849553756]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01212000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01212000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01212000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01212000001-warped.tif

# ==============================================
# Name: DUIZ01218000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01218000001.jpg ]; then
  wget -O output/downloads/DUIZ01218000001.jpg "https://webservices.picturae.com/mediabank/media/85baad62-6992-3872-7c8e-aa1aa948f0cb/downloadoriginal/492152c7-1d1c-b494-2153-f40b28ba5df4?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 330 220 4.950572111423964 52.349851285365816 \
-gcp 5928 203 4.964514616272553 52.34990189418268 \
-gcp 5945 4637 4.964578791088314 52.34316133582713 \
-gcp 339 4655 4.95063840374866 52.3431107369397 \
   output/downloads/DUIZ01218000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01218000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.95063840374866,52.3431107369397],[4.964578791088314,52.34316133582713],[4.964514616272553,52.34990189418268],[4.950572111423964,52.349851285365816],[4.95063840374866,52.3431107369397]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01218000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01218000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01218000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01218000001-warped.tif

# ==============================================
# Name: DUIZ01238000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01238000001.jpg ]; then
  wget -O output/downloads/DUIZ01238000001.jpg "https://webservices.picturae.com/mediabank/media/10fcca24-27d0-5ec0-d8e4-c5c76462cc8f/downloadoriginal/ae4c3d76-95d6-ddcc-71f9-9388383b3d96?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 205 224 4.839116742440586 52.342646816123214 \
-gcp 5783 213 4.853056799280559 52.34271055485341 \
-gcp 5797 4628 4.853137885260069 52.33597007585828 \
-gcp 201 4646 4.83919994501918 52.33590634963156 \
   output/downloads/DUIZ01238000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01238000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.83919994501918,52.33590634963156],[4.853137885260069,52.33597007585828],[4.853056799280559,52.34271055485341],[4.839116742440586,52.342646816123214],[4.83919994501918,52.33590634963156]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01238000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01238000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01238000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01238000001-warped.tif

# ==============================================
# Name: DUIZ01251000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01251000001.jpg ]; then
  wget -O output/downloads/DUIZ01251000001.jpg "https://webservices.picturae.com/mediabank/media/c8b9fcbe-fc2e-fcc0-1d55-68cb3204d2d2/downloadoriginal/37ceeddc-0d1e-36dc-ed6a-01439b45dcd1?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 236 275 4.853056799280559 52.34271055485341 \
-gcp 5818 251 4.866996901586188 52.342772651139654 \
-gcp 5841 4667 4.867075870943206 52.33603215996312 \
-gcp 247 4693 4.853137885260069 52.33597007585828 \
   output/downloads/DUIZ01251000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01251000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.853137885260069,52.33597007585828],[4.867075870943206,52.33603215996312],[4.866996901586188,52.342772651139654],[4.853056799280559,52.34271055485341],[4.853137885260069,52.33597007585828]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01251000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01251000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01251000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01251000001-warped.tif

# ==============================================
# Name: DUIZ01261000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01261000001.jpg ]; then
  wget -O output/downloads/DUIZ01261000001.jpg "https://webservices.picturae.com/mediabank/media/993594a1-3e79-f888-481b-4f59342f52ba/downloadoriginal/25f3e1a6-36c1-1491-d47b-ed9f75d4adf9?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 272 256 4.866996901586188 52.342772651139654 \
-gcp 5859 270 4.880937048170903 52.34283310497098 \
-gcp 5850 4683 4.881013900882621 52.336092601935114 \
-gcp 262 4677 4.867075870943206 52.33603215996312 \
   output/downloads/DUIZ01261000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01261000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.867075870943206,52.33603215996312],[4.881013900882621,52.336092601935114],[4.880937048170903,52.34283310497098],[4.866996901586188,52.342772651139654],[4.867075870943206,52.33603215996312]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01261000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01261000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01261000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01261000001-warped.tif

# ==============================================
# Name: DUIZ01270000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01270000001.jpg ]; then
  wget -O output/downloads/DUIZ01270000001.jpg "https://webservices.picturae.com/mediabank/media/08f67135-1aef-10a2-0448-5701729adc98/downloadoriginal/65d72c0c-4ebd-3960-cb54-478e439a9118?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 278 266 4.880937048170903 52.34283310497098 \
-gcp 5872 271 4.8948772378480925 52.34289191633669 \
-gcp 5873 4689 4.894951973892325 52.336151401763686 \
-gcp 275 4692 4.881013900882621 52.336092601935114 \
   output/downloads/DUIZ01270000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01270000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.881013900882621,52.336092601935114],[4.894951973892325,52.336151401763686],[4.8948772378480925,52.34289191633669],[4.880937048170903,52.34283310497098],[4.881013900882621,52.336092601935114]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01270000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01270000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01270000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01270000001-warped.tif

# ==============================================
# Name: DUIZ01279000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01279000001.jpg ]; then
  wget -O output/downloads/DUIZ01279000001.jpg "https://webservices.picturae.com/mediabank/media/4b9eaa0f-4b38-f643-8bf6-b8d1317913ea/downloadoriginal/d41cd8bd-c7b7-ed73-fc03-fe2491e0103e?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 231 209 4.8948772378480925 52.34289191633669 \
-gcp 5814 231 4.908817469431128 52.34294908522636 \
-gcp 5799 4637 4.9088900887862925 52.33620855943833 \
-gcp 216 4620 4.894951973892325 52.336151401763686 \
   output/downloads/DUIZ01279000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01279000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894951973892325,52.336151401763686],[4.9088900887862925,52.33620855943833],[4.908817469431128,52.34294908522636],[4.8948772378480925,52.34289191633669],[4.894951973892325,52.336151401763686]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01279000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01279000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01279000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01279000001-warped.tif

# ==============================================
# Name: DUIZ01292000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01292000001.jpg ]; then
  wget -O output/downloads/DUIZ01292000001.jpg "https://webservices.picturae.com/mediabank/media/3ddc69c2-9fc7-f059-a7f7-2e1a75fc9940/downloadoriginal/4f14a2f0-4f5f-d2aa-19e2-72910689b5a8?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 246 226 4.908817469431128 52.34294908522636 \
-gcp 5830 236 4.922757741733356 52.34300461162991 \
-gcp 5823 4648 4.9228282443784845 52.33626407494904 \
-gcp 228 4642 4.9088900887862925 52.33620855943833 \
   output/downloads/DUIZ01292000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01292000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.9088900887862925,52.33620855943833],[4.9228282443784845,52.33626407494904],[4.922757741733356,52.34300461162991],[4.908817469431128,52.34294908522636],[4.9088900887862925,52.33620855943833]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01292000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01292000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01292000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01292000001-warped.tif

# ==============================================
# Name: DUIZ01299000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01299000001.jpg ]; then
  wget -O output/downloads/DUIZ01299000001.jpg "https://webservices.picturae.com/mediabank/media/d03fbb13-a4e9-c445-ff27-53e187694b8e/downloadoriginal/9ca1bf94-12ac-5883-ae1b-b93b32a25ad4?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 198 204 4.922757741733356 52.34300461162991 \
-gcp 5778 203 4.936698053568099 52.34305849553756 \
-gcp 5784 4621 4.936766439482835 52.33631794828592 \
-gcp 196 4627 4.9228282443784845 52.33626407494904 \
   output/downloads/DUIZ01299000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01299000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.9228282443784845,52.33626407494904],[4.936766439482835,52.33631794828592],[4.936698053568099,52.34305849553756],[4.922757741733356,52.34300461162991],[4.9228282443784845,52.33626407494904]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01299000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01299000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01299000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01299000001-warped.tif

# ==============================================
# Name: DUIZ01306000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01306000001.jpg ]; then
  wget -O output/downloads/DUIZ01306000001.jpg "https://webservices.picturae.com/mediabank/media/77d5cc64-08b0-0977-2d3e-b8fcf860d857/downloadoriginal/9440633e-13f0-6580-7253-a22132a5fcfb?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 217 246 4.936698053568099 52.34305849553756 \
-gcp 5801 209 4.95063840374866 52.3431107369397 \
-gcp 5831 4620 4.950704672913254 52.336370179439506 \
-gcp 246 4664 4.936766439482835 52.33631794828592 \
   output/downloads/DUIZ01306000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01306000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936766439482835,52.33631794828592],[4.950704672913254,52.336370179439506],[4.95063840374866,52.3431107369397],[4.936698053568099,52.34305849553756],[4.936766439482835,52.33631794828592]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01306000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01306000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01306000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01306000001-warped.tif

# ==============================================
# Name: DUIZ01310000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01310000001.jpg ]; then
  wget -O output/downloads/DUIZ01310000001.jpg "https://webservices.picturae.com/mediabank/media/d3c950b7-b405-6ab7-68dd-d842f128f020/downloadoriginal/a40fc0b3-c88c-d9b8-df9f-98ff8bb197b3?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 215 277 4.95063840374866 52.3431107369397 \
-gcp 5832 312 4.964578791088314 52.34316133582713 \
-gcp 5808 4733 4.9646429434836366 52.33642076840053 \
-gcp 193 4710 4.950704672913254 52.336370179439506 \
   output/downloads/DUIZ01310000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01310000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.950704672913254,52.336370179439506],[4.9646429434836366,52.33642076840053],[4.964578791088314,52.34316133582713],[4.95063840374866,52.3431107369397],[4.950704672913254,52.336370179439506]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01310000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01310000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01310000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01310000001-warped.tif

# ==============================================
# Name: DUIZ01322000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01322000001.jpg ]; then
  wget -O output/downloads/DUIZ01322000001.jpg "https://webservices.picturae.com/mediabank/media/cf319751-3328-97b8-a093-420ca8fb5313/downloadoriginal/4b154e14-0970-9c06-ffad-801015fa7bfb?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 197 203 4.83919994501918 52.33590634963156 \
-gcp 5775 193 4.853137885260069 52.33597007585828 \
-gcp 5787 4586 4.853218942916847 52.32922958781127 \
-gcp 206 4604 4.83928311853588 52.32916587408431 \
   output/downloads/DUIZ01322000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01322000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.83928311853588,52.32916587408431],[4.853218942916847,52.32922958781127],[4.853137885260069,52.33597007585828],[4.83919994501918,52.33590634963156],[4.83928311853588,52.32916587408431]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01322000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01322000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01322000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01322000001-warped.tif

# ==============================================
# Name: DUIZ01333000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01333000001.jpg ]; then
  wget -O output/downloads/DUIZ01333000001.jpg "https://webservices.picturae.com/mediabank/media/cc256823-ef3f-071e-ddc3-6643946325b5/downloadoriginal/b5be94f4-9b0b-6088-536c-4fba2485623e?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 260 256 4.853137885260069 52.33597007585828 \
-gcp 5890 251 4.867075870943206 52.33603215996312 \
-gcp 5898 4707 4.867154812716667 52.32929165973837 \
-gcp 258 4721 4.853218942916847 52.32922958781127 \
   output/downloads/DUIZ01333000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01333000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.853218942916847,52.32922958781127],[4.867154812716667,52.32929165973837],[4.867075870943206,52.33603215996312],[4.853137885260069,52.33597007585828],[4.853218942916847,52.32922958781127]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01333000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01333000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01333000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01333000001-warped.tif

# ==============================================
# Name: DUIZ01338000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01338000001.jpg ]; then
  wget -O output/downloads/DUIZ01338000001.jpg "https://webservices.picturae.com/mediabank/media/a1624944-4ebb-0e63-8a59-b12dbb8c4d21/downloadoriginal/3adeb713-d5bd-a995-408c-85d7b3f3aa10?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 247 379 4.867075870943206 52.33603215996312 \
-gcp 5860 303 4.881013900882621 52.336092601935114 \
-gcp 5918 4760 4.88109072674998 52.329352089854716 \
-gcp 312 4843 4.867154812716667 52.32929165973837 \
   output/downloads/DUIZ01338000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01338000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.867154812716667,52.32929165973837],[4.88109072674998,52.329352089854716],[4.881013900882621,52.336092601935114],[4.867075870943206,52.33603215996312],[4.867154812716667,52.32929165973837]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01338000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01338000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01338000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01338000001-warped.tif

# ==============================================
# Name: DUIZ01343000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01343000001.jpg ]; then
  wget -O output/downloads/DUIZ01343000001.jpg "https://webservices.picturae.com/mediabank/media/1c773a2c-628c-be5a-e169-331955c344ed/downloadoriginal/99b71f23-e378-a0c0-600d-0e2b830f4e19?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 305 327 4.881013900882621 52.336092601935114 \
-gcp 5919 353 4.894951973892325 52.336151401763686 \
-gcp 5894 4811 4.895026683831404 52.329410878149645 \
-gcp 289 4792 4.88109072674998 52.329352089854716 \
   output/downloads/DUIZ01343000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01343000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.88109072674998,52.329352089854716],[4.895026683831404,52.329410878149645],[4.894951973892325,52.336151401763686],[4.881013900882621,52.336092601935114],[4.88109072674998,52.329352089854716]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01343000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01343000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01343000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01343000001-warped.tif

# ==============================================
# Name: DUIZ01349000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01349000001.jpg ]; then
  wget -O output/downloads/DUIZ01349000001.jpg "https://webservices.picturae.com/mediabank/media/efe09e11-561b-59dd-60da-516f3ea38ebe/downloadoriginal/e5ebc043-c44a-4ce1-c4f9-a116e0e4cf3b?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 258 232 4.894951973892325 52.336151401763686 \
-gcp 5844 209 4.9088900887862925 52.33620855943833 \
-gcp 5883 4621 4.908962682775526 52.32946802461267 \
-gcp 257 4654 4.895026683831404 52.329410878149645 \
   output/downloads/DUIZ01349000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01349000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.895026683831404,52.329410878149645],[4.908962682775526,52.32946802461267],[4.9088900887862925,52.33620855943833],[4.894951973892325,52.336151401763686],[4.895026683831404,52.329410878149645]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01349000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01349000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01349000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01349000001-warped.tif

# ==============================================
# Name: DUIZ01354000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01354000001.jpg ]; then
  wget -O output/downloads/DUIZ01354000001.jpg "https://webservices.picturae.com/mediabank/media/81ffeefc-7783-b7c9-2c54-2aef2f7db028/downloadoriginal/a896ca02-bb1a-47b4-5cd6-ee17380c7577?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 225 212 4.9088900887862925 52.33620855943833 \
-gcp 5814 236 4.9228282443784845 52.33626407494904 \
-gcp 5798 4646 4.922898722396921 52.329523529233825 \
-gcp 210 4630 4.908962682775526 52.32946802461267 \
   output/downloads/DUIZ01354000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01354000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908962682775526,52.32946802461267],[4.922898722396921,52.329523529233825],[4.9228282443784845,52.33626407494904],[4.9088900887862925,52.33620855943833],[4.908962682775526,52.32946802461267]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01354000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01354000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01354000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01354000001-warped.tif

# ==============================================
# Name: DUIZ01358000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01358000001.jpg ]; then
  wget -O output/downloads/DUIZ01358000001.jpg "https://webservices.picturae.com/mediabank/media/3244d088-2ad5-d8df-31b9-99eb1e7a3aeb/downloadoriginal/23c93477-13cc-2e82-3a11-b0e537c1691c?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 211 199 4.9228282443784845 52.33626407494904 \
-gcp 5789 212 4.936766439482835 52.33631794828592 \
-gcp 5783 4614 4.9368348015101295 52.329577392003195 \
-gcp 205 4613 4.922898722396921 52.329523529233825 \
   output/downloads/DUIZ01358000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01358000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922898722396921,52.329523529233825],[4.9368348015101295,52.329577392003195],[4.936766439482835,52.33631794828592],[4.9228282443784845,52.33626407494904],[4.922898722396921,52.329523529233825]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01358000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01358000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01358000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01358000001-warped.tif

# ==============================================
# Name: DUIZ01361000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01361000001.jpg ]; then
  wget -O output/downloads/DUIZ01361000001.jpg "https://webservices.picturae.com/mediabank/media/874d0a26-ad41-2f25-5066-aa9d56749335/downloadoriginal/c6e994a5-324a-13b0-4eaf-5ce539d3588e?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 264 250 4.936766439482835 52.33631794828592 \
-gcp 5841 266 4.950704672913254 52.336370179439506 \
-gcp 5831 4674 4.950770918929674 52.32962961291131 \
-gcp 249 4669 4.9368348015101295 52.329577392003195 \
   output/downloads/DUIZ01361000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01361000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.9368348015101295,52.329577392003195],[4.950770918929674,52.32962961291131],[4.950704672913254,52.336370179439506],[4.936766439482835,52.33631794828592],[4.9368348015101295,52.329577392003195]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01361000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01361000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01361000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01361000001-warped.tif

# ==============================================
# Name: DUIZ01362000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01362000001.jpg ]; then
  wget -O output/downloads/DUIZ01362000001.jpg "https://webservices.picturae.com/mediabank/media/be4d1b17-2443-cddd-4166-40aec124d073/downloadoriginal/ffbc062e-3c01-45c5-e761-e5ef384b2329?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 237 287 4.950704672913254 52.336370179439506 \
-gcp 5807 244 4.9646429434836366 52.33642076840053 \
-gcp 5864 4648 4.964707073470057 52.32968019194894 \
-gcp 268 4706 4.950770918929674 52.32962961291131 \
   output/downloads/DUIZ01362000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01362000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.950770918929674,52.32962961291131],[4.964707073470057,52.32968019194894],[4.9646429434836366,52.33642076840053],[4.950704672913254,52.336370179439506],[4.950770918929674,52.32962961291131]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01362000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01362000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01362000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01362000001-warped.tif

# ==============================================
# Name: DUIZ01373000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01373000001.jpg ]; then
  wget -O output/downloads/DUIZ01373000001.jpg "https://webservices.picturae.com/mediabank/media/6901ae27-3cef-30b4-4420-104b88f02e5a/downloadoriginal/624b44d9-8e1f-6a46-83ae-776f6ba8ec9c?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 197 226 4.83928311853588 52.32916587408431 \
-gcp 5782 205 4.853218942916847 52.32922958781127 \
-gcp 5792 4609 4.853299972265477 52.32248909075849 \
-gcp 216 4639 4.83936626300565 52.322425389527496 \
   output/downloads/DUIZ01373000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01373000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.83936626300565,52.322425389527496],[4.853299972265477,52.32248909075849],[4.853218942916847,52.32922958781127],[4.83928311853588,52.32916587408431],[4.83936626300565,52.322425389527496]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01373000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01373000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01373000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01373000001-warped.tif

# ==============================================
# Name: DUIZ01387000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01387000001.jpg ]; then
  wget -O output/downloads/DUIZ01387000001.jpg "https://webservices.picturae.com/mediabank/media/4b4a52f1-4aad-9ea4-2fcc-ea0e046e59d1/downloadoriginal/1475b454-5085-0afc-233e-ce0f265b7b85?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 298 355 4.853218942916847 52.32922958781127 \
-gcp 5894 305 4.867154812716667 52.32929165973837 \
-gcp 5940 4750 4.867233726920774 52.322551150511586 \
-gcp 349 4817 4.853299972265477 52.32248909075849 \
   output/downloads/DUIZ01387000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01387000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.853299972265477,52.32248909075849],[4.867233726920774,52.322551150511586],[4.867154812716667,52.32929165973837],[4.853218942916847,52.32922958781127],[4.853299972265477,52.32248909075849]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01387000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01387000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01387000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01387000001-warped.tif

# ==============================================
# Name: DUIZ01392000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01392000001.jpg ]; then
  wget -O output/downloads/DUIZ01392000001.jpg "https://webservices.picturae.com/mediabank/media/ebbc7fa1-0672-4a38-6c74-6aea4fd980a6/downloadoriginal/7b3ab5e8-965d-c930-07e6-dec3356151e7?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 325 331 4.867154812716667 52.32929165973837 \
-gcp 5927 332 4.88109072674998 52.329352089854716 \
-gcp 5916 4771 4.881167525786795 52.32261156877584 \
-gcp 341 4782 4.867233726920774 52.322551150511586 \
   output/downloads/DUIZ01392000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01392000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.867233726920774,52.322551150511586],[4.881167525786795,52.32261156877584],[4.88109072674998,52.329352089854716],[4.867154812716667,52.32929165973837],[4.867233726920774,52.322551150511586]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01392000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01392000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01392000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01392000001-warped.tif

# ==============================================
# Name: DUIZ01398000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01398000001.jpg ]; then
  wget -O output/downloads/DUIZ01398000001.jpg "https://webservices.picturae.com/mediabank/media/e3566602-31c6-c30a-85e1-8fcc8241e171/downloadoriginal/24e44d2f-c386-7beb-f318-fedaff6051d5?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 199 209 4.88109072674998 52.329352089854716 \
-gcp 5795 204 4.895026683831404 52.329410878149645 \
-gcp 5801 4653 4.895101367678768 52.32267034554061 \
-gcp 205 4660 4.881167525786795 52.32261156877584 \
   output/downloads/DUIZ01398000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01398000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.881167525786795,52.32261156877584],[4.895101367678768,52.32267034554061],[4.895026683831404,52.329410878149645],[4.88109072674998,52.329352089854716],[4.881167525786795,52.32261156877584]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01398000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01398000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01398000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01398000001-warped.tif

# ==============================================
# Name: DUIZ01404000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01404000001.jpg ]; then
  wget -O output/downloads/DUIZ01404000001.jpg "https://webservices.picturae.com/mediabank/media/5b131ed0-6e7e-2c48-1c02-8c69d33c232c/downloadoriginal/e9097635-6fdb-3d99-0843-326a119f358c?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 243 253 4.895026683831404 52.329410878149645 \
-gcp 5841 248 4.908962682775526 52.32946802461267 \
-gcp 5839 4653 4.90903525141189 52.32272748079546 \
-gcp 252 4668 4.895101367678768 52.32267034554061 \
   output/downloads/DUIZ01404000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01404000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.895101367678768,52.32267034554061],[4.90903525141189,52.32272748079546],[4.908962682775526,52.32946802461267],[4.895026683831404,52.329410878149645],[4.895101367678768,52.32267034554061]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01404000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01404000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01404000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01404000001-warped.tif

# ==============================================
# Name: DUIZ01408000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01408000001.jpg ]; then
  wget -O output/downloads/DUIZ01408000001.jpg "https://webservices.picturae.com/mediabank/media/89c953c0-ee1d-8a8d-4c21-4be50db37751/downloadoriginal/f55f6161-5f0b-0267-921b-2c97e157bbf5?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 200 213 4.908962682775526 52.32946802461267 \
-gcp 5781 192 4.922898722396921 52.329523529233825 \
-gcp 5795 4606 4.922969175801344 52.322782974530334 \
-gcp 207 4631 4.90903525141189 52.32272748079546 \
   output/downloads/DUIZ01408000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01408000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.90903525141189,52.32272748079546],[4.922969175801344,52.322782974530334],[4.922898722396921,52.329523529233825],[4.908962682775526,52.32946802461267],[4.90903525141189,52.32272748079546]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01408000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01408000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01408000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01408000001-warped.tif

# ==============================================
# Name: DUIZ01412000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01412000001.jpg ]; then
  wget -O output/downloads/DUIZ01412000001.jpg "https://webservices.picturae.com/mediabank/media/ee6a51fe-c71e-4714-a14f-8ec8de4b7230/downloadoriginal/c576d942-397f-626f-b4c3-00598afca383?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 209 210 4.922898722396921 52.329523529233825 \
-gcp 5786 212 4.9368348015101295 52.329577392003195 \
-gcp 5790 4614 4.936903139662281 52.322836826735404 \
-gcp 211 4624 4.922969175801344 52.322782974530334 \
   output/downloads/DUIZ01412000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01412000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922969175801344,52.322782974530334],[4.936903139662281,52.322836826735404],[4.9368348015101295,52.329577392003195],[4.922898722396921,52.329523529233825],[4.922969175801344,52.322782974530334]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01412000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01412000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01412000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01412000001-warped.tif

# ==============================================
# Name: DUIZ01415000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01415000001.jpg ]; then
  wget -O output/downloads/DUIZ01415000001.jpg "https://webservices.picturae.com/mediabank/media/f8a044ae-7974-ad79-88dd-e0c8241f9b38/downloadoriginal/14521897-b882-d9d6-bdb2-33dbecd63544?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 229 235 4.9368348015101295 52.329577392003195 \
-gcp 5815 240 4.950770918929674 52.32962961291131 \
-gcp 5808 4652 4.950837141809838 52.32288903740117 \
-gcp 227 4660 4.936903139662281 52.322836826735404 \
   output/downloads/DUIZ01415000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01415000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936903139662281,52.322836826735404],[4.950837141809838,52.32288903740117],[4.950770918929674,52.32962961291131],[4.9368348015101295,52.329577392003195],[4.936903139662281,52.322836826735404]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01415000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01415000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01415000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01415000001-warped.tif

# ==============================================
# Name: DUIZ01419000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01419000001.jpg ]; then
  wget -O output/downloads/DUIZ01419000001.jpg "https://webservices.picturae.com/mediabank/media/c98cdaa2-47a5-74b6-04a1-7d0bdbbe4f00/downloadoriginal/300b096f-b72a-80f3-d126-9a022769508f?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 199 224 4.950770918929674 52.32962961291131 \
-gcp 5784 198 4.964707073470057 52.32968019194894 \
-gcp 5806 4606 4.96477118105912 52.32293960651842 \
-gcp 225 4641 4.950837141809838 52.32288903740117 \
   output/downloads/DUIZ01419000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01419000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.950837141809838,52.32288903740117],[4.96477118105912,52.32293960651842],[4.964707073470057,52.32968019194894],[4.950770918929674,52.32962961291131],[4.950837141809838,52.32288903740117]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01419000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01419000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01419000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01419000001-warped.tif

# ==============================================
# Name: DUIZ01429000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01429000001.jpg ]; then
  wget -O output/downloads/DUIZ01429000001.jpg "https://webservices.picturae.com/mediabank/media/57ebe51b-528d-1364-9886-9247274bfc47/downloadoriginal/dbaa9ee4-c8bf-4d14-5441-37ebbd59e99f?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 228 232 4.83936626300565 52.322425389527496 \
-gcp 5797 223 4.853299972265477 52.32248909075849 \
-gcp 5808 4627 4.853380973320528 52.31574858474603 \
-gcp 230 4645 4.839449378443441 52.31568489600723 \
   output/downloads/DUIZ01429000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01429000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.839449378443441,52.31568489600723],[4.853380973320528,52.31574858474603],[4.853299972265477,52.32248909075849],[4.83936626300565,52.322425389527496],[4.839449378443441,52.31568489600723]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01429000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01429000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01429000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01429000001-warped.tif

# ==============================================
# Name: DUIZ01439000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01439000001.jpg ]; then
  wget -O output/downloads/DUIZ01439000001.jpg "https://webservices.picturae.com/mediabank/media/9c8e467a-56c1-54d4-c38d-163b415f9335/downloadoriginal/98e7bb81-de8f-5cfa-f035-ce7349302d99?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 212 201 4.853299972265477 52.32248909075849 \
-gcp 5804 216 4.867233726920774 52.322551150511586 \
-gcp 5797 4648 4.867312613569722 52.31581063232882 \
-gcp 209 4652 4.853380973320528 52.31574858474603 \
   output/downloads/DUIZ01439000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01439000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.853380973320528,52.31574858474603],[4.867312613569722,52.31581063232882],[4.867233726920774,52.322551150511586],[4.853299972265477,52.32248909075849],[4.853380973320528,52.31574858474603]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01439000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01439000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01439000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01439000001-warped.tif

# ==============================================
# Name: DUIZ01443000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01443000001.jpg ]; then
  wget -O output/downloads/DUIZ01443000001.jpg "https://webservices.picturae.com/mediabank/media/7c77a186-ba5f-f0b8-c782-98f1a6c0bca4/downloadoriginal/62119b20-be4d-6202-ea2a-2c4a7b27d10a?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 203 226 4.867233726920774 52.322551150511586 \
-gcp 5787 205 4.881167525786795 52.32261156877584 \
-gcp 5806 4640 4.881244298006884 52.31587103874461 \
-gcp 215 4665 4.867312613569722 52.31581063232882 \
   output/downloads/DUIZ01443000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01443000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.867312613569722,52.31581063232882],[4.881244298006884,52.31587103874461],[4.881167525786795,52.32261156877584],[4.867233726920774,52.322551150511586],[4.867312613569722,52.31581063232882]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01443000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01443000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01443000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01443000001-warped.tif

# ==============================================
# Name: DUIZ01447000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01447000001.jpg ]; then
  wget -O output/downloads/DUIZ01447000001.jpg "https://webservices.picturae.com/mediabank/media/de30bedf-9d02-6078-53af-83ddf32c2fa1/downloadoriginal/7af24116-af74-0b0e-5706-1254e8bef188?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 221 209 4.881167525786795 52.32261156877584 \
-gcp 5807 230 4.895101367678768 52.32267034554061 \
-gcp 5786 4662 4.895176025447853 52.31592980398269 \
-gcp 205 4653 4.881244298006884 52.31587103874461 \
   output/downloads/DUIZ01447000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01447000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.881244298006884,52.31587103874461],[4.895176025447853,52.31592980398269],[4.895101367678768,52.32267034554061],[4.881167525786795,52.32261156877584],[4.881244298006884,52.31587103874461]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01447000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01447000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01447000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01447000001-warped.tif

# ==============================================
# Name: DUIZ01450000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01450000001.jpg ]; then
  wget -O output/downloads/DUIZ01450000001.jpg "https://webservices.picturae.com/mediabank/media/a83db526-47b4-2e16-cefc-c8d0356bcd7b/downloadoriginal/3c04b5ae-3bf1-09e0-a051-f49ba109cec4?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 262 222 4.895101367678768 52.32267034554061 \
-gcp 5830 237 4.90903525141189 52.32272748079546 \
-gcp 5815 4650 4.9091077947084365 52.31598692803274 \
-gcp 222 4637 4.895176025447853 52.31592980398269 \
   output/downloads/DUIZ01450000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01450000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.895176025447853,52.31592980398269],[4.9091077947084365,52.31598692803274],[4.90903525141189,52.32272748079546],[4.895101367678768,52.32267034554061],[4.895176025447853,52.31592980398269]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01450000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01450000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01450000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01450000001-warped.tif

# ==============================================
# Name: DUIZ01455000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01455000001.jpg ]; then
  wget -O output/downloads/DUIZ01455000001.jpg "https://webservices.picturae.com/mediabank/media/a59ac588-48b0-8c92-01a6-fe7c7e1ef0df/downloadoriginal/ab2ee7c9-6f56-7c94-3a90-2f7211c928b8?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 402 301 4.90903525141189 52.32272748079546 \
-gcp 5981 324 4.922969175801344 52.322782974530334 \
-gcp 5960 4726 4.923039604604426 52.31604241088467 \
-gcp 382 4708 4.9091077947084365 52.31598692803274 \
   output/downloads/DUIZ01455000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01455000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.9091077947084365,52.31598692803274],[4.923039604604426,52.31604241088467],[4.922969175801344,52.322782974530334],[4.90903525141189,52.32272748079546],[4.9091077947084365,52.31598692803274]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01455000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01455000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01455000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01455000001-warped.tif

# ==============================================
# Name: DUIZ01457000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01457000001.jpg ]; then
  wget -O output/downloads/DUIZ01457000001.jpg "https://webservices.picturae.com/mediabank/media/15e29234-4fb0-a66e-1ac8-460687541376/downloadoriginal/ad7b913a-0e3c-58ac-ce2c-5514282a6dc1?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 235 200 4.922969175801344 52.322782974530334 \
-gcp 5809 232 4.936903139662281 52.322836826735404 \
-gcp 5789 4643 4.936971453951584 52.316096252528595 \
-gcp 202 4620 4.923039604604426 52.31604241088467 \
   output/downloads/DUIZ01457000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01457000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.923039604604426,52.31604241088467],[4.936971453951584,52.316096252528595],[4.936903139662281,52.322836826735404],[4.922969175801344,52.322782974530334],[4.923039604604426,52.31604241088467]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01457000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01457000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01457000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01457000001-warped.tif

# ==============================================
# Name: DUIZ01461000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01461000001.jpg ]; then
  wget -O output/downloads/DUIZ01461000001.jpg "https://webservices.picturae.com/mediabank/media/4ef14082-bed7-ce83-b0ac-2ae08e9579d7/downloadoriginal/2f18a121-a8fa-a3e7-7c0f-5f6cfe96b217?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 256 229 4.936903139662281 52.322836826735404 \
-gcp 5830 252 4.950837141809838 52.32288903740117 \
-gcp 5815 4667 4.9509033415656525 52.31614845295515 \
-gcp 229 4649 4.936971453951584 52.316096252528595 \
   output/downloads/DUIZ01461000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01461000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936971453951584,52.316096252528595],[4.9509033415656525,52.31614845295515],[4.950837141809838,52.32288903740117],[4.936903139662281,52.322836826735404],[4.936971453951584,52.316096252528595]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01461000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01461000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01461000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01461000001-warped.tif

# ==============================================
# Name: DUIZ01465000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01465000001.jpg ]; then
  wget -O output/downloads/DUIZ01465000001.jpg "https://webservices.picturae.com/mediabank/media/1b50643c-4131-686c-edb6-51b42f5e5205/downloadoriginal/f53ab740-261f-ca87-7120-aa0ccabade19?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 205 215 4.950837141809838 52.32288903740117 \
-gcp 5778 208 4.96477118105912 52.32293960651842 \
-gcp 5792 4614 4.964835266262354 52.316199012154996 \
-gcp 213 4632 4.9509033415656525 52.31614845295515 \
   output/downloads/DUIZ01465000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01465000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.9509033415656525,52.31614845295515],[4.964835266262354,52.316199012154996],[4.96477118105912,52.32293960651842],[4.950837141809838,52.32288903740117],[4.9509033415656525,52.31614845295515]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01465000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01465000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01465000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01465000001-warped.tif

# ==============================================
# Name: DUIZ01476000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01476000001.jpg ]; then
  wget -O output/downloads/DUIZ01476000001.jpg "https://webservices.picturae.com/mediabank/media/3f1f2139-349a-869e-ac4d-cbe4e4645cbf/downloadoriginal/11646221-8bb0-c640-5495-349b49d0a5cd?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 213 196 4.867312613569722 52.31581063232882 \
-gcp 5785 216 4.881244298006884 52.31587103874461 \
-gcp 5775 4625 4.881321043424046 52.309130499807 \
-gcp 197 4615 4.867391472677689 52.30907010523612 \
   output/downloads/DUIZ01476000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01476000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.867391472677689,52.30907010523612],[4.881321043424046,52.309130499807],[4.881244298006884,52.31587103874461],[4.867312613569722,52.31581063232882],[4.867391472677689,52.30907010523612]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01476000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01476000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01476000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01476000001-warped.tif

# ==============================================
# Name: DUIZ01479000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01479000001.jpg ]; then
  wget -O output/downloads/DUIZ01479000001.jpg "https://webservices.picturae.com/mediabank/media/50328049-7a7f-5aac-a7ed-e0d508b07f98/downloadoriginal/84eed804-0321-adec-db8b-5d6600ba597e?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 236 216 4.923039604604426 52.31604241088467 \
-gcp 5838 244 4.936971453951584 52.316096252528595 \
-gcp 5812 4654 4.937039744390317 52.309355669428925 \
-gcp 228 4636 4.923110008818827 52.30930183834284 \
   output/downloads/DUIZ01479000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01479000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.923110008818827,52.30930183834284],[4.937039744390317,52.309355669428925],[4.936971453951584,52.316096252528595],[4.923039604604426,52.31604241088467],[4.923110008818827,52.30930183834284]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01479000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01479000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01479000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01479000001-warped.tif

# ==============================================
# Name: DUIZ01485000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01485000001.jpg ]; then
  wget -O output/downloads/DUIZ01485000001.jpg "https://webservices.picturae.com/mediabank/media/aa9a7e2f-bdc9-4c74-8511-e4239e14ab91/downloadoriginal/18efe999-d4ae-f466-8ecb-65ea3bfaeab1?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 189 182 4.936971453951584 52.316096252528595 \
-gcp 5773 192 4.9509033415656525 52.31614845295515 \
-gcp 5761 4624 4.950969518209025 52.3094078596193 \
-gcp 185 4619 4.937039744390317 52.309355669428925 \
   output/downloads/DUIZ01485000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01485000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.937039744390317,52.309355669428925],[4.950969518209025,52.3094078596193],[4.9509033415656525,52.31614845295515],[4.936971453951584,52.316096252528595],[4.937039744390317,52.309355669428925]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01485000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01485000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01485000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01485000001-warped.tif

# ==============================================
# Name: DUIZ01488000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01488000001.jpg ]; then
  wget -O output/downloads/DUIZ01488000001.jpg "https://webservices.picturae.com/mediabank/media/742cfb6a-62ca-037d-9a4c-075d7d4131b7/downloadoriginal/d3119f57-2248-18da-b9ff-a91e9601735c?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 224 272 4.9509033415656525 52.31614845295515 \
-gcp 5816 284 4.964835266262354 52.316199012154996 \
-gcp 5810 4715 4.964899329091281 52.30945840890476 \
-gcp 211 4702 4.950969518209025 52.3094078596193 \
   output/downloads/DUIZ01488000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01488000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.950969518209025,52.3094078596193],[4.964899329091281,52.30945840890476],[4.964835266262354,52.316199012154996],[4.9509033415656525,52.31614845295515],[4.950969518209025,52.3094078596193]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01488000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01488000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01488000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01488000001-warped.tif

# ==============================================
# Name: DUIZ01504000002 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01504000002.jpg ]; then
  wget -O output/downloads/DUIZ01504000002.jpg "https://webservices.picturae.com/mediabank/media/efb55682-7ca7-6dc7-df9f-024fbeb63477/downloadoriginal/0b6d4b5e-ff2d-24a8-96a3-24fbb952b113?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 211 220 4.923110008818827 52.30930183834284 \
-gcp 5792 240 4.937039744390317 52.309355669428925 \
-gcp 5780 4640 4.9371080109907535 52.302615077482315 \
-gcp 198 4630 4.923180388457204 52.302561256950945 \
   output/downloads/DUIZ01504000002.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01504000002.vrt

echo '{"type":"Polygon","coordinates":[[[4.923180388457204,52.302561256950945],[4.9371080109907535,52.302615077482315],[4.937039744390317,52.309355669428925],[4.923110008818827,52.30930183834284],[4.923180388457204,52.302561256950945]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01504000002.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01504000002.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01504000002.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01504000002-warped.tif

# ==============================================
# Name: DUIZ01507000002 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01507000002.jpg ]; then
  wget -O output/downloads/DUIZ01507000002.jpg "https://webservices.picturae.com/mediabank/media/e21df06f-86c4-58ee-9960-57e4b2158016/downloadoriginal/f7aabf89-f26c-0ac5-f072-0cf5f31f9c07?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 227 237 4.937039744390317 52.309355669428925 \
-gcp 5810 227 4.950969518209025 52.3094078596193 \
-gcp 5822 4627 4.951035671751844 52.30266725743968 \
-gcp 237 4648 4.9371080109907535 52.302615077482315 \
   output/downloads/DUIZ01507000002.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01507000002.vrt

echo '{"type":"Polygon","coordinates":[[[4.9371080109907535,52.302615077482315],[4.951035671751844,52.30266725743968],[4.950969518209025,52.3094078596193],[4.937039744390317,52.309355669428925],[4.9371080109907535,52.302615077482315]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01507000002.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01507000002.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01507000002.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01507000002-warped.tif

# ==============================================
# Name: DUIZ01514000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01514000001.jpg ]; then
  wget -O output/downloads/DUIZ01514000001.jpg "https://webservices.picturae.com/mediabank/media/80ea732c-de74-6f9b-1ba5-385065513737/downloadoriginal/ebd950b4-5344-73bc-f5f8-9130deb366cb?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 218 180 4.950969518209025 52.3094078596193 \
-gcp 5807 232 4.964899329091281 52.30945840890476 \
-gcp 5760 4641 4.964963369557415 52.30271779681379 \
-gcp 177 4601 4.951035671751844 52.30266725743968 \
   output/downloads/DUIZ01514000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01514000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.951035671751844,52.30266725743968],[4.964963369557415,52.30271779681379],[4.964899329091281,52.30945840890476],[4.950969518209025,52.3094078596193],[4.951035671751844,52.30266725743968]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01514000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01514000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01514000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01514000001-warped.tif

# ==============================================
# Name: DUIZ01527000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01527000001.jpg ]; then
  wget -O output/downloads/DUIZ01527000001.jpg "https://webservices.picturae.com/mediabank/media/489af95c-1619-f7db-8cdc-0c8e1e1ae3cf/downloadoriginal/5baa6b52-803c-9bad-5857-2dfe0a164576?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 226 257 4.923180388457204 52.302561256950945 \
-gcp 5808 225 4.9371080109907535 52.302615077482315 \
-gcp 5840 4631 4.937176253765159 52.29587447673496 \
-gcp 249 4668 4.923250743532196 52.29582066675509 \
   output/downloads/DUIZ01527000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01527000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.923250743532196,52.29582066675509],[4.937176253765159,52.29587447673496],[4.9371080109907535,52.302615077482315],[4.923180388457204,52.302561256950945],[4.923250743532196,52.29582066675509]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01527000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01527000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01527000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01527000001-warped.tif

# ==============================================
# Name: DUIZ01530000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01530000001.jpg ]; then
  wget -O output/downloads/DUIZ01530000001.jpg "https://webservices.picturae.com/mediabank/media/665c33f9-8c69-0f95-0416-7c3179bd28be/downloadoriginal/ea6e57e4-08dd-f84b-031e-47e5274157c9?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 240 228 4.9371080109907535 52.302615077482315 \
-gcp 5828 243 4.951035671751844 52.30266725743968 \
-gcp 5820 4650 4.951101802206 52.295926646462355 \
-gcp 229 4643 4.937176253765159 52.29587447673496 \
   output/downloads/DUIZ01530000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01530000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.937176253765159,52.29587447673496],[4.951101802206,52.295926646462355],[4.951035671751844,52.30266725743968],[4.9371080109907535,52.302615077482315],[4.937176253765159,52.29587447673496]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01530000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01530000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01530000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01530000001-warped.tif

# ==============================================
# Name: DUIZ01536000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01536000001.jpg ]; then
  wget -O output/downloads/DUIZ01536000001.jpg "https://webservices.picturae.com/mediabank/media/12dae2fc-710e-6d1a-d58b-0f79e07b8244/downloadoriginal/594535b9-d1b7-367b-bd03-4b01a1c4d01d?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 218 250 4.951035671751844 52.30266725743968 \
-gcp 5804 223 4.964963369557415 52.30271779681379 \
-gcp 5831 4630 4.965027387672261 52.29597717592811 \
-gcp 239 4664 4.951101802206 52.295926646462355 \
   output/downloads/DUIZ01536000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01536000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.951101802206,52.295926646462355],[4.965027387672261,52.29597717592811],[4.964963369557415,52.30271779681379],[4.951035671751844,52.30266725743968],[4.951101802206,52.295926646462355]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01536000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01536000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01536000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01536000001-warped.tif

# ==============================================
# Name: DUIZ01546000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01546000001.jpg ]; then
  wget -O output/downloads/DUIZ01546000001.jpg "https://webservices.picturae.com/mediabank/media/e952255f-0ebc-9450-1137-a8f05eb12666/downloadoriginal/beb06dea-f93e-fbf5-6e2d-13ff8be7f752?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 220 439 4.881474453904751 52.295649395397135 \
-gcp 5787 464 4.895399842419596 52.29570812607624 \
-gcp 5770 4869 4.895474396009686 52.288967549183404 \
-gcp 197 4851 4.881551118995851 52.288908830016986 \
   output/downloads/DUIZ01546000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01546000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.881551118995851,52.288908830016986],[4.895474396009686,52.288967549183404],[4.895399842419596,52.29570812607624],[4.881474453904751,52.295649395397135],[4.881551118995851,52.288908830016986]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01546000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01546000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01546000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01546000001-warped.tif

# ==============================================
# Name: DUIZ01547000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01547000001.jpg ]; then
  wget -O output/downloads/DUIZ01547000001.jpg "https://webservices.picturae.com/mediabank/media/130ff7f5-2d08-d1fd-1501-4402fffb0325/downloadoriginal/7885c592-f8d4-3dce-0b58-dcfacab0e148?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 177 182 4.923250743532196 52.29582066675509 \
-gcp 5749 207 4.937176253765159 52.29587447673496 \
-gcp 5738 4622 4.937244472725795 52.28913386723286 \
-gcp 151 4607 4.923321074056445 52.289080067801294 \
   output/downloads/DUIZ01547000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01547000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.923321074056445,52.289080067801294],[4.937244472725795,52.28913386723286],[4.937176253765159,52.29587447673496],[4.923250743532196,52.29582066675509],[4.923321074056445,52.289080067801294]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01547000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01547000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01547000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01547000001-warped.tif

# ==============================================
# Name: DUIZ01548000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01548000001.jpg ]; then
  wget -O output/downloads/DUIZ01548000001.jpg "https://webservices.picturae.com/mediabank/media/a2cd0023-d0f5-2b46-7aba-408a73edec49/downloadoriginal/f38ada01-9938-1f23-8553-1fe737ff0709?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 345 385 4.937176253765159 52.29587447673496 \
-gcp 5934 380 4.951101802206 52.295926646462355 \
-gcp 5943 4788 4.951167909583366 52.28918602673341 \
-gcp 352 4802 4.937244472725795 52.28913386723286 \
   output/downloads/DUIZ01548000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01548000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.937244472725795,52.28913386723286],[4.951167909583366,52.28918602673341],[4.951101802206,52.295926646462355],[4.937176253765159,52.29587447673496],[4.937244472725795,52.28913386723286]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01548000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01548000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01548000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01548000001-warped.tif

# ==============================================
# Name: DUIZ01556000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01556000001.jpg ]; then
  wget -O output/downloads/DUIZ01556000001.jpg "https://webservices.picturae.com/mediabank/media/863662e2-f8be-3241-ec7b-50e0d3de76b2/downloadoriginal/597acfac-3909-19ba-86aa-03a0153e503c?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 234 227 4.951101802206 52.295926646462355 \
-gcp 5821 239 4.965027387672261 52.29597717592811 \
-gcp 5819 4645 4.965091383447318 52.28923654629382 \
-gcp 226 4642 4.951167909583366 52.28918602673341 \
   output/downloads/DUIZ01556000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01556000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.951167909583366,52.28918602673341],[4.965091383447318,52.28923654629382],[4.965027387672261,52.29597717592811],[4.951101802206,52.295926646462355],[4.951167909583366,52.28918602673341]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01556000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01556000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01556000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01556000001-warped.tif

# ==============================================
# Name: DUIZ01570000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01570000001.jpg ]; then
  wget -O output/downloads/DUIZ01570000001.jpg "https://webservices.picturae.com/mediabank/media/6ebcd56e-0471-5e82-d68c-884707f45817/downloadoriginal/f885a4d1-d046-cdfa-469f-e67d6ec517d5?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 219 237 4.937244472725795 52.28913386723286 \
-gcp 5810 227 4.951167909583366 52.28918602673341 \
-gcp 5816 4646 4.951233993895815 52.28244539829893 \
-gcp 225 4665 4.937312667884902 52.2823932490221 \
   output/downloads/DUIZ01570000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01570000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.937312667884902,52.2823932490221],[4.951233993895815,52.28244539829893],[4.951167909583366,52.28918602673341],[4.937244472725795,52.28913386723286],[4.937312667884902,52.2823932490221]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01570000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01570000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01570000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01570000001-warped.tif

# ==============================================
# Name: DUIZ01573000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01573000001.jpg ]; then
  wget -O output/downloads/DUIZ01573000001.jpg "https://webservices.picturae.com/mediabank/media/150f0280-ada4-5efb-e2d9-b8dc3010899a/downloadoriginal/55a7551e-af9f-fe07-fbae-609f82a10b84?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 196 229 4.951167909583366 52.28918602673341 \
-gcp 5781 224 4.965091383447318 52.28923654629382 \
-gcp 5784 4641 4.9651553568940745 52.28249590795697 \
-gcp 201 4653 4.951233993895815 52.28244539829893 \
   output/downloads/DUIZ01573000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01573000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.951233993895815,52.28244539829893],[4.9651553568940745,52.28249590795697],[4.965091383447318,52.28923654629382],[4.951167909583366,52.28918602673341],[4.951233993895815,52.28244539829893]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01573000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01573000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01573000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01573000001-warped.tif

# ==============================================
# Name: DUIZ00034000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00034000001.jpg ]; then
  wget -O output/downloads/DUIZ00034000001.jpg "https://webservices.picturae.com/mediabank/media/94f888de-95d9-07b5-7ccf-6083c35821de/downloadoriginal/60b7788e-5b33-96d4-6016-ffc0600f9ba5?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 203 321 4.8520815530316534 52.42359557998197 \
-gcp 5827 301 4.866047112601931 52.42365782273417 \
-gcp 5841 4725 4.866126414072906 52.41691744372867 \
-gcp 223 4748 4.852162980025028 52.41685521320238 \
   output/downloads/DUIZ00034000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00034000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.852162980025028,52.41685521320238],[4.866126414072906,52.41691744372867],[4.866047112601931,52.42365782273417],[4.8520815530316534,52.42359557998197],[4.852162980025028,52.41685521320238]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00034000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00034000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00034000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00034000001-warped.tif

# ==============================================
# Name: DUIZ00038000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00038000001.jpg ]; then
  wget -O output/downloads/DUIZ00038000001.jpg "https://webservices.picturae.com/mediabank/media/12a4f3b3-a2cb-a97f-e882-d78ad5fdd92e/downloadoriginal/3a62b0b4-f0e1-3729-9fb4-43b52b1d18fa?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 285 283 4.866047112601931 52.42365782273417 \
-gcp 5912 294 4.880012716726137 52.42371841915829 \
-gcp 5897 4730 4.880089892651724 52.41697802825018 \
-gcp 287 4727 4.866126414072906 52.41691744372867 \
   output/downloads/DUIZ00038000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00038000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866126414072906,52.41691744372867],[4.880089892651724,52.41697802825018],[4.880012716726137,52.42371841915829],[4.866047112601931,52.42365782273417],[4.866126414072906,52.41691744372867]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00038000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00038000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00038000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00038000001-warped.tif

# ==============================================
# Name: DUIZ00044000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00044000001.jpg ]; then
  wget -O output/downloads/DUIZ00044000001.jpg "https://webservices.picturae.com/mediabank/media/734a5908-44d4-3b49-bf57-fcfad535b051/downloadoriginal/57065658-5504-db78-2602-5fd2602f84e3?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 245 223 4.893978364210307 52.4237773692436 \
-gcp 5833 246 4.907944053860436 52.4238346729796 \
-gcp 5814 4668 4.90801697862873 52.41709425923615 \
-gcp 217 4650 4.8940534145681225 52.417036966756186 \
   output/downloads/DUIZ00044000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00044000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.8940534145681225,52.417036966756186],[4.90801697862873,52.41709425923615],[4.907944053860436,52.4238346729796],[4.893978364210307,52.4237773692436],[4.8940534145681225,52.417036966756186]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00044000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00044000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00044000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00044000001-warped.tif

# ==============================================
# Name: DUIZ00045000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00045000001.jpg ]; then
  wget -O output/downloads/DUIZ00045000001.jpg "https://webservices.picturae.com/mediabank/media/12a7798a-1285-83fe-5ef3-f6154c66a9bf/downloadoriginal/f62ab1fb-b7c2-116e-e3dd-67c3421a0180?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 307 287 4.907944053860436 52.4238346729796 \
-gcp 5890 317 4.921909784482511 52.42389033035608 \
-gcp 5864 4742 4.9219805836401385 52.41714990568 \
-gcp 274 4716 4.90801697862873 52.41709425923615 \
   output/downloads/DUIZ00045000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00045000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.90801697862873,52.41709425923615],[4.9219805836401385,52.41714990568],[4.921909784482511,52.42389033035608],[4.907944053860436,52.4238346729796],[4.90801697862873,52.41709425923615]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00045000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00045000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00045000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00045000001-warped.tif

# ==============================================
# Name: DUIZ00046000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00046000001.jpg ]; then
  wget -O output/downloads/DUIZ00046000001.jpg "https://webservices.picturae.com/mediabank/media/e13dbf58-ba46-6e44-50ec-9a29d62d4286/downloadoriginal/560f1df7-863b-45da-cf37-c112fe02c7c0?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 238 239 4.921909784482511 52.42389033035608 \
-gcp 5835 226 4.935875554882491 52.42394434136326 \
-gcp 5843 4651 4.935944228408924 52.41720390607777 \
-gcp 238 4666 4.9219805836401385 52.41714990568 \
   output/downloads/DUIZ00046000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00046000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.9219805836401385,52.41714990568],[4.935944228408924,52.41720390607777],[4.935875554882491,52.42394434136326],[4.921909784482511,52.42389033035608],[4.9219805836401385,52.41714990568]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00046000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00046000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00046000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00046000001-warped.tif

# ==============================================
# Name: DUIZ00048000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00048000001.jpg ]; then
  wget -O output/downloads/DUIZ00048000001.jpg "https://webservices.picturae.com/mediabank/media/3fc79a99-1a64-ccd5-794f-4b17dd8c4fe7/downloadoriginal/af25b606-58b0-7724-40c6-d57493c8c622?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 312 304 4.935875554882491 52.42394434136326 \
-gcp 5900 304 4.949841363866311 52.4239967059915 \
-gcp 5895 4727 4.949907911741642 52.41725626042002 \
-gcp 305 4730 4.935944228408924 52.41720390607777 \
   output/downloads/DUIZ00048000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00048000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.935944228408924,52.41720390607777],[4.949907911741642,52.41725626042002],[4.949841363866311,52.4239967059915],[4.935875554882491,52.42394434136326],[4.935944228408924,52.41720390607777]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00048000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00048000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00048000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00048000001-warped.tif

# ==============================================
# Name: DUIZ01607000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01607000001.jpg ]; then
  wget -O output/downloads/DUIZ01607000001.jpg "https://webservices.picturae.com/mediabank/media/71a0df18-db87-bc79-65b1-13a8c00077c9/downloadoriginal/52cb6cb1-d33c-726b-f01a-2ec1749650e2?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 172 310 4.82415057232863 52.42346615553766 \
-gcp 5783 298 4.838116039209246 52.42353169091268 \
-gcp 5802 4712 4.838199591701413 52.41679133668231 \
-gcp 185 4740 4.824236250295367 52.41672581417981 \
   output/downloads/DUIZ01607000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01607000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.824236250295367,52.41672581417981],[4.838199591701413,52.41679133668231],[4.838116039209246,52.42353169091268],[4.82415057232863,52.42346615553766],[4.824236250295367,52.41672581417981]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01607000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01607000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01607000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01607000001-warped.tif

# ==============================================
# Name: DUIZ01613000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01613000001.jpg ]; then
  wget -O output/downloads/DUIZ01613000001.jpg "https://webservices.picturae.com/mediabank/media/62e0193a-58d5-45c0-f9f8-f99da13a2759/downloadoriginal/4e6b3069-4c82-18cc-128d-5936235dc87c?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 292 256 4.810185153583696 52.42339897386856 \
-gcp 5883 262 4.82415057232863 52.42346615553766 \
-gcp 5881 4675 4.824236250295367 52.41672581417981 \
-gcp 285 4682 4.810272957000165 52.4166586457065 \
   output/downloads/DUIZ01613000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01613000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.810272957000165,52.4166586457065],[4.824236250295367,52.41672581417981],[4.82415057232863,52.42346615553766],[4.810185153583696,52.42339897386856],[4.810272957000165,52.4166586457065]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01613000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01613000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01613000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01613000001-warped.tif

# ==============================================
# Name: DUIZ01618000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01618000001.jpg ]; then
  wget -O output/downloads/DUIZ01618000001.jpg "https://webservices.picturae.com/mediabank/media/1887e89a-a82c-da59-b214-af552fe78c96/downloadoriginal/9b207382-6a61-34bf-b636-c37c695b6e82?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 194 262 4.796219784168305 52.423330145917255 \
-gcp 5810 260 4.810185153583696 52.42339897386856 \
-gcp 5822 4679 4.810272957000165 52.4166586457065 \
-gcp 197 4691 4.796309713009051 52.41658983127427 \
   output/downloads/DUIZ01618000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01618000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.796309713009051,52.41658983127427],[4.810272957000165,52.4166586457065],[4.810185153583696,52.42339897386856],[4.796219784168305,52.423330145917255],[4.796309713009051,52.41658983127427]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01618000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01618000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01618000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01618000001-warped.tif

# ==============================================
# Name: DUIZ01622000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01622000001.jpg ]; then
  wget -O output/downloads/DUIZ01622000001.jpg "https://webservices.picturae.com/mediabank/media/7b913a4c-1a00-ed37-bc61-ab65c70b3a36/downloadoriginal/2431662e-dfd4-508e-b06a-158e418f5646?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 205 272 4.782254465276297 52.42325967169598 \
-gcp 5819 282 4.796219784168305 52.423330145917255 \
-gcp 5816 4708 4.796309713009051 52.41658983127427 \
-gcp 192 4702 4.782346519515247 52.416519370895365 \
   output/downloads/DUIZ01622000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01622000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.782346519515247,52.416519370895365],[4.796309713009051,52.41658983127427],[4.796219784168305,52.423330145917255],[4.782254465276297,52.42325967169598],[4.782346519515247,52.416519370895365]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01622000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01622000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01622000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01622000001-warped.tif

# ==============================================
# Name: DUIZ01627000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01627000001.jpg ]; then
  wget -O output/downloads/DUIZ01627000001.jpg "https://webservices.picturae.com/mediabank/media/60e8caad-2b72-afa3-31b9-620f40231c92/downloadoriginal/ac99bd88-6772-390a-72a5-86258619843a?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 208 240 4.768289198101473 52.42318755121724 \
-gcp 5772 228 4.782254465276297 52.42325967169598 \
-gcp 5786 4627 4.782346519515247 52.416519370895365 \
-gcp 219 4648 4.768383377711946 52.416447264582274 \
   output/downloads/DUIZ01627000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01627000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.768383377711946,52.416447264582274],[4.782346519515247,52.416519370895365],[4.782254465276297,52.42325967169598],[4.768289198101473,52.42318755121724],[4.768383377711946,52.416447264582274]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01627000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01627000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01627000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01627000001-warped.tif

# ==============================================
# Name: DUIZ01632000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01632000001.jpg ]; then
  wget -O output/downloads/DUIZ01632000001.jpg "https://webservices.picturae.com/mediabank/media/a2d5a6f0-b1ea-44f1-ce4f-645153ac3c7b/downloadoriginal/ba72d13f-dfa2-9a61-9a50-84f02bd922fe?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 230 226 4.754323983837616 52.423113784493765 \
-gcp 5783 212 4.768289198101473 52.42318755121724 \
-gcp 5804 4611 4.768383377711946 52.416447264582274 \
-gcp 237 4635 4.754420288792304 52.41637351234773 \
   output/downloads/DUIZ01632000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01632000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.754420288792304,52.41637351234773],[4.768383377711946,52.416447264582274],[4.768289198101473,52.42318755121724],[4.754323983837616,52.423113784493765],[4.754420288792304,52.41637351234773]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01632000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01632000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01632000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01632000001-warped.tif

# ==============================================
# Name: DUIZ01633000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01633000001.jpg ]; then
  wget -O output/downloads/DUIZ01633000001.jpg "https://webservices.picturae.com/mediabank/media/935fff35-7245-b43c-9355-ccb9462f4ae9/downloadoriginal/a41f06b2-c86f-b394-be0a-857c84584ff9?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 220 236 4.740358823678468 52.42303837153875 \
-gcp 5771 225 4.754323983837616 52.423113784493765 \
-gcp 5788 4623 4.754420288792304 52.41637351234773 \
-gcp 222 4644 4.740457253949458 52.41629811420484 \
   output/downloads/DUIZ01633000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01633000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.740457253949458,52.41629811420484],[4.754420288792304,52.41637351234773],[4.754323983837616,52.423113784493765],[4.740358823678468,52.42303837153875],[4.740457253949458,52.41629811420484]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01633000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01633000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01633000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01633000001-warped.tif

# ==============================================
# Name: DUIZ01591000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01591000001.jpg ]; then
  wget -O output/downloads/DUIZ01591000001.jpg "https://webservices.picturae.com/mediabank/media/4304815b-48c2-1d01-7183-043ac5867a82/downloadoriginal/1c41fb56-c8c6-ee1a-a035-878d6782a630?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 199 208 4.796129823837916 52.43007045089359 \
-gcp 5787 198 4.810097319421666 52.43013929236811 \
-gcp 5802 4613 4.810185153583696 52.42339897386856 \
-gcp 203 4633 4.796219784168305 52.423330145917255 \
   output/downloads/DUIZ01591000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01591000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.796219784168305,52.423330145917255],[4.810185153583696,52.42339897386856],[4.810097319421666,52.43013929236811],[4.796129823837916,52.43007045089359],[4.796219784168305,52.423330145917255]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01591000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01591000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01591000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01591000001-warped.tif

# ==============================================
# Name: DUIZ01594000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01594000001.jpg ]; then
  wget -O output/downloads/DUIZ01594000001.jpg "https://webservices.picturae.com/mediabank/media/bc67ebd2-ddd3-f1ec-cad9-0b6608dc88ed/downloadoriginal/fe003a57-aecb-304e-d5ac-3d9fde2c70ab?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 217 194 4.7821623788036405 52.42999996282575 \
-gcp 5806 213 4.796129823837916 52.43007045089359 \
-gcp 5801 4627 4.796219784168305 52.423330145917255 \
-gcp 196 4622 4.782254465276297 52.42325967169598 \
   output/downloads/DUIZ01594000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01594000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.782254465276297,52.42325967169598],[4.796219784168305,52.423330145917255],[4.796129823837916,52.43007045089359],[4.7821623788036405,52.42999996282575],[4.782254465276297,52.42325967169598]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01594000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01594000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01594000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01594000001-warped.tif

# ==============================================
# Name: DUIZ01597000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01597000001.jpg ]; then
  wget -O output/downloads/DUIZ01597000001.jpg "https://webservices.picturae.com/mediabank/media/9b922661-8088-cc03-28b6-4a004ae64161/downloadoriginal/10fa9758-b3db-b699-2102-4b6777cd132b?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 210 209 4.768194985513255 52.42992782817704 \
-gcp 5791 203 4.7821623788036405 52.42999996282575 \
-gcp 5801 4612 4.782254465276297 52.42325967169598 \
-gcp 211 4630 4.768289198101473 52.42318755121724 \
   output/downloads/DUIZ01597000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01597000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.768289198101473,52.42318755121724],[4.782254465276297,52.42325967169598],[4.7821623788036405,52.42999996282575],[4.768194985513255,52.42992782817704],[4.768289198101473,52.42318755121724]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01597000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01597000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01597000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01597000001-warped.tif

# ==============================================
# Name: DUIZ01600000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01600000001.jpg ]; then
  wget -O output/downloads/DUIZ01600000001.jpg "https://webservices.picturae.com/mediabank/media/67a06244-6ead-bad8-c1f3-cb5dd7d5f5bd/downloadoriginal/b327e9ff-f954-97bd-18a4-ba51329b30d0?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 189 201 4.754227645161152 52.42985404696034 \
-gcp 5770 192 4.768194985513255 52.42992782817704 \
-gcp 5784 4608 4.768289198101473 52.42318755121724 \
-gcp 194 4628 4.754323983837616 52.423113784493765 \
   output/downloads/DUIZ01600000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01600000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.754323983837616,52.423113784493765],[4.768289198101473,52.42318755121724],[4.768194985513255,52.42992782817704],[4.754227645161152,52.42985404696034],[4.754323983837616,52.423113784493765]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01600000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01600000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01600000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01600000001-warped.tif

# ==============================================
# Name: DUIZ01601000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01601000001.jpg ]; then
  wget -O output/downloads/DUIZ01601000001.jpg "https://webservices.picturae.com/mediabank/media/3f11914c-6a57-898b-b1e4-eac09b369814/downloadoriginal/ce922339-4ab3-8084-b680-86e42cbd0f49?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 202 188 4.740260358941702 52.42977861918863 \
-gcp 5800 211 4.754227645161152 52.42985404696034 \
-gcp 5797 4627 4.754323983837616 52.423113784493765 \
-gcp 199 4626 4.740358823678468 52.42303837153875 \
   output/downloads/DUIZ01601000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01601000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.740358823678468,52.42303837153875],[4.754323983837616,52.423113784493765],[4.754227645161152,52.42985404696034],[4.740260358941702,52.42977861918863],[4.740358823678468,52.42303837153875]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01601000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01601000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01601000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01601000001-warped.tif

# ==============================================
# Name: DUIZ00016000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00016000001.jpg ]; then
  wget -O output/downloads/DUIZ00016000001.jpg "https://webservices.picturae.com/mediabank/media/d520e1a4-0aa7-7168-700b-cb2f6672e009/downloadoriginal/db8c3f76-b487-b1a7-6108-b7f15be23631?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 191 201 4.85200009752506 52.43033593711081 \
-gcp 5781 181 4.865967783361888 52.43039819209267 \
-gcp 5796 4603 4.866047112601931 52.42365782273417 \
-gcp 201 4626 4.8520815530316534 52.42359557998197 \
   output/downloads/DUIZ00016000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00016000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.8520815530316534,52.42359557998197],[4.866047112601931,52.42365782273417],[4.865967783361888,52.43039819209267],[4.85200009752506,52.43033593711081],[4.8520815530316534,52.42359557998197]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00016000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00016000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00016000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00016000001-warped.tif

# ==============================================
# Name: DUIZ00020000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00020000001.jpg ]; then
  wget -O output/downloads/DUIZ00020000001.jpg "https://webservices.picturae.com/mediabank/media/223a065b-f5a0-4633-ffa6-1af6c84bc110/downloadoriginal/5d219a56-a44c-383c-27a4-83a55beed59d?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 211 196 4.865967783361888 52.43039819209267 \
-gcp 5809 206 4.879935513775649 52.43045880042305 \
-gcp 5798 4630 4.880012716726137 52.42371841915829 \
-gcp 197 4621 4.866047112601931 52.42365782273417 \
   output/downloads/DUIZ00020000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00020000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866047112601931,52.42365782273417],[4.880012716726137,52.42371841915829],[4.879935513775649,52.43045880042305],[4.865967783361888,52.43039819209267],[4.866047112601931,52.42365782273417]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00020000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00020000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00020000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00020000001-warped.tif

# ==============================================
# Name: DUIZ00022000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00022000001.jpg ]; then
  wget -O output/downloads/DUIZ00022000001.jpg "https://webservices.picturae.com/mediabank/media/48215066-54c5-e1f2-6e45-f1f27258af24/downloadoriginal/6570629b-864d-132b-eafe-37a9039256b3?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 218 194 4.879935513775649 52.43045880042305 \
-gcp 5814 219 4.893903287571759 52.43051776209118 \
-gcp 5785 4637 4.893978364210307 52.4237773692436 \
-gcp 195 4614 4.880012716726137 52.42371841915829 \
   output/downloads/DUIZ00022000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00022000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880012716726137,52.42371841915829],[4.893978364210307,52.4237773692436],[4.893903287571759,52.43051776209118],[4.879935513775649,52.43045880042305],[4.880012716726137,52.42371841915829]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00022000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00022000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00022000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00022000001-warped.tif

# ==============================================
# Name: DUIZ00023000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00023000001.jpg ]; then
  wget -O output/downloads/DUIZ00023000001.jpg "https://webservices.picturae.com/mediabank/media/32a56934-3fdf-0c50-ffaf-d1b77e2f7bc3/downloadoriginal/5cb5a73f-b0db-1eb1-68d2-71df62cded55?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 204 198 4.893903287571759 52.43051776209118 \
-gcp 5798 202 4.907871103555609 52.43057507708657 \
-gcp 5790 4623 4.907944053860436 52.4238346729796 \
-gcp 196 4621 4.893978364210307 52.4237773692436 \
   output/downloads/DUIZ00023000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00023000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.893978364210307,52.4237773692436],[4.907944053860436,52.4238346729796],[4.907871103555609,52.43057507708657],[4.893903287571759,52.43051776209118],[4.893978364210307,52.4237773692436]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00023000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00023000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00023000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00023000001-warped.tif

# ==============================================
# Name: DUIZ00024000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00024000001.jpg ]; then
  wget -O output/downloads/DUIZ00024000001.jpg "https://webservices.picturae.com/mediabank/media/2d814fe1-d854-4540-07c7-a6d434c4f1f6/downloadoriginal/9ec868ea-9d56-9f8a-a5b6-20ed86d770d7?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 201 185 4.907871103555609 52.43057507708657 \
-gcp 5786 192 4.9218389605325585 52.43063074539909 \
-gcp 5777 4613 4.921909784482511 52.42389033035608 \
-gcp 191 4607 4.907944053860436 52.4238346729796 \
   output/downloads/DUIZ00024000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00024000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.907944053860436,52.4238346729796],[4.921909784482511,52.42389033035608],[4.9218389605325585,52.43063074539909],[4.907871103555609,52.43057507708657],[4.907944053860436,52.4238346729796]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00024000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00024000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00024000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00024000001-warped.tif

# ==============================================
# Name: DUIZ00007000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00007000001.jpg ]; then
  wget -O output/downloads/DUIZ00007000001.jpg "https://webservices.picturae.com/mediabank/media/8b93a35d-0b90-1cc5-f3c9-284d6878757f/downloadoriginal/144f16d1-7bca-8608-25aa-ba5521f52842?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 199 392 4.851918613490529 52.4370762845429 \
-gcp 5814 393 4.865888426338436 52.43713855175811 \
-gcp 5813 4818 4.865967783361888 52.43039819209267 \
-gcp 194 4818 4.85200009752506 52.43033593711081 \
   output/downloads/DUIZ00007000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00007000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.85200009752506,52.43033593711081],[4.865967783361888,52.43039819209267],[4.865888426338436,52.43713855175811],[4.851918613490529,52.4370762845429],[4.85200009752506,52.43033593711081]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00007000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00007000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00007000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00007000001-warped.tif

# ==============================================
# Name: DUIZ00008000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00008000001.jpg ]; then
  wget -O output/downloads/DUIZ00008000001.jpg "https://webservices.picturae.com/mediabank/media/dde34097-7a84-e48d-85ec-4a0efab7dace/downloadoriginal/f5620b5c-a87f-e7ad-d823-5e038b28646d?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 168 262 4.865888426338436 52.43713855175811 \
-gcp 5784 262 4.879858283786299 52.43719917199838 \
-gcp 5785 4686 4.879935513775649 52.43045880042305 \
-gcp 167 4689 4.865967783361888 52.43039819209267 \
   output/downloads/DUIZ00008000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00008000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.865967783361888,52.43039819209267],[4.879935513775649,52.43045880042305],[4.879858283786299,52.43719917199838],[4.865888426338436,52.43713855175811],[4.865967783361888,52.43039819209267]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00008000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00008000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00008000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00008000001-warped.tif

# ==============================================
# Name: DUIZ00009000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00009000001.jpg ]; then
  wget -O output/downloads/DUIZ00009000001.jpg "https://webservices.picturae.com/mediabank/media/78656f0b-9a27-36eb-87f8-eb6699b65459/downloadoriginal/44de903b-0447-f524-f743-dab798900f6f?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 180 267 4.893828184638917 52.43725814525283 \
-gcp 5788 199 4.907798127701063 52.4373154715111 \
-gcp 5840 4632 4.907871103555609 52.43057507708657 \
-gcp 233 4702 4.893903287571759 52.43051776209118 \
   output/downloads/DUIZ00009000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00009000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.893903287571759,52.43051776209118],[4.907871103555609,52.43057507708657],[4.907798127701063,52.4373154715111],[4.893828184638917,52.43725814525283],[4.893903287571759,52.43051776209118]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00009000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00009000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00009000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00009000001-warped.tif

# ==============================================
# Name: DUIZ00010000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00010000001.jpg ]; then
  wget -O output/downloads/DUIZ00010000001.jpg "https://webservices.picturae.com/mediabank/media/a992881d-ec74-a6fa-26c6-eb94be8f606c/downloadoriginal/0c2efade-5865-dce6-a0d9-437e4db5379b?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 218 315 4.907798127701063 52.4373154715111 \
-gcp 5833 325 4.921768111777484 52.43737115076295 \
-gcp 5823 4746 4.9218389605325585 52.43063074539909 \
-gcp 210 4740 4.907871103555609 52.43057507708657 \
   output/downloads/DUIZ00010000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00010000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.907871103555609,52.43057507708657],[4.9218389605325585,52.43063074539909],[4.921768111777484,52.43737115076295],[4.907798127701063,52.4373154715111],[4.907871103555609,52.43057507708657]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00010000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00010000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00010000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00010000001-warped.tif

# ==============================================
# Name: DUIZ00121000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00121000001.jpg ]; then
  wget -O output/downloads/DUIZ00121000001.jpg "https://webservices.picturae.com/mediabank/media/f79e0155-83ec-d59c-11d1-12a359505a98/downloadoriginal/932137fb-7074-92b4-7648-99ae5e96be68?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 200 212 5.0197268650919655 52.41749334098246 \
-gcp 5787 202 5.033690754744656 52.41753581880638 \
-gcp 5791 4601 5.033744529501284 52.41079530874487 \
-gcp 207 4618 5.019782764862298 52.41075283926437 \
   output/downloads/DUIZ00121000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00121000001.vrt

echo '{"type":"Polygon","coordinates":[[[5.019782764862298,52.41075283926437],[5.033744529501284,52.41079530874487],[5.033690754744656,52.41753581880638],[5.0197268650919655,52.41749334098246],[5.019782764862298,52.41075283926437]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00121000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00121000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00121000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00121000001-warped.tif

# ==============================================
# Name: DUIZ01639000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01639000001.jpg ]; then
  wget -O output/downloads/DUIZ01639000001.jpg "https://webservices.picturae.com/mediabank/media/002c0158-aaad-8428-f22c-8601e2890940/downloadoriginal/f3bfa70f-8e49-5d68-536e-5294937ac0c2?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 222 287 4.824236250295367 52.41672581417981 \
-gcp 5806 268 4.838199591701413 52.41679133668231 \
-gcp 5831 4665 4.838283114951327 52.410050972843436 \
-gcp 240 4695 4.8243218982761205 52.409985463209544 \
   output/downloads/DUIZ01639000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01639000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.8243218982761205,52.409985463209544],[4.838283114951327,52.410050972843436],[4.838199591701413,52.41679133668231],[4.824236250295367,52.41672581417981],[4.8243218982761205,52.409985463209544]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01639000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01639000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01639000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01639000001-warped.tif

# ==============================================
# Name: DUIZ01646000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01646000001.jpg ]; then
  wget -O output/downloads/DUIZ01646000001.jpg "https://webservices.picturae.com/mediabank/media/cedf4a40-f393-dba8-44d0-e75be8685663/downloadoriginal/e222fccf-9314-41be-d197-03bb0493e024?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 205 184 4.810272957000165 52.4166586457065 \
-gcp 5788 204 4.824236250295367 52.41672581417981 \
-gcp 5785 4600 4.8243218982761205 52.409985463209544 \
-gcp 192 4592 4.810360729686935 52.40991830792801 \
   output/downloads/DUIZ01646000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01646000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.810360729686935,52.40991830792801],[4.8243218982761205,52.409985463209544],[4.824236250295367,52.41672581417981],[4.810272957000165,52.4166586457065],[4.810360729686935,52.40991830792801]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01646000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01646000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01646000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01646000001-warped.tif

# ==============================================
# Name: DUIZ01652000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01652000001.jpg ]; then
  wget -O output/downloads/DUIZ01652000001.jpg "https://webservices.picturae.com/mediabank/media/0bfb6067-c725-66ba-828b-c168e152616b/downloadoriginal/139aac27-5041-34ef-a367-dc044ab57305?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 232 208 4.796309713009051 52.41658983127427 \
-gcp 5789 245 4.810272957000165 52.4166586457065 \
-gcp 5768 4644 4.810360729686935 52.40991830792801 \
-gcp 190 4615 4.796399610376403 52.40984950701079 \
   output/downloads/DUIZ01652000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01652000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.796399610376403,52.40984950701079],[4.810360729686935,52.40991830792801],[4.810272957000165,52.4166586457065],[4.796309713009051,52.41658983127427],[4.796399610376403,52.40984950701079]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01652000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01652000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01652000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01652000001-warped.tif

# ==============================================
# Name: DUIZ01657000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01657000001.jpg ]; then
  wget -O output/downloads/DUIZ01657000001.jpg "https://webservices.picturae.com/mediabank/media/9bdfa2b3-d4f0-37f4-d548-360775a4df91/downloadoriginal/8b9594e3-f93b-dfbc-956a-05f65a2d4874?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 228 207 4.782346519515247 52.416519370895365 \
-gcp 5775 268 4.796309713009051 52.41658983127427 \
-gcp 5741 4668 4.796399610376403 52.40984950701079 \
-gcp 172 4615 4.782438541537126 52.409779060470036 \
   output/downloads/DUIZ01657000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01657000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.782438541537126,52.409779060470036],[4.796399610376403,52.40984950701079],[4.796309713009051,52.41658983127427],[4.782346519515247,52.416519370895365],[4.782438541537126,52.409779060470036]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01657000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01657000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01657000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01657000001-warped.tif

# ==============================================
# Name: DUIZ01662000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01662000001.jpg ]; then
  wget -O output/downloads/DUIZ01662000001.jpg "https://webservices.picturae.com/mediabank/media/4f6dd83f-9470-c208-a8f0-eb2630ef0e5a/downloadoriginal/0b65d415-a7ea-0d4f-07d5-6f40ffacd3e9?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 247 196 4.768383377711946 52.416447264582274 \
-gcp 5815 221 4.782346519515247 52.416519370895365 \
-gcp 5809 4631 4.782438541537126 52.409779060470036 \
-gcp 222 4616 4.7684775243616855 52.40970696831823 \
   output/downloads/DUIZ01662000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01662000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.7684775243616855,52.40970696831823],[4.782438541537126,52.409779060470036],[4.782346519515247,52.416519370895365],[4.768383377711946,52.416447264582274],[4.7684775243616855,52.40970696831823]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01662000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01662000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01662000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01662000001-warped.tif

# ==============================================
# Name: DUIZ01665000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01665000001.jpg ]; then
  wget -O output/downloads/DUIZ01665000001.jpg "https://webservices.picturae.com/mediabank/media/1656682d-9b7c-18d6-4122-2b3f5b4e731b/downloadoriginal/d9a39fa8-33ef-94f5-b3de-26e2a86d13e3?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 238 224 4.754420288792304 52.41637351234773 \
-gcp 5806 236 4.768383377711946 52.416447264582274 \
-gcp 5806 4646 4.7684775243616855 52.40970696831823 \
-gcp 224 4642 4.754516560042619 52.409633230568176 \
   output/downloads/DUIZ01665000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01665000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.754516560042619,52.409633230568176],[4.7684775243616855,52.40970696831823],[4.768383377711946,52.416447264582274],[4.754420288792304,52.41637351234773],[4.754516560042619,52.409633230568176]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01665000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01665000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01665000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01665000001-warped.tif

# ==============================================
# Name: DUIZ00188000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00188000001.jpg ]; then
  wget -O output/downloads/DUIZ00188000001.jpg "https://webservices.picturae.com/mediabank/media/1d5ad8aa-e224-f3a3-e5d5-5467d2972138/downloadoriginal/1c612c9e-3ba7-643a-f791-efa9f4bd18ac?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 200 197 4.963936032101777 52.4105665035855 \
-gcp 5796 199 4.97789766403672 52.41061555615255 \
-gcp 5789 4606 4.977959916955639 52.403875071875596 \
-gcp 195 4604 4.964000409222395 52.40382602894206 \
   output/downloads/DUIZ00188000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00188000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.964000409222395,52.40382602894206],[4.977959916955639,52.403875071875596],[4.97789766403672,52.41061555615255],[4.963936032101777,52.4105665035855],[4.964000409222395,52.40382602894206]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00188000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00188000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00188000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00188000001-warped.tif

# ==============================================
# Name: DUIZ00193000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00193000001.jpg ]; then
  wget -O output/downloads/DUIZ00193000001.jpg "https://webservices.picturae.com/mediabank/media/66d7477b-07cd-0a25-6d30-88a90c355c07/downloadoriginal/fd2fd6d3-92c5-c77c-fab6-a8467cbd172f?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 166 327 5.019782764862298 52.41075283926437 \
-gcp 5801 276 5.033744529501284 52.41079530874487 \
-gcp 5841 4704 5.033798285439173 52.4040547891654 \
-gcp 206 4761 5.019838645070346 52.404012328025836 \
   output/downloads/DUIZ00193000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00193000001.vrt

echo '{"type":"Polygon","coordinates":[[[5.019838645070346,52.404012328025836],[5.033798285439173,52.4040547891654],[5.033744529501284,52.41079530874487],[5.019782764862298,52.41075283926437],[5.019838645070346,52.404012328025836]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00193000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00193000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00193000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00193000001-warped.tif

# ==============================================
# Name: DUIZ01671000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01671000001.jpg ]; then
  wget -O output/downloads/DUIZ01671000001.jpg "https://webservices.picturae.com/mediabank/media/73eb6699-c287-3885-49eb-f6649095b7e0/downloadoriginal/549a5332-fde1-aeb7-3e17-7b94cce5513f?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 211 404 4.8243218982761205 52.409985463209544 \
-gcp 5802 379 4.838283114951327 52.410050972843436 \
-gcp 5828 4803 4.838366608974078 52.403310599442165 \
-gcp 231 4835 4.824407516286362 52.40324510267297 \
   output/downloads/DUIZ01671000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01671000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.824407516286362,52.40324510267297],[4.838366608974078,52.403310599442165],[4.838283114951327,52.410050972843436],[4.8243218982761205,52.409985463209544],[4.824407516286362,52.40324510267297]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01671000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01671000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01671000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01671000001-warped.tif

# ==============================================
# Name: DUIZ01674000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01674000001.jpg ]; then
  wget -O output/downloads/DUIZ01674000001.jpg "https://webservices.picturae.com/mediabank/media/410319c8-ef2e-c8ee-8b47-a81ea7a78a44/downloadoriginal/97114e20-f49d-dcb2-52eb-877b5dc1dd7e?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 215 419 4.810360729686935 52.40991830792801 \
-gcp 5807 425 4.8243218982761205 52.409985463209544 \
-gcp 5809 4852 4.824407516286362 52.40324510267297 \
-gcp 211 4852 4.8104484716598614 52.40317796057921 \
   output/downloads/DUIZ01674000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01674000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.8104484716598614,52.40317796057921],[4.824407516286362,52.40324510267297],[4.8243218982761205,52.409985463209544],[4.810360729686935,52.40991830792801],[4.8104484716598614,52.40317796057921]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01674000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01674000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01674000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01674000001-warped.tif

# ==============================================
# Name: DUIZ01680000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01680000001.jpg ]; then
  wget -O output/downloads/DUIZ01680000001.jpg "https://webservices.picturae.com/mediabank/media/4735192f-65ba-9d50-789c-18ecd3b8bede/downloadoriginal/a77cdda8-90ab-ae07-698d-45d8a2e28fd9?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 236 278 4.796399610376403 52.40984950701079 \
-gcp 5823 266 4.810360729686935 52.40991830792801 \
-gcp 5829 4671 4.8104484716598614 52.40317796057921 \
-gcp 243 4692 4.796489476286598 52.40310917317283 \
   output/downloads/DUIZ01680000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01680000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.796489476286598,52.40310917317283],[4.8104484716598614,52.40317796057921],[4.810360729686935,52.40991830792801],[4.796399610376403,52.40984950701079],[4.796489476286598,52.40310917317283]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01680000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01680000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01680000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01680000001-warped.tif

# ==============================================
# Name: DUIZ01683000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01683000001.jpg ]; then
  wget -O output/downloads/DUIZ01683000001.jpg "https://webservices.picturae.com/mediabank/media/4edc697e-6112-7aa3-0ce6-43e3ee28ea95/downloadoriginal/a334e8c9-01ff-6c31-5945-bfcfb30029a5?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 229 216 4.782438541537126 52.409779060470036 \
-gcp 5799 232 4.796399610376403 52.40984950701079 \
-gcp 5795 4641 4.796489476286598 52.40310917317283 \
-gcp 214 4635 4.782530531358556 52.403038740466016 \
   output/downloads/DUIZ01683000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01683000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.782530531358556,52.403038740466016],[4.796489476286598,52.40310917317283],[4.796399610376403,52.40984950701079],[4.782438541537126,52.409779060470036],[4.782530531358556,52.403038740466016]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01683000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01683000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01683000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01683000001-warped.tif

# ==============================================
# Name: DUIZ01687000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01687000001.jpg ]; then
  wget -O output/downloads/DUIZ01687000001.jpg "https://webservices.picturae.com/mediabank/media/d2d1e41a-531d-6131-7e84-3421b12b68b0/downloadoriginal/579744e0-4a47-a2d7-6901-a52d4d643111?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 228 217 4.7684775243616855 52.40970696831823 \
-gcp 5802 234 4.782438541537126 52.409779060470036 \
-gcp 5798 4642 4.782530531358556 52.403038740466016 \
-gcp 213 4635 4.768571638067695 52.40296666247126 \
   output/downloads/DUIZ01687000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01687000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.768571638067695,52.40296666247126],[4.782530531358556,52.403038740466016],[4.782438541537126,52.409779060470036],[4.7684775243616855,52.40970696831823],[4.768571638067695,52.40296666247126]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01687000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01687000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01687000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01687000001-warped.tif

# ==============================================
# Name: DUIZ00266000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00266000001.jpg ]; then
  wget -O output/downloads/DUIZ00266000001.jpg "https://webservices.picturae.com/mediabank/media/ce8500d0-e4d6-13d2-1443-474edb90ae07/downloadoriginal/48ad11b3-b369-a875-5f00-0acbc9355b24?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 400 422 4.964000409222395 52.40382602894206 \
-gcp 7769 395 4.977959916955639 52.403875071875596 \
-gcp 7800 6232 4.978022148092955 52.39713457811604 \
-gcp 409 6272 4.964064763818304 52.397085544813 \
   output/downloads/DUIZ00266000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00266000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.964064763818304,52.397085544813],[4.978022148092955,52.39713457811604],[4.977959916955639,52.403875071875596],[4.964000409222395,52.40382602894206],[4.964064763818304,52.397085544813]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00266000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00266000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00266000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00266000001-warped.tif

# ==============================================
# Name: DUIZ00270000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00270000001.jpg ]; then
  wget -O output/downloads/DUIZ00270000001.jpg "https://webservices.picturae.com/mediabank/media/5c95bd7a-3afc-187d-23fe-687078b68048/downloadoriginal/82343882-8115-69ad-c90b-4a73fb1d1284?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 392 384 5.005879036071923 52.403968221425735 \
-gcp 7754 377 5.019838645070346 52.404012328025836 \
-gcp 7776 6206 5.0198945057261986 52.397271807312876 \
-gcp 394 6229 5.005937020238597 52.3972277093742 \
   output/downloads/DUIZ00270000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00270000001.vrt

echo '{"type":"Polygon","coordinates":[[[5.005937020238597,52.3972277093742],[5.0198945057261986,52.397271807312876],[5.019838645070346,52.404012328025836],[5.005879036071923,52.403968221425735],[5.005937020238597,52.3972277093742]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00270000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00270000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00270000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00270000001-warped.tif

# ==============================================
# Name: DUIZ00271000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00271000001.jpg ]; then
  wget -O output/downloads/DUIZ00271000001.jpg "https://webservices.picturae.com/mediabank/media/62f1dd32-da09-9f20-66f5-e5d36239edc6/downloadoriginal/ec160f02-1519-3997-bf62-32f233e83d76?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 387 400 5.019838645070346 52.404012328025836 \
-gcp 7758 392 5.033798285439173 52.4040547891654 \
-gcp 7774 6232 5.033852022568025 52.397314260114115 \
-gcp 387 6249 5.0198945057261986 52.397271807312876 \
   output/downloads/DUIZ00271000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00271000001.vrt

echo '{"type":"Polygon","coordinates":[[[5.0198945057261986,52.397271807312876],[5.033852022568025,52.397314260114115],[5.033798285439173,52.4040547891654],[5.019838645070346,52.404012328025836],[5.0198945057261986,52.397271807312876]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00271000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00271000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00271000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00271000001-warped.tif

# ==============================================
# Name: DUIZ00272000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00272000001.jpg ]; then
  wget -O output/downloads/DUIZ00272000001.jpg "https://webservices.picturae.com/mediabank/media/974286a2-e7cf-f706-ec9d-25746a8be6bc/downloadoriginal/248ceac7-7a25-c996-235b-b14d1bb3f698?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 392 387 5.033798285439173 52.4040547891654 \
-gcp 7760 389 5.047757955986052 52.40409560483696 \
-gcp 7762 6225 5.047809569572338 52.39735506777031 \
-gcp 381 6234 5.033852022568025 52.397314260114115 \
   output/downloads/DUIZ00272000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00272000001.vrt

echo '{"type":"Polygon","coordinates":[[[5.033852022568025,52.397314260114115],[5.047809569572338,52.39735506777031],[5.047757955986052,52.40409560483696],[5.033798285439173,52.4040547891654],[5.033852022568025,52.397314260114115]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00272000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00272000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00272000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00272000001-warped.tif

# ==============================================
# Name: DUIZ01697000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01697000001.jpg ]; then
  wget -O output/downloads/DUIZ01697000001.jpg "https://webservices.picturae.com/mediabank/media/24f3712f-3d68-2f53-553f-6af86f48c678/downloadoriginal/4a698010-ca3c-8ad4-9784-0c90eba5bf49?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 179 320 4.824407516286362 52.40324510267297 \
-gcp 5776 276 4.838366608974078 52.403310599442165 \
-gcp 5821 4685 4.838450073784738 52.39657021652456 \
-gcp 217 4740 4.824493104341552 52.39650473261612 \
   output/downloads/DUIZ01697000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01697000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.824493104341552,52.39650473261612],[4.838450073784738,52.39657021652456],[4.838366608974078,52.403310599442165],[4.824407516286362,52.40324510267297],[4.824493104341552,52.39650473261612]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01697000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01697000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01697000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01697000001-warped.tif

# ==============================================
# Name: DUIZ01703000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01703000001.jpg ]; then
  wget -O output/downloads/DUIZ01703000001.jpg "https://webservices.picturae.com/mediabank/media/284368fc-2fb7-d5d3-6570-18ad247054af/downloadoriginal/09e37b40-64c5-f0d5-452e-4246489a09d9?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 271 226 4.8104484716598614 52.40317796057921 \
-gcp 5862 229 4.824407516286362 52.40324510267297 \
-gcp 5873 4651 4.824493104341552 52.39650473261612 \
-gcp 271 4662 4.810536182934792 52.396437603706154 \
   output/downloads/DUIZ01703000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01703000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.810536182934792,52.396437603706154],[4.824493104341552,52.39650473261612],[4.824407516286362,52.40324510267297],[4.8104484716598614,52.40317796057921],[4.810536182934792,52.396437603706154]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01703000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01703000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01703000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01703000001-warped.tif

# ==============================================
# Name: DUIZ01709000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01709000001.jpg ]; then
  wget -O output/downloads/DUIZ01709000001.jpg "https://webservices.picturae.com/mediabank/media/1f51089f-476e-489e-590e-0d2baa364380/downloadoriginal/fae18c4e-ac44-ccc8-4e2f-501173258c09?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 233 232 4.796489476286598 52.40310917317283 \
-gcp 5813 240 4.8104484716598614 52.40317796057921 \
-gcp 5812 4649 4.810536182934792 52.396437603706154 \
-gcp 218 4652 4.796579310755864 52.39636882980651 \
   output/downloads/DUIZ01709000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01709000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.796579310755864,52.39636882980651],[4.810536182934792,52.396437603706154],[4.8104484716598614,52.40317796057921],[4.796489476286598,52.40310917317283],[4.796579310755864,52.39636882980651]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01709000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01709000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01709000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01709000001-warped.tif

# ==============================================
# Name: DUIZ01713000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01713000001.jpg ]; then
  wget -O output/downloads/DUIZ01713000001.jpg "https://webservices.picturae.com/mediabank/media/07efa779-9d4b-ee6d-ebc1-3095fc550588/downloadoriginal/255ce2e2-007c-2d5f-2871-ebfb8dfd2b6c?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 228 206 4.782530531358556 52.403038740466016 \
-gcp 5809 247 4.796489476286598 52.40310917317283 \
-gcp 5778 4657 4.796579310755864 52.39636882980651 \
-gcp 186 4625 4.782622488996143 52.396298410929425 \
   output/downloads/DUIZ01713000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01713000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.782622488996143,52.396298410929425],[4.796579310755864,52.39636882980651],[4.796489476286598,52.40310917317283],[4.782530531358556,52.403038740466016],[4.782622488996143,52.396298410929425]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01713000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01713000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01713000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01713000001-warped.tif

# ==============================================
# Name: DUIZ01716000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01716000001.jpg ]; then
  wget -O output/downloads/DUIZ01716000001.jpg "https://webservices.picturae.com/mediabank/media/d724bec6-04eb-7bc0-c0f4-12cd5eccaf10/downloadoriginal/8238b949-88b2-7b28-1383-476c14f08201?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 223 223 4.768571638067695 52.40296666247126 \
-gcp 5794 222 4.782530531358556 52.403038740466016 \
-gcp 5802 4632 4.782622488996143 52.396298410929425 \
-gcp 221 4641 4.768665718846976 52.39622634708732 \
   output/downloads/DUIZ01716000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01716000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.768665718846976,52.39622634708732],[4.782622488996143,52.396298410929425],[4.782530531358556,52.403038740466016],[4.768571638067695,52.40296666247126],[4.768665718846976,52.39622634708732]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01716000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01716000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01716000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01716000001-warped.tif

# ==============================================
# Name: DUIZ01719000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01719000001.jpg ]; then
  wget -O output/downloads/DUIZ01719000001.jpg "https://webservices.picturae.com/mediabank/media/169fb695-1500-9b8a-3647-631d94b0ac6f/downloadoriginal/a49ddd78-5706-a8c0-1541-b41da294febe?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 228 236 4.754612797605949 52.402892939201266 \
-gcp 5797 223 4.768571638067695 52.40296666247126 \
-gcp 5817 4630 4.768665718846976 52.39622634708732 \
-gcp 232 4653 4.7547090014996725 52.39615263829305 \
   output/downloads/DUIZ01719000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01719000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.7547090014996725,52.39615263829305],[4.768665718846976,52.39622634708732],[4.768571638067695,52.40296666247126],[4.754612797605949,52.402892939201266],[4.7547090014996725,52.39615263829305]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01719000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01719000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01719000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01719000001-warped.tif

# ==============================================
# Name: DUIZ00362000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00362000001.jpg ]; then
  wget -O output/downloads/DUIZ00362000001.jpg "https://webservices.picturae.com/mediabank/media/30145daa-a178-104f-0e92-24253257835b/downloadoriginal/33c8a3ce-b643-37b4-5001-e20574645120?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 397 401 4.964064763818304 52.397085544813 \
-gcp 7764 387 4.978022148092955 52.39713457811604 \
-gcp 7788 6226 4.978084357459903 52.390394074919875 \
-gcp 404 6252 4.964129095901115 52.39034505124449 \
   output/downloads/DUIZ00362000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00362000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.964129095901115,52.39034505124449],[4.978084357459903,52.390394074919875],[4.978022148092955,52.39713457811604],[4.964064763818304,52.397085544813],[4.964129095901115,52.39034505124449]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00362000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00362000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00362000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00362000001-warped.tif

# ==============================================
# Name: DUIZ00370000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00370000001.jpg ]; then
  wget -O output/downloads/DUIZ00370000001.jpg "https://webservices.picturae.com/mediabank/media/9ba00310-8557-8bcc-9e4c-af464e461f50/downloadoriginal/e696665b-8f3d-bb3f-b18e-500d1fb1ca8e?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 347 390 4.99197956729695 52.39718196630589 \
-gcp 7731 340 5.005937020238597 52.3972277093742 \
-gcp 7775 6180 5.005994984120398 52.3904871878916 \
-gcp 378 6240 4.992039653930022 52.39044145380502 \
   output/downloads/DUIZ00370000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00370000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.992039653930022,52.39044145380502],[5.005994984120398,52.3904871878916],[5.005937020238597,52.3972277093742],[4.99197956729695,52.39718196630589],[4.992039653930022,52.39044145380502]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00370000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00370000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00370000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00370000001-warped.tif

# ==============================================
# Name: DUIZ00372000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00372000001.jpg ]; then
  wget -O output/downloads/DUIZ00372000001.jpg "https://webservices.picturae.com/mediabank/media/a246a50c-733f-cbca-295a-57e750000a5f/downloadoriginal/448c4094-6efc-16a4-9468-06e48202ac3b?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 358 356 5.005937020238597 52.3972277093742 \
-gcp 7730 352 5.0198945057261986 52.397271807312876 \
-gcp 7743 6190 5.019950346839943 52.390531277171554 \
-gcp 352 6206 5.005994984120398 52.3904871878916 \
   output/downloads/DUIZ00372000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00372000001.vrt

echo '{"type":"Polygon","coordinates":[[[5.005994984120398,52.3904871878916],[5.019950346839943,52.390531277171554],[5.0198945057261986,52.397271807312876],[5.005937020238597,52.3972277093742],[5.005994984120398,52.3904871878916]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00372000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00372000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00372000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00372000001-warped.tif

# ==============================================
# Name: DUIZ00373000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00373000001.jpg ]; then
  wget -O output/downloads/DUIZ00373000001.jpg "https://webservices.picturae.com/mediabank/media/f9f0dd8c-4ec4-1656-41f7-1c674972c0b2/downloadoriginal/2cbfbf82-b29d-8fa9-6c57-6d0238d2cc78?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 385 406 5.0198945057261986 52.397271807312876 \
-gcp 7760 385 5.033852022568025 52.397314260114115 \
-gcp 7785 6227 5.033905740897545 52.39057372163694 \
-gcp 393 6259 5.019950346839943 52.390531277171554 \
   output/downloads/DUIZ00373000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00373000001.vrt

echo '{"type":"Polygon","coordinates":[[[5.019950346839943,52.390531277171554],[5.033905740897545,52.39057372163694],[5.033852022568025,52.397314260114115],[5.0198945057261986,52.397271807312876],[5.019950346839943,52.390531277171554]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00373000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00373000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00373000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00373000001-warped.tif

# ==============================================
# Name: DUIZ01726000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01726000001.jpg ]; then
  wget -O output/downloads/DUIZ01726000001.jpg "https://webservices.picturae.com/mediabank/media/c54a352a-067f-3927-c6c9-74ce1474a1e1/downloadoriginal/480bb213-16bf-ef2b-5cd1-3e3e490fe705?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 203 219 4.824493104341552 52.39650473261612 \
-gcp 5780 221 4.838450073784738 52.39657021652456 \
-gcp 5781 4631 4.838533509398376 52.38982982413665 \
-gcp 192 4639 4.824578662457136 52.38976435308507 \
   output/downloads/DUIZ01726000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01726000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.824578662457136,52.38976435308507],[4.838533509398376,52.38982982413665],[4.838450073784738,52.39657021652456],[4.824493104341552,52.39650473261612],[4.824578662457136,52.38976435308507]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01726000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01726000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01726000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01726000001-warped.tif

# ==============================================
# Name: DUIZ01733000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01733000001.jpg ]; then
  wget -O output/downloads/DUIZ01733000001.jpg "https://webservices.picturae.com/mediabank/media/8bc73a6e-1b00-42e2-2fae-1d86ac14db87/downloadoriginal/f39e6b7f-26cf-f6dd-dfd5-b9393114f85b?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 210 206 4.810536182934792 52.396437603706154 \
-gcp 5786 217 4.824493104341552 52.39650473261612 \
-gcp 5782 4629 4.824578662457136 52.38976435308507 \
-gcp 189 4627 4.810623863527553 52.38969723735486 \
   output/downloads/DUIZ01733000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01733000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.810623863527553,52.38969723735486],[4.824578662457136,52.38976435308507],[4.824493104341552,52.39650473261612],[4.810536182934792,52.396437603706154],[4.810623863527553,52.38969723735486]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01733000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01733000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01733000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01733000001-warped.tif

# ==============================================
# Name: DUIZ01740000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01740000001.jpg ]; then
  wget -O output/downloads/DUIZ01740000001.jpg "https://webservices.picturae.com/mediabank/media/c468fa9f-c70b-8768-dbfa-a6165323ac65/downloadoriginal/601ec452-2951-2fe9-c8e1-e558874b471e?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 203 157 4.796579310755864 52.39636882980651 \
-gcp 5773 178 4.810536182934792 52.396437603706154 \
-gcp 5765 4587 4.810623863527553 52.38969723735486 \
-gcp 182 4576 4.796669113800416 52.38962847695785 \
   output/downloads/DUIZ01740000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01740000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.796669113800416,52.38962847695785],[4.810623863527553,52.38969723735486],[4.810536182934792,52.396437603706154],[4.796579310755864,52.39636882980651],[4.796669113800416,52.38962847695785]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01740000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01740000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01740000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01740000001-warped.tif

# ==============================================
# Name: DUIZ01746000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01746000001.jpg ]; then
  wget -O output/downloads/DUIZ01746000001.jpg "https://webservices.picturae.com/mediabank/media/db3cf55b-e46b-fe6e-8f39-5080164cfa06/downloadoriginal/ef553cf8-79f7-168e-0bc7-a03b1ca6289a?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 204 243 4.782622488996143 52.396298410929425 \
-gcp 5777 207 4.796579310755864 52.39636882980651 \
-gcp 5812 4613 4.796669113800416 52.38962847695785 \
-gcp 227 4661 4.782714414466488 52.38955807190633 \
   output/downloads/DUIZ01746000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01746000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.782714414466488,52.38955807190633],[4.796669113800416,52.38962847695785],[4.796579310755864,52.39636882980651],[4.782622488996143,52.396298410929425],[4.782714414466488,52.38955807190633]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01746000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01746000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01746000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01746000001-warped.tif

# ==============================================
# Name: DUIZ01750000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01750000001.jpg ]; then
  wget -O output/downloads/DUIZ01750000001.jpg "https://webservices.picturae.com/mediabank/media/4c64267e-b6a6-030e-f2d6-10dad2e62a64/downloadoriginal/40ddc344-1571-9432-06a2-747f4eb3c846?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 186 168 4.768665718846976 52.39622634708732 \
-gcp 5760 184 4.782622488996143 52.396298410929425 \
-gcp 5755 4592 4.782714414466488 52.38955807190633 \
-gcp 170 4585 4.768759766716499 52.38948602221261 \
   output/downloads/DUIZ01750000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01750000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.768759766716499,52.38948602221261],[4.782714414466488,52.38955807190633],[4.782622488996143,52.396298410929425],[4.768665718846976,52.39622634708732],[4.768759766716499,52.38948602221261]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01750000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01750000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01750000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01750000001-warped.tif

# ==============================================
# Name: DUIZ01755000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01755000001.jpg ]; then
  wget -O output/downloads/DUIZ01755000001.jpg "https://webservices.picturae.com/mediabank/media/544b5c00-b04f-7f7c-f018-9c35b239ed4c/downloadoriginal/655dd70a-d008-d288-0e04-85f801e2d1b3?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 213 233 4.7547090014996725 52.39615263829305 \
-gcp 5813 217 4.768665718846976 52.39622634708732 \
-gcp 5822 4628 4.768759766716499 52.38948602221261 \
-gcp 230 4646 4.754805171741151 52.38941232788963 \
   output/downloads/DUIZ01755000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01755000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.754805171741151,52.38941232788963],[4.768759766716499,52.38948602221261],[4.768665718846976,52.39622634708732],[4.7547090014996725,52.39615263829305],[4.754805171741151,52.38941232788963]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01755000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01755000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01755000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01755000001-warped.tif

# ==============================================
# Name: DUIZ00470000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00470000001.jpg ]; then
  wget -O output/downloads/DUIZ00470000001.jpg "https://webservices.picturae.com/mediabank/media/5fc87e41-5bc5-78dc-3a62-dae171f45cd1/downloadoriginal/1731c93b-b20a-15f5-a11c-98d716c93886?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 264 330 4.964129095901115 52.39034505124449 \
-gcp 5939 308 4.978084357459903 52.390394074919875 \
-gcp 5960 4773 4.978146545067712 52.38365356233316 \
-gcp 281 4802 4.964193405482442 52.38360454828251 \
   output/downloads/DUIZ00470000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00470000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.964193405482442,52.38360454828251],[4.978146545067712,52.38365356233316],[4.978084357459903,52.390394074919875],[4.964129095901115,52.39034505124449],[4.964193405482442,52.38360454828251]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00470000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00470000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00470000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00470000001-warped.tif

# ==============================================
# Name: DUIZ00478000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00478000001.jpg ]; then
  wget -O output/downloads/DUIZ00478000001.jpg "https://webservices.picturae.com/mediabank/media/f0e34cd1-542d-5cff-556b-35c27d519822/downloadoriginal/20db7a5c-dcf4-74a4-5d2d-92690f760a3d?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 279 303 5.005994984120398 52.3904871878916 \
-gcp 5912 276 5.019950346839943 52.390531277171554 \
-gcp 5934 4736 5.020006168421656 52.3837907376478 \
-gcp 294 4769 5.006052927727787 52.38374665702406 \
   output/downloads/DUIZ00478000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00478000001.vrt

echo '{"type":"Polygon","coordinates":[[[5.006052927727787,52.38374665702406],[5.020006168421656,52.3837907376478],[5.019950346839943,52.390531277171554],[5.005994984120398,52.3904871878916],[5.006052927727787,52.38374665702406]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00478000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00478000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00478000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00478000001-warped.tif

# ==============================================
# Name: DUIZ00479000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00479000001.jpg ]; then
  wget -O output/downloads/DUIZ00479000001.jpg "https://webservices.picturae.com/mediabank/media/bf3b73a0-f4c1-1145-2aaf-2fd339416155/downloadoriginal/f65d65ae-470c-7189-f8f0-e0c84905f36c?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 281 298 5.019950346839943 52.390531277171554 \
-gcp 5911 278 5.033905740897545 52.39057372163694 \
-gcp 5927 4739 5.0339594404374255 52.38383317377994 \
-gcp 291 4764 5.020006168421656 52.3837907376478 \
   output/downloads/DUIZ00479000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00479000001.vrt

echo '{"type":"Polygon","coordinates":[[[5.020006168421656,52.3837907376478],[5.0339594404374255,52.38383317377994],[5.033905740897545,52.39057372163694],[5.019950346839943,52.390531277171554],[5.020006168421656,52.3837907376478]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00479000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00479000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00479000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00479000001-warped.tif

# ==============================================
# Name: DUIZ01762000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01762000001.jpg ]; then
  wget -O output/downloads/DUIZ01762000001.jpg "https://webservices.picturae.com/mediabank/media/d2a01cdc-647e-a96f-289c-d6c6f72daf82/downloadoriginal/d47c35d9-e469-f4de-1c24-fd7c48e6919a?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 248 332 4.824578662457136 52.38976435308507 \
-gcp 5818 295 4.838533509398376 52.38982982413665 \
-gcp 5855 4709 4.8386169158300465 52.38308942232452 \
-gcp 270 4757 4.824664190648554 52.383023964125904 \
   output/downloads/DUIZ01762000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01762000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.824664190648554,52.383023964125904],[4.8386169158300465,52.38308942232452],[4.838533509398376,52.38982982413665],[4.824578662457136,52.38976435308507],[4.824664190648554,52.383023964125904]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01762000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01762000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01762000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01762000001-warped.tif

# ==============================================
# Name: DUIZ01770000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01770000001.jpg ]; then
  wget -O output/downloads/DUIZ01770000001.jpg "https://webservices.picturae.com/mediabank/media/ab0a66e8-c073-92b8-de36-4d9f5633304f/downloadoriginal/5589f8ee-32a5-cb17-2145-adb8a3a91bf8?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 235 215 4.810623863527553 52.38969723735486 \
-gcp 5803 236 4.824578662457136 52.38976435308507 \
-gcp 5795 4642 4.824664190648554 52.383023964125904 \
-gcp 214 4633 4.810711513453967 52.382956861571394 \
   output/downloads/DUIZ01770000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01770000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.810711513453967,52.382956861571394],[4.824664190648554,52.383023964125904],[4.824578662457136,52.38976435308507],[4.810623863527553,52.38969723735486],[4.810711513453967,52.382956861571394]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01770000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01770000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01770000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01770000001-warped.tif

# ==============================================
# Name: DUIZ01777000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01777000001.jpg ]; then
  wget -O output/downloads/DUIZ01777000001.jpg "https://webservices.picturae.com/mediabank/media/19ff4819-9f12-7c6e-f296-958cddfbf3e1/downloadoriginal/659ee0d1-1b72-f17f-4954-64f92ce1a93f?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 261 225 4.796669113800416 52.38962847695785 \
-gcp 5854 255 4.810623863527553 52.38969723735486 \
-gcp 5840 4663 4.810711513453967 52.382956861571394 \
-gcp 239 4643 4.79675888543646 52.382888114672966 \
   output/downloads/DUIZ01777000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01777000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.79675888543646,52.382888114672966],[4.810711513453967,52.382956861571394],[4.810623863527553,52.38969723735486],[4.796669113800416,52.38962847695785],[4.79675888543646,52.382888114672966]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01777000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01777000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01777000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01777000001-warped.tif

# ==============================================
# Name: DUIZ01781000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01781000001.jpg ]; then
  wget -O output/downloads/DUIZ01781000001.jpg "https://webservices.picturae.com/mediabank/media/261459e0-f4c2-7e2c-485d-d9ebc63518ba/downloadoriginal/4e961509-3757-2c99-9fb4-8995b0eadc44?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 397 324 4.782714414466488 52.38955807190633 \
-gcp 5972 321 4.796669113800416 52.38962847695785 \
-gcp 5985 4721 4.79675888543646 52.382888114672966 \
-gcp 402 4737 4.782806307786179 52.38281772344274 \
   output/downloads/DUIZ01781000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01781000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.782806307786179,52.38281772344274],[4.79675888543646,52.382888114672966],[4.796669113800416,52.38962847695785],[4.782714414466488,52.38955807190633],[4.782806307786179,52.38281772344274]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01781000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01781000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01781000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01781000001-warped.tif

# ==============================================
# Name: DUIZ01784000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01784000001.jpg ]; then
  wget -O output/downloads/DUIZ01784000001.jpg "https://webservices.picturae.com/mediabank/media/5fc9e5a0-8ec0-11f9-fe81-7c22aa641fcd/downloadoriginal/c6ec6543-a481-b295-57d6-92ef0563088a?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 235 216 4.768759766716499 52.38948602221261 \
-gcp 5803 231 4.782714414466488 52.38955807190633 \
-gcp 5797 4639 4.782806307786179 52.38281772344274 \
-gcp 217 4632 4.768853781693242 52.382745687893184 \
   output/downloads/DUIZ01784000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01784000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.768853781693242,52.382745687893184],[4.782806307786179,52.38281772344274],[4.782714414466488,52.38955807190633],[4.768759766716499,52.38948602221261],[4.768853781693242,52.382745687893184]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01784000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01784000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01784000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01784000001-warped.tif

# ==============================================
# Name: DUIZ01789000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01789000001.jpg ]; then
  wget -O output/downloads/DUIZ01789000001.jpg "https://webservices.picturae.com/mediabank/media/0c00e985-2c63-2b35-c877-843a969f16f9/downloadoriginal/c7ecfb9e-03d3-961d-295d-5871ea2d2341?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 233 227 4.754805171741151 52.38941232788963 \
-gcp 5816 249 4.768759766716499 52.38948602221261 \
-gcp 5796 4653 4.768853781693242 52.382745687893184 \
-gcp 221 4643 4.754901308347739 52.3826720080371 \
   output/downloads/DUIZ01789000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01789000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.754901308347739,52.3826720080371],[4.768853781693242,52.382745687893184],[4.768759766716499,52.38948602221261],[4.754805171741151,52.38941232788963],[4.754901308347739,52.3826720080371]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01789000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01789000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01789000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01789000001-warped.tif

# ==============================================
# Name: DUIZ00585000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00585000001.jpg ]; then
  wget -O output/downloads/DUIZ00585000001.jpg "https://webservices.picturae.com/mediabank/media/39680c85-0320-eb93-9f8e-8bbb44c33bf5/downloadoriginal/96139279-408d-436c-5c58-b8a839c05855?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 317 336 4.964193405482442 52.38360454828251 \
-gcp 5952 322 4.978146545067712 52.38365356233316 \
-gcp 5958 4780 4.9782087109276 52.37691304040201 \
-gcp 325 4801 4.964257692573884 52.37686403597311 \
   output/downloads/DUIZ00585000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00585000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.964257692573884,52.37686403597311],[4.9782087109276,52.37691304040201],[4.978146545067712,52.38365356233316],[4.964193405482442,52.38360454828251],[4.964257692573884,52.37686403597311]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00585000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00585000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00585000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00585000001-warped.tif

# ==============================================
# Name: DUIZ00589000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00589000001.jpg ]; then
  wget -O output/downloads/DUIZ00589000001.jpg "https://webservices.picturae.com/mediabank/media/231b38cf-ceac-35f3-7b0e-c7cee3aacd59/downloadoriginal/10caa27d-c113-0037-9abc-df87c1a79496?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 311 331 4.978146545067712 52.38365356233316 \
-gcp 5949 309 4.992099719546312 52.38370093191646 \
-gcp 5963 4772 4.992159764156659 52.37696040068628 \
-gcp 323 4801 4.9782087109276 52.37691304040201 \
   output/downloads/DUIZ00589000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00589000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.9782087109276,52.37691304040201],[4.992159764156659,52.37696040068628],[4.992099719546312,52.38370093191646],[4.978146545067712,52.38365356233316],[4.9782087109276,52.37691304040201]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00589000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00589000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00589000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00589000001-warped.tif

# ==============================================
# Name: DUIZ00593000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00593000001.jpg ]; then
  wget -O output/downloads/DUIZ00593000001.jpg "https://webservices.picturae.com/mediabank/media/7371fe2f-ce92-efb7-0d07-4d58acba50d2/downloadoriginal/4cf98a2f-6e76-12a4-7c9e-e8ed02be00d3?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 316 311 4.992099719546312 52.38370093191646 \
-gcp 5951 317 5.006052927727787 52.38374665702406 \
-gcp 5945 4777 5.006110851071218 52.37700611681762 \
-gcp 311 4781 4.992159764156659 52.37696040068628 \
   output/downloads/DUIZ00593000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00593000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.992159764156659,52.37696040068628],[5.006110851071218,52.37700611681762],[5.006052927727787,52.38374665702406],[4.992099719546312,52.38370093191646],[4.992159764156659,52.37696040068628]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00593000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00593000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00593000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00593000001-warped.tif

# ==============================================
# Name: DUIZ01797000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01797000001.jpg ]; then
  wget -O output/downloads/DUIZ01797000001.jpg "https://webservices.picturae.com/mediabank/media/d19adfbe-5754-3968-92d2-e0387d21ab5f/downloadoriginal/6f9ce736-fb03-599f-a2b3-11fd04777591?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 219 205 4.824664190648554 52.383023964125904 \
-gcp 5792 218 4.8386169158300465 52.38308942232452 \
-gcp 5785 4620 4.8387002930947975 52.37634901113423 \
-gcp 208 4617 4.824749688931237 52.37628356578467 \
   output/downloads/DUIZ01797000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01797000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.824749688931237,52.37628356578467],[4.8387002930947975,52.37634901113423],[4.8386169158300465,52.38308942232452],[4.824664190648554,52.383023964125904],[4.824749688931237,52.37628356578467]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01797000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01797000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01797000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01797000001-warped.tif

# ==============================================
# Name: DUIZ01807000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01807000001.jpg ]; then
  wget -O output/downloads/DUIZ01807000001.jpg "https://webservices.picturae.com/mediabank/media/c7384d30-7486-7697-f27f-02decc32f026/downloadoriginal/c9473701-39ea-a453-0aff-7de2d74f6a8c?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 213 227 4.810711513453967 52.382956861571394 \
-gcp 5782 219 4.824664190648554 52.383023964125904 \
-gcp 5793 4623 4.824749688931237 52.37628356578467 \
-gcp 219 4641 4.810799132729847 52.376216476401915 \
   output/downloads/DUIZ01807000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01807000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.810799132729847,52.376216476401915],[4.824749688931237,52.37628356578467],[4.824664190648554,52.383023964125904],[4.810711513453967,52.382956861571394],[4.810799132729847,52.376216476401915]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01807000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01807000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01807000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01807000001-warped.tif

# ==============================================
# Name: DUIZ01814000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01814000001.jpg ]; then
  wget -O output/downloads/DUIZ01814000001.jpg "https://webservices.picturae.com/mediabank/media/919743e2-5048-7ae5-ac28-049120f6bf11/downloadoriginal/b9fa2628-81f7-60aa-107f-8717fc1c819c?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 222 207 4.79675888543646 52.382888114672966 \
-gcp 5793 211 4.810711513453967 52.382956861571394 \
-gcp 5801 4612 4.810799132729847 52.376216476401915 \
-gcp 218 4624 4.796848625680188 52.37614774299791 \
   output/downloads/DUIZ01814000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01814000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.796848625680188,52.37614774299791],[4.810799132729847,52.376216476401915],[4.810711513453967,52.382956861571394],[4.79675888543646,52.382888114672966],[4.796848625680188,52.37614774299791]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01814000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01814000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01814000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01814000001-warped.tif

# ==============================================
# Name: DUIZ01819000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01819000001.jpg ]; then
  wget -O output/downloads/DUIZ01819000001.jpg "https://webservices.picturae.com/mediabank/media/c1d336f2-6927-59a9-2041-56199b95818f/downloadoriginal/365fbd5f-dcd4-7215-e6e6-7cffba4c108c?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 217 205 4.782806307786179 52.38281772344274 \
-gcp 5787 216 4.79675888543646 52.382888114672966 \
-gcp 5785 4622 4.796848625680188 52.37614774299791 \
-gcp 207 4619 4.782898168971791 52.37607736558482 \
   output/downloads/DUIZ01819000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01819000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.782898168971791,52.37607736558482],[4.796848625680188,52.37614774299791],[4.79675888543646,52.382888114672966],[4.782806307786179,52.38281772344274],[4.782898168971791,52.37607736558482]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01819000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01819000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01819000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01819000001-warped.tif

# ==============================================
# Name: DUIZ01823000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01823000001.jpg ]; then
  wget -O output/downloads/DUIZ01823000001.jpg "https://webservices.picturae.com/mediabank/media/b5595031-d011-efd3-b4b9-7e155f9d814e/downloadoriginal/56aba268-b81b-f2bc-76f8-16c7e1e9ff34?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 205 218 4.768853781693242 52.382745687893184 \
-gcp 5776 208 4.782806307786179 52.38281772344274 \
-gcp 5790 4612 4.782898168971791 52.37607736558482 \
-gcp 211 4629 4.768947763794161 52.37600534417511 \
   output/downloads/DUIZ01823000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01823000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.768947763794161,52.37600534417511],[4.782898168971791,52.37607736558482],[4.782806307786179,52.38281772344274],[4.768853781693242,52.382745687893184],[4.768947763794161,52.37600534417511]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01823000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01823000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01823000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01823000001-warped.tif

# ==============================================
# Name: DUIZ01827000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01827000001.jpg ]; then
  wget -O output/downloads/DUIZ01827000001.jpg "https://webservices.picturae.com/mediabank/media/3b396471-d10a-ee91-23a6-5c4a60ea5610/downloadoriginal/b8f2708b-990e-989a-7636-38800082b1d5?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 266 265 4.754901308347739 52.3826720080371 \
-gcp 5847 267 4.768853781693242 52.382745687893184 \
-gcp 5849 4674 4.768947763794161 52.37600534417511 \
-gcp 258 4681 4.754997411336776 52.375931678781434 \
   output/downloads/DUIZ01827000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01827000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.754997411336776,52.375931678781434],[4.768947763794161,52.37600534417511],[4.768853781693242,52.382745687893184],[4.754901308347739,52.3826720080371],[4.754997411336776,52.375931678781434]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01827000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01827000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01827000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01827000001-warped.tif

# ==============================================
# Name: DUIZ00723000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00723000001.jpg ]; then
  wget -O output/downloads/DUIZ00723000001.jpg "https://webservices.picturae.com/mediabank/media/33535721-159f-20b0-2693-6b4db7ed59ab/downloadoriginal/ab7eaaa6-ee4c-f6af-2011-1254feb5490b?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 275 290 4.964257692573884 52.37686403597311 \
-gcp 5881 267 4.9782087109276 52.37691304040201 \
-gcp 5904 4694 4.978270855050774 52.37017250917243 \
-gcp 292 4725 4.964321957187033 52.37012351436242 \
   output/downloads/DUIZ00723000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00723000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.964321957187033,52.37012351436242],[4.978270855050774,52.37017250917243],[4.9782087109276,52.37691304040201],[4.964257692573884,52.37686403597311],[4.964321957187033,52.37012351436242]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00723000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00723000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00723000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00723000001-warped.tif

# ==============================================
# Name: DUIZ00727000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00727000001.jpg ]; then
  wget -O output/downloads/DUIZ00727000001.jpg "https://webservices.picturae.com/mediabank/media/934e4224-27f5-e9bd-e5e2-0025579ccad9/downloadoriginal/9febec05-c69c-96f4-f1bc-2d6642856e70?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 291 279 4.9782087109276 52.37691304040201 \
-gcp 5900 296 4.992159764156659 52.37696040068628 \
-gcp 5885 4734 4.992219787771883 52.370219860160496 \
-gcp 275 4721 4.978270855050774 52.37017250917243 \
   output/downloads/DUIZ00727000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00727000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.978270855050774,52.37017250917243],[4.992219787771883,52.370219860160496],[4.992159764156659,52.37696040068628],[4.9782087109276,52.37691304040201],[4.978270855050774,52.37017250917243]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00727000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00727000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00727000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00727000001-warped.tif

# ==============================================
# Name: DUIZ00728000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00728000001.jpg ]; then
  wget -O output/downloads/DUIZ00728000001.jpg "https://webservices.picturae.com/mediabank/media/feafc594-43e3-614f-ad19-9d3a8fee2108/downloadoriginal/c9b77708-f482-b70a-105b-34c54b671793?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 277 313 4.992159764156659 52.37696040068628 \
-gcp 5888 283 5.006110851071218 52.37700611681762 \
-gcp 5913 4719 5.0061687541611315 52.3702655673183 \
-gcp 301 4758 4.992219787771883 52.370219860160496 \
   output/downloads/DUIZ00728000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00728000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.992219787771883,52.370219860160496],[5.0061687541611315,52.3702655673183],[5.006110851071218,52.37700611681762],[4.992159764156659,52.37696040068628],[4.992219787771883,52.370219860160496]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00728000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00728000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00728000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00728000001-warped.tif

# ==============================================
# Name: DUIZ00729000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00729000001.jpg ]; then
  wget -O output/downloads/DUIZ00729000001.jpg "https://webservices.picturae.com/mediabank/media/c84850bb-04d4-19ec-86a1-f12c4f8cb45c/downloadoriginal/459f40a8-4354-618c-1f6d-6d0e7518a522?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 276 293 5.006110851071218 52.37700611681762 \
-gcp 5881 278 5.020061970481408 52.377050188787855 \
-gcp 5893 4716 5.020117753029264 52.37030963063762 \
-gcp 282 4738 5.0061687541611315 52.3702655673183 \
   output/downloads/DUIZ00729000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00729000001.vrt

echo '{"type":"Polygon","coordinates":[[[5.0061687541611315,52.3702655673183],[5.020117753029264,52.37030963063762],[5.020061970481408,52.377050188787855],[5.006110851071218,52.37700611681762],[5.0061687541611315,52.3702655673183]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00729000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00729000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00729000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00729000001-warped.tif

# ==============================================
# Name: DUIZ01834000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01834000001.jpg ]; then
  wget -O output/downloads/DUIZ01834000001.jpg "https://webservices.picturae.com/mediabank/media/44e5c9de-b879-7ab5-604c-93fb64ad7b10/downloadoriginal/14fff637-4ea9-7f7d-37d3-4889ab390cd1?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 207 214 4.824749688931237 52.37628356578467 \
-gcp 5778 202 4.8387002930947975 52.37634901113423 \
-gcp 5795 4602 4.8387836412076615 52.369608590611875 \
-gcp 217 4625 4.824835157320601 52.36954315810749 \
   output/downloads/DUIZ01834000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01834000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.824835157320601,52.36954315810749],[4.8387836412076615,52.369608590611875],[4.8387002930947975,52.37634901113423],[4.824749688931237,52.37628356578467],[4.824835157320601,52.36954315810749]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01834000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01834000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01834000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01834000001-warped.tif

# ==============================================
# Name: DUIZ01840000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01840000001.jpg ]; then
  wget -O output/downloads/DUIZ01840000001.jpg "https://webservices.picturae.com/mediabank/media/12f52aad-07db-5500-38d5-ebe9f0d2d55d/downloadoriginal/30887092-be99-d4f0-b5dc-c19cbf2df576?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 191 194 4.810799132729847 52.376216476401915 \
-gcp 5763 212 4.824749688931237 52.37628356578467 \
-gcp 5758 4618 4.824835157320601 52.36954315810749 \
-gcp 176 4611 4.810886721370991 52.369476081892465 \
   output/downloads/DUIZ01840000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01840000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.810886721370991,52.369476081892465],[4.824835157320601,52.36954315810749],[4.824749688931237,52.37628356578467],[4.810799132729847,52.376216476401915],[4.810886721370991,52.369476081892465]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01840000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01840000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01840000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01840000001-warped.tif

# ==============================================
# Name: DUIZ01845000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01845000001.jpg ]; then
  wget -O output/downloads/DUIZ01845000001.jpg "https://webservices.picturae.com/mediabank/media/3694f0ef-fb4e-d57e-d4eb-08e2df1ba6ff/downloadoriginal/a02b2a91-060b-1300-a0cb-818c0c6b0acb?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 230 200 4.796848625680188 52.37614774299791 \
-gcp 5807 225 4.810799132729847 52.376216476401915 \
-gcp 5794 4629 4.810886721370991 52.369476081892465 \
-gcp 213 4616 4.79693833454778 52.36940736197881 \
   output/downloads/DUIZ01845000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01845000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.79693833454778,52.36940736197881],[4.810886721370991,52.369476081892465],[4.810799132729847,52.376216476401915],[4.796848625680188,52.37614774299791],[4.79693833454778,52.36940736197881]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01845000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01845000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01845000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01845000001-warped.tif

# ==============================================
# Name: DUIZ01849000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01849000001.jpg ]; then
  wget -O output/downloads/DUIZ01849000001.jpg "https://webservices.picturae.com/mediabank/media/4bde588a-1e35-0fd7-8843-d9aecb3b6e5a/downloadoriginal/0b059e47-4f11-3c3a-13d6-accc4db16854?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 190 195 4.782898168971791 52.37607736558482 \
-gcp 5764 215 4.796848625680188 52.37614774299791 \
-gcp 5755 4621 4.79693833454778 52.36940736197881 \
-gcp 177 4612 4.782989998039888 52.369336998378635 \
   output/downloads/DUIZ01849000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01849000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.782989998039888,52.369336998378635],[4.79693833454778,52.36940736197881],[4.796848625680188,52.37614774299791],[4.782898168971791,52.37607736558482],[4.782989998039888,52.369336998378635]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01849000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01849000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01849000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01849000001-warped.tif

# ==============================================
# Name: DUIZ01853000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01853000001.jpg ]; then
  wget -O output/downloads/DUIZ01853000001.jpg "https://webservices.picturae.com/mediabank/media/bd9bb1c0-94ba-664e-2d49-039dda50e739/downloadoriginal/bf816f51-3555-80ef-3fb5-7c552d2858d1?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 204 221 4.768947763794161 52.37600534417511 \
-gcp 5784 222 4.782898168971791 52.37607736558482 \
-gcp 5785 4620 4.782989998039888 52.369336998378635 \
-gcp 206 4627 4.769041713036203 52.3692649911044 \
   output/downloads/DUIZ01853000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01853000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.769041713036203,52.3692649911044],[4.782989998039888,52.369336998378635],[4.782898168971791,52.37607736558482],[4.768947763794161,52.37600534417511],[4.769041713036203,52.3692649911044]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01853000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01853000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01853000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01853000001-warped.tif

# ==============================================
# Name: DUIZ01857000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01857000001.jpg ]; then
  wget -O output/downloads/DUIZ01857000001.jpg "https://webservices.picturae.com/mediabank/media/0088bbc0-b914-cd33-8c82-6e28008bfd03/downloadoriginal/9a58c744-6112-c666-675f-1728cbf87328?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 236 214 4.754997411336776 52.375931678781434 \
-gcp 5806 231 4.768947763794161 52.37600534417511 \
-gcp 5798 4636 4.769041713036203 52.3692649911044 \
-gcp 217 4631 4.755093480725594 52.36919134016884 \
   output/downloads/DUIZ01857000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01857000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.755093480725594,52.36919134016884],[4.769041713036203,52.3692649911044],[4.768947763794161,52.37600534417511],[4.754997411336776,52.375931678781434],[4.755093480725594,52.36919134016884]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01857000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01857000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01857000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01857000001-warped.tif

# ==============================================
# Name: DUIZ00874000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00874000001.jpg ]; then
  wget -O output/downloads/DUIZ00874000001.jpg "https://webservices.picturae.com/mediabank/media/02326c22-754a-2116-4eaf-45267426d616/downloadoriginal/7ddb876a-07ff-38b1-2146-9d1b0f3f2fef?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 211 226 4.964321957187033 52.37012351436242 \
-gcp 5791 208 4.978270855050774 52.37017250917243 \
-gcp 5810 4614 4.978332977448442 52.363431968690485 \
-gcp 228 4637 4.964386199333477 52.36338298349637 \
   output/downloads/DUIZ00874000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ00874000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.964386199333477,52.36338298349637],[4.978332977448442,52.363431968690485],[4.978270855050774,52.37017250917243],[4.964321957187033,52.37012351436242],[4.964386199333477,52.36338298349637]]]}' > output/publieke-werken-1985/3857/warped/DUIZ00874000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ00874000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ00874000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ00874000001-warped.tif

# ==============================================
# Name: DUIZ01862000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01862000001.jpg ]; then
  wget -O output/downloads/DUIZ01862000001.jpg "https://webservices.picturae.com/mediabank/media/062b15a3-2cf8-4f63-8ef8-96dfdb294a53/downloadoriginal/6e6a0a58-b51f-befc-3b8c-c5a395a9aa1a?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 213 213 4.824835157320601 52.36954315810749 \
-gcp 5786 208 4.8387836412076615 52.369608590611875 \
-gcp 5795 4614 4.838866960183661 52.362868160803544 \
-gcp 214 4631 4.824920595832051 52.362802741140335 \
   output/downloads/DUIZ01862000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01862000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.824920595832051,52.362802741140335],[4.838866960183661,52.362868160803544],[4.8387836412076615,52.369608590611875],[4.824835157320601,52.36954315810749],[4.824920595832051,52.362802741140335]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01862000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01862000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01862000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01862000001-warped.tif

# ==============================================
# Name: DUIZ01865000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01865000001.jpg ]; then
  wget -O output/downloads/DUIZ01865000001.jpg "https://webservices.picturae.com/mediabank/media/4ee09537-a198-5da0-8349-6787a4be8797/downloadoriginal/e01774b4-f509-4929-5a81-5c37da249fed?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 213 196 4.810886721370991 52.369476081892465 \
-gcp 5789 216 4.824835157320601 52.36954315810749 \
-gcp 5780 4619 4.824920595832051 52.362802741140335 \
-gcp 199 4612 4.810974279393187 52.36273567808911 \
   output/downloads/DUIZ01865000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01865000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.810974279393187,52.36273567808911],[4.824920595832051,52.362802741140335],[4.824835157320601,52.36954315810749],[4.810886721370991,52.369476081892465],[4.810974279393187,52.36273567808911]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01865000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01865000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01865000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01865000001-warped.tif

# ==============================================
# Name: DUIZ01869000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01869000001.jpg ]; then
  wget -O output/downloads/DUIZ01869000001.jpg "https://webservices.picturae.com/mediabank/media/3a8d2a81-4720-11c6-d005-a1e91bca9b5a/downloadoriginal/3a4a669c-34d8-2583-51dc-68e49d112b7c?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 216 198 4.79693833454778 52.36940736197881 \
-gcp 5791 220 4.810886721370991 52.369476081892465 \
-gcp 5780 4624 4.810974279393187 52.36273567808911 \
-gcp 200 4614 4.797028012055408 52.36266697166171 \
   output/downloads/DUIZ01869000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01869000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.797028012055408,52.36266697166171],[4.810974279393187,52.36273567808911],[4.810886721370991,52.369476081892465],[4.79693833454778,52.36940736197881],[4.797028012055408,52.36266697166171]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01869000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01869000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01869000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01869000001-warped.tif

# ==============================================
# Name: DUIZ01873000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01873000001.jpg ]; then
  wget -O output/downloads/DUIZ01873000001.jpg "https://webservices.picturae.com/mediabank/media/c4ec23f3-b7ac-01af-6f5c-259c4c21bde3/downloadoriginal/c51de701-bb5a-785f-9315-6dda51f04873?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 215 215 4.782989998039888 52.369336998378635 \
-gcp 5783 225 4.79693833454778 52.36940736197881 \
-gcp 5780 4626 4.797028012055408 52.36266697166171 \
-gcp 207 4625 4.78308179500702 52.36259662187022 \
   output/downloads/DUIZ01873000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01873000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.78308179500702,52.36259662187022],[4.797028012055408,52.36266697166171],[4.79693833454778,52.36940736197881],[4.782989998039888,52.369336998378635],[4.78308179500702,52.36259662187022]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01873000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01873000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01873000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01873000001-warped.tif

# ==============================================
# Name: DUIZ01878000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01878000001.jpg ]; then
  wget -O output/downloads/DUIZ01878000001.jpg "https://webservices.picturae.com/mediabank/media/95333d32-553b-dde7-7c4d-b9fdc19aa3c6/downloadoriginal/fa120edc-7a66-1557-9fd0-2385cb99a614?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 200 204 4.769041713036203 52.3692649911044 \
-gcp 5780 195 4.782989998039888 52.369336998378635 \
-gcp 5790 4608 4.78308179500702 52.36259662187022 \
-gcp 195 4626 4.769135629436302 52.3625246287272 \
   output/downloads/DUIZ01878000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01878000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.769135629436302,52.3625246287272],[4.78308179500702,52.36259662187022],[4.782989998039888,52.369336998378635],[4.769041713036203,52.3692649911044],[4.769135629436302,52.3625246287272]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01878000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01878000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01878000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01878000001-warped.tif

# ==============================================
# Name: DUIZ01881000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01881000001.jpg ]; then
  wget -O output/downloads/DUIZ01881000001.jpg "https://webservices.picturae.com/mediabank/media/493fa541-3a34-da64-a244-648581aca001/downloadoriginal/eed45b3a-8ee8-9d68-f49b-08cbc0c33cc6?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 188 242 4.755093480725594 52.36919134016884 \
-gcp 5766 208 4.769041713036203 52.3692649911044 \
-gcp 5797 4618 4.769135629436302 52.3625246287272 \
-gcp 209 4663 4.7551895165315035 52.36245099224536 \
   output/downloads/DUIZ01881000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01881000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.7551895165315035,52.36245099224536],[4.769135629436302,52.3625246287272],[4.769041713036203,52.3692649911044],[4.755093480725594,52.36919134016884],[4.7551895165315035,52.36245099224536]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01881000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01881000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01881000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01881000001-warped.tif

# ==============================================
# Name: DUIZ01011000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01011000001.jpg ]; then
  wget -O output/downloads/DUIZ01011000001.jpg "https://webservices.picturae.com/mediabank/media/44118ad0-dbe7-9f94-a788-32bd9b844a87/downloadoriginal/f9909f87-ac66-87ed-9a08-15e4979d512a?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 229 249 4.978332977448442 52.363431968690485 \
-gcp 5809 201 4.992279790402814 52.363479310385166 \
-gcp 5849 4625 4.992339772060261 52.356738751406354 \
-gcp 258 4677 4.9783950781318005 52.35669141900221 \
   output/downloads/DUIZ01011000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01011000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.9783950781318005,52.35669141900221],[4.992339772060261,52.356738751406354],[4.992279790402814,52.363479310385166],[4.978332977448442,52.363431968690485],[4.9783950781318005,52.35669141900221]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01011000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01011000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01011000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01011000001-warped.tif

# ==============================================
# Name: DUIZ01119000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01119000001.jpg ]; then
  wget -O output/downloads/DUIZ01119000001.jpg "https://webservices.picturae.com/mediabank/media/25d07934-bbd1-0a68-fae2-b5d04a3b6ab9/downloadoriginal/a9d3cd6d-e426-751b-4f79-1c5f91662d9e?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 255 230 4.964450419024794 52.356642443421116 \
-gcp 5846 236 4.9783950781318005 52.35669141900221 \
-gcp 5844 4651 4.978457157112034 52.34995086015366 \
-gcp 239 4650 4.964514616272553 52.34990189418268 \
   output/downloads/DUIZ01119000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01119000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.964514616272553,52.34990189418268],[4.978457157112034,52.34995086015366],[4.9783950781318005,52.35669141900221],[4.964450419024794,52.356642443421116],[4.964514616272553,52.34990189418268]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01119000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01119000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01119000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01119000001-warped.tif

# ==============================================
# Name: DUIZ01120000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01120000001.jpg ]; then
  wget -O output/downloads/DUIZ01120000001.jpg "https://webservices.picturae.com/mediabank/media/5eb6a365-90c2-700b-3275-93bcf6903041/downloadoriginal/4b1d4677-bcba-1330-dbb8-70c1e3818763?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 217 221 4.9783950781318005 52.35669141900221 \
-gcp 5792 218 4.992339772060261 52.356738751406354 \
-gcp 5799 4632 4.992399732755033 52.349998183270124 \
-gcp 215 4645 4.978457157112034 52.34995086015366 \
   output/downloads/DUIZ01120000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01120000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.978457157112034,52.34995086015366],[4.992399732755033,52.349998183270124],[4.992339772060261,52.356738751406354],[4.9783950781318005,52.35669141900221],[4.978457157112034,52.34995086015366]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01120000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01120000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01120000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01120000001-warped.tif

# ==============================================
# Name: DUIZ01314000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01314000001.jpg ]; then
  wget -O output/downloads/DUIZ01314000001.jpg "https://webservices.picturae.com/mediabank/media/c90804cb-ffeb-09e8-558d-7ca53e872701/downloadoriginal/683c4c68-c144-9f4c-3d51-c25b7cdcbace?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 292 268 4.992459672497925 52.34325760602246 \
-gcp 5910 277 5.00640016419433 52.34330327731329 \
-gcp 5913 4716 5.0064579661731194 52.336562682040395 \
-gcp 285 4714 4.992519591299728 52.33651701970949 \
   output/downloads/DUIZ01314000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01314000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.992519591299728,52.33651701970949],[5.0064579661731194,52.336562682040395],[5.00640016419433,52.34330327731329],[4.992459672497925,52.34325760602246],[4.992519591299728,52.33651701970949]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01314000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01314000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01314000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01314000001-warped.tif

# ==============================================
# Name: DUIZ01316000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01316000001.jpg ]; then
  wget -O output/downloads/DUIZ01316000001.jpg "https://webservices.picturae.com/mediabank/media/cbab0ef6-43fd-2cdf-06bb-567c65ec8569/downloadoriginal/78624cf6-c986-e9ac-cacf-98914aaaef8e?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 314 323 5.00640016419433 52.34330327731329 \
-gcp 5902 290 5.020340688302742 52.34334730605538 \
-gcp 5943 4728 5.020396373441826 52.336606702144735 \
-gcp 336 4767 5.0064579661731194 52.336562682040395 \
   output/downloads/DUIZ01316000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01316000001.vrt

echo '{"type":"Polygon","coordinates":[[[5.0064579661731194,52.336562682040395],[5.020396373441826,52.336606702144735],[5.020340688302742,52.34334730605538],[5.00640016419433,52.34330327731329],[5.0064579661731194,52.336562682040395]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01316000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01316000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01316000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01316000001-warped.tif

# ==============================================
# Name: DUIZ01366000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01366000001.jpg ]; then
  wget -O output/downloads/DUIZ01366000001.jpg "https://webservices.picturae.com/mediabank/media/1eeae4b0-2356-26b6-d7c9-dcf14dd3435f/downloadoriginal/91fd0a30-4f87-c467-5780-ffe39c25280c?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 239 266 4.9646429434836366 52.33642076840053 \
-gcp 5820 240 4.978581250007844 52.3364697151601 \
-gcp 5836 4651 4.978643263945758 52.329729129107164 \
-gcp 264 4685 4.964707073470057 52.32968019194894 \
   output/downloads/DUIZ01366000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01366000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.964707073470057,52.32968019194894],[4.978643263945758,52.329729129107164],[4.978581250007844,52.3364697151601],[4.9646429434836366,52.33642076840053],[4.964707073470057,52.32968019194894]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01366000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01366000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01366000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01366000001-warped.tif

# ==============================================
# Name: DUIZ01369000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01369000001.jpg ]; then
  wget -O output/downloads/DUIZ01369000001.jpg "https://webservices.picturae.com/mediabank/media/cdfd0f2a-aefc-48c3-1c19-576f5f51e7b8/downloadoriginal/ef5b70fa-df97-ae7a-c130-7b3d81680294?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 288 280 4.978581250007844 52.3364697151601 \
-gcp 5895 267 4.992519591299728 52.33651701970949 \
-gcp 5915 4697 4.9925794891712325 52.329776424377265 \
-gcp 295 4718 4.978643263945758 52.329729129107164 \
   output/downloads/DUIZ01369000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01369000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.978643263945758,52.329729129107164],[4.9925794891712325,52.329776424377265],[4.992519591299728,52.33651701970949],[4.978581250007844,52.3364697151601],[4.978643263945758,52.329729129107164]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01369000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01369000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01369000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01369000001-warped.tif

# ==============================================
# Name: DUIZ01422000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01422000001.jpg ]; then
  wget -O output/downloads/DUIZ01422000001.jpg "https://webservices.picturae.com/mediabank/media/82096091-fa34-4ed5-76d8-2add733c7dfc/downloadoriginal/94f78172-aa78-6d49-df5b-07d88ccad1de?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 215 202 4.964707073470057 52.32968019194894 \
-gcp 5798 223 4.978643263945758 52.329729129107164 \
-gcp 5785 4628 4.978705256225222 52.32298853407818 \
-gcp 203 4618 4.96477118105912 52.32293960651842 \
   output/downloads/DUIZ01422000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01422000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.96477118105912,52.32293960651842],[4.978705256225222,52.32298853407818],[4.978643263945758,52.329729129107164],[4.964707073470057,52.32968019194894],[4.96477118105912,52.32293960651842]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01422000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01422000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01422000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01422000001-warped.tif

# ==============================================
# Name: DUIZ01425000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01425000001.jpg ]; then
  wget -O output/downloads/DUIZ01425000001.jpg "https://webservices.picturae.com/mediabank/media/94a8c09e-b418-af88-c628-7f6fba3e8407/downloadoriginal/ab33fba7-20c6-30fc-ee77-2848969f74bf?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 205 201 4.978643263945758 52.329729129107164 \
-gcp 5780 209 4.9925794891712325 52.329776424377265 \
-gcp 5778 4612 4.99263936612321 52.323035820071844 \
-gcp 200 4611 4.978705256225222 52.32298853407818 \
   output/downloads/DUIZ01425000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01425000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.978705256225222,52.32298853407818],[4.99263936612321,52.323035820071844],[4.9925794891712325,52.329776424377265],[4.978643263945758,52.329729129107164],[4.978705256225222,52.32298853407818]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01425000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01425000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01425000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01425000001-warped.tif

# ==============================================
# Name: DUIZ01427000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01427000001.jpg ]; then
  wget -O output/downloads/DUIZ01427000001.jpg "https://webservices.picturae.com/mediabank/media/fb2052b0-992b-14ed-2d29-35d770d4b5f2/downloadoriginal/b2672088-e698-f1c1-6709-5352d186124c?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 234 219 4.9925794891712325 52.329776424377265 \
-gcp 5814 235 5.006515747960923 52.32982207775097 \
-gcp 5797 4645 5.006573509568135 52.32308146449104 \
-gcp 224 4638 4.99263936612321 52.323035820071844 \
   output/downloads/DUIZ01427000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01427000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.99263936612321,52.323035820071844],[5.006573509568135,52.32308146449104],[5.006515747960923,52.32982207775097],[4.9925794891712325,52.329776424377265],[4.99263936612321,52.323035820071844]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01427000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01427000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01427000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01427000001-warped.tif

# ==============================================
# Name: DUIZ01467000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01467000001.jpg ]; then
  wget -O output/downloads/DUIZ01467000001.jpg "https://webservices.picturae.com/mediabank/media/cf21f8a5-5144-e80e-c127-bf9f97886311/downloadoriginal/42edd940-b065-3f82-b6e2-d04d989a046b?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 207 205 4.96477118105912 52.32293960651842 \
-gcp 5777 205 4.978705256225222 52.32298853407818 \
-gcp 5785 4598 4.9787672268573875 52.31624793011923 \
-gcp 210 4620 4.964835266262354 52.316199012154996 \
   output/downloads/DUIZ01467000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01467000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.964835266262354,52.316199012154996],[4.9787672268573875,52.31624793011923],[4.978705256225222,52.32298853407818],[4.96477118105912,52.32293960651842],[4.964835266262354,52.316199012154996]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01467000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01467000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01467000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01467000001-warped.tif

# ==============================================
# Name: DUIZ01469000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01469000001.jpg ]; then
  wget -O output/downloads/DUIZ01469000001.jpg "https://webservices.picturae.com/mediabank/media/928be2dd-45eb-aeaa-6f27-f09eb4d48498/downloadoriginal/714fbeb9-d811-fe08-447f-22bda8cfae72?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 214 205 4.978705256225222 52.32298853407818 \
-gcp 5797 226 4.99263936612321 52.323035820071844 \
-gcp 5782 4629 4.992699222166431 52.31629520683925 \
-gcp 202 4623 4.9787672268573875 52.31624793011923 \
   output/downloads/DUIZ01469000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01469000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.9787672268573875,52.31624793011923],[4.992699222166431,52.31629520683925],[4.99263936612321,52.323035820071844],[4.978705256225222,52.32298853407818],[4.9787672268573875,52.31624793011923]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01469000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01469000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01469000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01469000001-warped.tif

# ==============================================
# Name: DUIZ01472000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01472000001.jpg ]; then
  wget -O output/downloads/DUIZ01472000001.jpg "https://webservices.picturae.com/mediabank/media/7e3d5978-aa7b-6a5f-b48c-4b510e90cf6a/downloadoriginal/133978a6-fb4f-adac-dc36-674a365fb56b?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 235 225 4.99263936612321 52.323035820071844 \
-gcp 5819 226 5.006573509568135 52.32308146449104 \
-gcp 5822 4637 5.006631251005143 52.31634084230669 \
-gcp 227 4647 4.992699222166431 52.31629520683925 \
   output/downloads/DUIZ01472000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01472000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.992699222166431,52.31629520683925],[5.006631251005143,52.31634084230669],[5.006573509568135,52.32308146449104],[4.99263936612321,52.323035820071844],[4.992699222166431,52.31629520683925]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01472000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01472000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01472000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01472000001-warped.tif

# ==============================================
# Name: DUIZ01491000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01491000001.jpg ]; then
  wget -O output/downloads/DUIZ01491000001.jpg "https://webservices.picturae.com/mediabank/media/af7551ff-8dd1-6265-67b0-029f609282c1/downloadoriginal/ff10cbba-4669-889a-f2a7-5a5e15d44eb9?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 304 244 4.964835266262354 52.316199012154996 \
-gcp 5893 237 4.9787672268573875 52.31624793011923 \
-gcp 5907 4657 4.978829175853395 52.309507317276406 \
-gcp 311 4678 4.964899329091281 52.30945840890476 \
   output/downloads/DUIZ01491000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01491000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.964899329091281,52.30945840890476],[4.978829175853395,52.309507317276406],[4.9787672268573875,52.31624793011923],[4.964835266262354,52.316199012154996],[4.964899329091281,52.30945840890476]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01491000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01491000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01491000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01491000001-warped.tif

# ==============================================
# Name: DUIZ01496000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01496000001.jpg ]; then
  wget -O output/downloads/DUIZ01496000001.jpg "https://webservices.picturae.com/mediabank/media/47a12aac-2b21-d32d-9fc4-eaccd06926cb/downloadoriginal/2be35d5d-8ef8-154b-4e64-45aece52c20b?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 237 218 4.9787672268573875 52.31624793011923 \
-gcp 5818 221 4.992699222166431 52.31629520683925 \
-gcp 5810 4633 4.992759057311657 52.3095545847256 \
-gcp 233 4640 4.978829175853395 52.309507317276406 \
   output/downloads/DUIZ01496000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01496000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.978829175853395,52.309507317276406],[4.992759057311657,52.3095545847256],[4.992699222166431,52.31629520683925],[4.9787672268573875,52.31624793011923],[4.978829175853395,52.309507317276406]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01496000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01496000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01496000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01496000001-warped.tif

# ==============================================
# Name: DUIZ01500000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01500000001.jpg ]; then
  wget -O output/downloads/DUIZ01500000001.jpg "https://webservices.picturae.com/mediabank/media/510e18d4-d785-fd72-483c-fb873044ec21/downloadoriginal/2b149b30-d16e-feb7-419d-060af98ef9a1?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 237 230 5.006631251005143 52.31634084230669 \
-gcp 5819 237 5.020563312189167 52.31638483651348 \
-gcp 5815 4651 5.020618919581675 52.30964419682349 \
-gcp 219 4651 5.006688972282333 52.30960021124398 \
   output/downloads/DUIZ01500000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01500000001.vrt

echo '{"type":"Polygon","coordinates":[[[5.006688972282333,52.30960021124398],[5.020618919581675,52.30964419682349],[5.020563312189167,52.31638483651348],[5.006631251005143,52.31634084230669],[5.006688972282333,52.30960021124398]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01500000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01500000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01500000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01500000001-warped.tif

# ==============================================
# Name: DUIZ01518000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01518000001.jpg ]; then
  wget -O output/downloads/DUIZ01518000001.jpg "https://webservices.picturae.com/mediabank/media/1f695aff-9d57-71da-96c5-a4b6bfdf07bd/downloadoriginal/140375b8-2cf7-fd8c-e8bc-9300d69e6c07?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 332 261 4.964899329091281 52.30945840890476 \
-gcp 5918 232 4.978829175853395 52.309507317276406 \
-gcp 5933 4639 4.978891103224382 52.302766695595714 \
-gcp 358 4678 4.964963369557415 52.30271779681379 \
   output/downloads/DUIZ01518000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01518000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.964963369557415,52.30271779681379],[4.978891103224382,52.302766695595714],[4.978829175853395,52.309507317276406],[4.964899329091281,52.30945840890476],[4.964963369557415,52.30271779681379]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01518000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01518000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01518000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01518000001-warped.tif

# ==============================================
# Name: DUIZ01521000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01521000001.jpg ]; then
  wget -O output/downloads/DUIZ01521000001.jpg "https://webservices.picturae.com/mediabank/media/b65e8eb9-8810-e9fd-1db7-e7915151b7de/downloadoriginal/8ddd2d07-c9eb-3d17-4715-79ab0ddfcd21?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 355 239 4.978829175853395 52.309507317276406 \
-gcp 5945 240 4.992759057311657 52.3095545847256 \
-gcp 5932 4648 4.992818871569641 52.3028139537769 \
-gcp 355 4657 4.978891103224382 52.302766695595714 \
   output/downloads/DUIZ01521000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01521000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.978891103224382,52.302766695595714],[4.992818871569641,52.3028139537769],[4.992759057311657,52.3095545847256],[4.978829175853395,52.309507317276406],[4.978891103224382,52.302766695595714]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01521000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01521000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01521000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01521000001-warped.tif

# ==============================================
# Name: DUIZ01523000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01523000001.jpg ]; then
  wget -O output/downloads/DUIZ01523000001.jpg "https://webservices.picturae.com/mediabank/media/3e62fee6-704f-954f-8ede-b2e7664c3535/downloadoriginal/6171f446-9c01-26f7-59ad-c4ab87dfa488?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 258 234 4.992759057311657 52.3095545847256 \
-gcp 5845 277 5.006688972282333 52.30960021124398 \
-gcp 5801 4686 5.006746673410077 52.302859571348954 \
-gcp 222 4653 4.992818871569641 52.3028139537769 \
   output/downloads/DUIZ01523000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01523000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.992818871569641,52.3028139537769],[5.006746673410077,52.302859571348954],[5.006688972282333,52.30960021124398],[4.992759057311657,52.3095545847256],[4.992818871569641,52.3028139537769]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01523000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01523000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01523000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01523000001-warped.tif

# ==============================================
# Name: DUIZ01525000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01525000001.jpg ]; then
  wget -O output/downloads/DUIZ01525000001.jpg "https://webservices.picturae.com/mediabank/media/6f602679-91c7-e3f2-348b-cfe28ec4fa48/downloadoriginal/3ecad10c-d38d-1400-74fd-d38dc7676334?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 221 205 5.006688972282333 52.30960021124398 \
-gcp 5806 229 5.020618919581675 52.30964419682349 \
-gcp 5781 4628 5.020674507562539 52.30290354830378 \
-gcp 205 4610 5.006746673410077 52.302859571348954 \
   output/downloads/DUIZ01525000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01525000001.vrt

echo '{"type":"Polygon","coordinates":[[[5.006746673410077,52.302859571348954],[5.020674507562539,52.30290354830378],[5.020618919581675,52.30964419682349],[5.006688972282333,52.30960021124398],[5.006746673410077,52.302859571348954]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01525000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01525000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01525000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01525000001-warped.tif

# ==============================================
# Name: DUIZ01540000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01540000001.jpg ]; then
  wget -O output/downloads/DUIZ01540000001.jpg "https://webservices.picturae.com/mediabank/media/028768b7-813a-c39c-f1a0-43d531167fe5/downloadoriginal/8ab99a8f-1d91-a1ed-2372-5d204bddadb0?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 247 250 4.964963369557415 52.30271779681379 \
-gcp 5835 214 4.978891103224382 52.302766695595714 \
-gcp 5862 4629 4.9789530089814695 52.29602606512324 \
-gcp 275 4676 4.965027387672261 52.29597717592811 \
   output/downloads/DUIZ01540000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01540000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.965027387672261,52.29597717592811],[4.9789530089814695,52.29602606512324],[4.978891103224382,52.302766695595714],[4.964963369557415,52.30271779681379],[4.965027387672261,52.29597717592811]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01540000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01540000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01540000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01540000001-warped.tif

# ==============================================
# Name: DUIZ01542000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01542000001.jpg ]; then
  wget -O output/downloads/DUIZ01542000001.jpg "https://webservices.picturae.com/mediabank/media/c298e1e3-c5ec-0868-107e-2dc42fbd433a/downloadoriginal/f0c80031-2591-6a99-6c39-b12b8fb34599?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 227 204 4.978891103224382 52.302766695595714 \
-gcp 5807 199 4.992818871569641 52.3028139537769 \
-gcp 5823 4612 4.992878664951133 52.296073314039205 \
-gcp 218 4633 4.9789530089814695 52.29602606512324 \
   output/downloads/DUIZ01542000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01542000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.9789530089814695,52.29602606512324],[4.992878664951133,52.296073314039205],[4.992818871569641,52.3028139537769],[4.978891103224382,52.302766695595714],[4.9789530089814695,52.29602606512324]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01542000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01542000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01542000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01542000001-warped.tif

# ==============================================
# Name: DUIZ01544000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01544000001.jpg ]; then
  wget -O output/downloads/DUIZ01544000001.jpg "https://webservices.picturae.com/mediabank/media/ab3be932-e7a3-c415-c5b3-ca084b73d0f6/downloadoriginal/9f5f69f1-a045-8fae-cd3b-41a2aeb7ff17?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 252 226 4.992818871569641 52.3028139537769 \
-gcp 5839 255 5.006746673410077 52.302859571348954 \
-gcp 5813 4669 5.006804354398739 52.29611892266762 \
-gcp 229 4652 4.992878664951133 52.296073314039205 \
   output/downloads/DUIZ01544000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01544000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.992878664951133,52.296073314039205],[5.006804354398739,52.29611892266762],[5.006746673410077,52.302859571348954],[4.992818871569641,52.3028139537769],[4.992878664951133,52.296073314039205]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01544000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01544000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01544000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01544000001-warped.tif

# ==============================================
# Name: DUIZ01545000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01545000001.jpg ]; then
  wget -O output/downloads/DUIZ01545000001.jpg "https://webservices.picturae.com/mediabank/media/745c42d1-665c-56c4-b78e-29eb52088228/downloadoriginal/2c84fd89-e8ae-4a1e-2e9c-6cb8dff6cd34?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 241 195 5.006746673410077 52.302859571348954 \
-gcp 5820 225 5.020674507562539 52.30290354830378 \
-gcp 5801 4643 5.020730076141754 52.29616289100045 \
-gcp 212 4621 5.006804354398739 52.29611892266762 \
   output/downloads/DUIZ01545000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01545000001.vrt

echo '{"type":"Polygon","coordinates":[[[5.006804354398739,52.29611892266762],[5.020730076141754,52.29616289100045],[5.020674507562539,52.30290354830378],[5.006746673410077,52.302859571348954],[5.006804354398739,52.29611892266762]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01545000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01545000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01545000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01545000001-warped.tif

# ==============================================
# Name: DUIZ01562000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01562000001.jpg ]; then
  wget -O output/downloads/DUIZ01562000001.jpg "https://webservices.picturae.com/mediabank/media/29e4a2eb-ee02-2460-dda5-94953b8ac149/downloadoriginal/4edf5919-b233-eb69-0901-1615934f0db3?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 247 233 4.965027387672261 52.29597717592811 \
-gcp 5833 257 4.9789530089814695 52.29602606512324 \
-gcp 5811 4672 4.979014893135783 52.28928542590507 \
-gcp 227 4660 4.965091383447318 52.28923654629382 \
   output/downloads/DUIZ01562000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01562000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.965091383447318,52.28923654629382],[4.979014893135783,52.28928542590507],[4.9789530089814695,52.29602606512324],[4.965027387672261,52.29597717592811],[4.965091383447318,52.28923654629382]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01562000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01562000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01562000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01562000001-warped.tif

# ==============================================
# Name: DUIZ01565000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01565000001.jpg ]; then
  wget -O output/downloads/DUIZ01565000001.jpg "https://webservices.picturae.com/mediabank/media/3015ef62-6c5a-686f-8b39-33cd859bdc2d/downloadoriginal/c6071c2a-b6ec-69f3-29ad-d2078663bf89?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 230 210 4.9789530089814695 52.29602606512324 \
-gcp 5820 238 4.992878664951133 52.296073314039205 \
-gcp 5801 4650 4.992938437466872 52.28933266555865 \
-gcp 203 4630 4.979014893135783 52.28928542590507 \
   output/downloads/DUIZ01565000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01565000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.979014893135783,52.28928542590507],[4.992938437466872,52.28933266555865],[4.992878664951133,52.296073314039205],[4.9789530089814695,52.29602606512324],[4.979014893135783,52.28928542590507]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01565000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01565000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01565000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01565000001-warped.tif

# ==============================================
# Name: DUIZ01567000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01567000001.jpg ]; then
  wget -O output/downloads/DUIZ01567000001.jpg "https://webservices.picturae.com/mediabank/media/866fdccd-34e1-b06f-8369-7f2922ca7aac/downloadoriginal/e4e26937-b99a-3d76-505a-dd93a892a88d?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 236 272 4.992878664951133 52.296073314039205 \
-gcp 5823 231 5.006804354398739 52.29611892266762 \
-gcp 5850 4646 5.006862015258686 52.28937826524612 \
-gcp 268 4696 4.992938437466872 52.28933266555865 \
   output/downloads/DUIZ01567000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01567000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.992938437466872,52.28933266555865],[5.006862015258686,52.28937826524612],[5.006804354398739,52.29611892266762],[4.992878664951133,52.296073314039205],[4.992938437466872,52.28933266555865]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01567000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01567000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01567000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01567000001-warped.tif

# ==============================================
# Name: DUIZ01568000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01568000001.jpg ]; then
  wget -O output/downloads/DUIZ01568000001.jpg "https://webservices.picturae.com/mediabank/media/483f4117-71c6-0cf1-5c1d-79ed66cf3d49/downloadoriginal/00f39ef0-ee4f-a23b-343b-542bf808ce75?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 188 164 5.006804354398739 52.29611892266762 \
-gcp 5761 188 5.020730076141754 52.29616289100045 \
-gcp 5753 4601 5.020785625329296 52.2894222249595 \
-gcp 165 4590 5.006862015258686 52.28937826524612 \
   output/downloads/DUIZ01568000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01568000001.vrt

echo '{"type":"Polygon","coordinates":[[[5.006862015258686,52.28937826524612],[5.020785625329296,52.2894222249595],[5.020730076141754,52.29616289100045],[5.006804354398739,52.29611892266762],[5.006862015258686,52.28937826524612]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01568000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01568000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01568000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01568000001-warped.tif

# ==============================================
# Name: DUIZ01579000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01579000001.jpg ]; then
  wget -O output/downloads/DUIZ01579000001.jpg "https://webservices.picturae.com/mediabank/media/a9fd0106-94d1-cf5d-bdc2-0cee105d78d2/downloadoriginal/fff72d00-5818-5d4a-ab74-55c8a4489d9e?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 258 242 4.965091383447318 52.28923654629382 \
-gcp 5845 248 4.979014893135783 52.28928542590507 \
-gcp 5838 4663 4.979076755698426 52.282544777987276 \
-gcp 254 4671 4.9651553568940745 52.28249590795697 \
   output/downloads/DUIZ01579000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01579000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.9651553568940745,52.28249590795697],[4.979076755698426,52.282544777987276],[4.979014893135783,52.28928542590507],[4.965091383447318,52.28923654629382],[4.9651553568940745,52.28249590795697]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01579000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01579000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01579000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01579000001-warped.tif

# ==============================================
# Name: DUIZ01581000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01581000001.jpg ]; then
  wget -O output/downloads/DUIZ01581000001.jpg "https://webservices.picturae.com/mediabank/media/b8ffe89f-8687-b21d-38ad-08a883a29ec0/downloadoriginal/71b3dddf-cd7b-051b-8c4e-23674251345c?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 241 244 4.979014893135783 52.28928542590507 \
-gcp 5830 240 4.992938437466872 52.28933266555865 \
-gcp 5829 4653 4.992998189127589 52.28259200838122 \
-gcp 242 4669 4.979076755698426 52.282544777987276 \
   output/downloads/DUIZ01581000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01581000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.979076755698426,52.282544777987276],[4.992998189127589,52.28259200838122],[4.992938437466872,52.28933266555865],[4.979014893135783,52.28928542590507],[4.979076755698426,52.282544777987276]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01581000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01581000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01581000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01581000001-warped.tif

# ==============================================
# Name: DUIZ01582000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01582000001.jpg ]; then
  wget -O output/downloads/DUIZ01582000001.jpg "https://webservices.picturae.com/mediabank/media/2357abc6-0179-7fc5-0af9-043d9a909f17/downloadoriginal/a3782266-f8fb-b207-0da8-d94b1f9d9092?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 214 244 4.992938437466872 52.28933266555865 \
-gcp 5789 200 5.006862015258686 52.28937826524612 \
-gcp 5832 4615 5.006919656000268 52.28263759913051 \
-gcp 245 4668 4.992998189127589 52.28259200838122 \
   output/downloads/DUIZ01582000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01582000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.992998189127589,52.28259200838122],[5.006919656000268,52.28263759913051],[5.006862015258686,52.28937826524612],[4.992938437466872,52.28933266555865],[4.992998189127589,52.28259200838122]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01582000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01582000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01582000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01582000001-warped.tif

# ==============================================
# Name: DUIZ01588000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01588000001.jpg ]; then
  wget -O output/downloads/DUIZ01588000001.jpg "https://webservices.picturae.com/mediabank/media/059f650d-2cb9-2119-5604-8e9f67d5bd49/downloadoriginal/80d2f55a-3b71-1f3f-f3a6-a8236020072c?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 248 222 4.9651553568940745 52.28249590795697 \
-gcp 5820 234 4.979076755698426 52.282544777987276 \
-gcp 5818 4649 4.979138596680508 52.27580412141585 \
-gcp 228 4645 4.965219308024017 52.27575526096363 \
   output/downloads/DUIZ01588000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01588000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.965219308024017,52.27575526096363],[4.979138596680508,52.27580412141585],[4.979076755698426,52.282544777987276],[4.9651553568940745,52.28249590795697],[4.965219308024017,52.27575526096363]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01588000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01588000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01588000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01588000001-warped.tif

# ==============================================
# Name: DUIZ01889000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01889000001.jpg ]; then
  wget -O output/downloads/DUIZ01889000001.jpg "https://webservices.picturae.com/mediabank/media/5a59510c-6d86-06fc-0b87-6f31ac0368ce/downloadoriginal/7a47131b-294a-b6f0-4a9f-318aeecf5d71?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 212 201 4.810974279393187 52.36273567808911 \
-gcp 5782 214 4.824920595832051 52.362802741140335 \
-gcp 5780 4620 4.825006004480983 52.3560623149294 \
-gcp 202 4620 4.811061806812214 52.35599526503791 \
   output/downloads/DUIZ01889000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01889000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.811061806812214,52.35599526503791],[4.825006004480983,52.3560623149294],[4.824920595832051,52.362802741140335],[4.810974279393187,52.36273567808911],[4.811061806812214,52.35599526503791]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01889000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01889000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01889000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01889000001-warped.tif

# ==============================================
# Name: DUIZ01895000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01895000001.jpg ]; then
  wget -O output/downloads/DUIZ01895000001.jpg "https://webservices.picturae.com/mediabank/media/dd7f35bf-e0d7-3e2a-6d74-f91d308baf01/downloadoriginal/dce70a4d-a7d5-3780-f24c-c236aec9ea36?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 217 224 4.78308179500702 52.36259662187022 \
-gcp 5802 206 4.797028012055408 52.36266697166171 \
-gcp 5810 4621 4.797117658219233 52.35592657209263 \
-gcp 226 4645 4.783173559889732 52.35585623610571 \
   output/downloads/DUIZ01895000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01895000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.783173559889732,52.35585623610571],[4.797117658219233,52.35592657209263],[4.797028012055408,52.36266697166171],[4.78308179500702,52.36259662187022],[4.783173559889732,52.35585623610571]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01895000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01895000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01895000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01895000001-warped.tif

# ==============================================
# Name: DUIZ01900000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01900000001.jpg ]; then
  wget -O output/downloads/DUIZ01900000001.jpg "https://webservices.picturae.com/mediabank/media/4a305828-628a-5ba4-ec37-db1e8762126a/downloadoriginal/7fafbaf5-4574-a40a-c230-3cc1ceb93ec8?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 243 238 4.769135629436302 52.3625246287272 \
-gcp 5828 227 4.78308179500702 52.36259662187022 \
-gcp 5829 4639 4.783173559889732 52.35585623610571 \
-gcp 246 4649 4.769229513011378 52.35578425708963 \
   output/downloads/DUIZ01900000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01900000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.769229513011378,52.35578425708963],[4.783173559889732,52.35585623610571],[4.78308179500702,52.36259662187022],[4.769135629436302,52.3625246287272],[4.769229513011378,52.35578425708963]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01900000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01900000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01900000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01900000001-warped.tif

# ==============================================
# Name: DUIZ01910000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01910000001.jpg ]; then
  wget -O output/downloads/DUIZ01910000001.jpg "https://webservices.picturae.com/mediabank/media/8c7381ff-22a2-a6fc-cb45-2dda466670fa/downloadoriginal/d07c0315-eea6-7a96-ec77-ab6563dba257?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 214 223 4.811061806812214 52.35599526503791 \
-gcp 5783 197 4.825006004480983 52.3560623149294 \
-gcp 5802 4602 4.8250913832827855 52.349321879520716 \
-gcp 229 4630 4.811149303643842 52.34925484278496 \
   output/downloads/DUIZ01910000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01910000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.811149303643842,52.34925484278496],[4.8250913832827855,52.349321879520716],[4.825006004480983,52.3560623149294],[4.811061806812214,52.35599526503791],[4.811149303643842,52.34925484278496]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01910000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01910000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01910000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01910000001-warped.tif

# ==============================================
# Name: DUIZ01916000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01916000001.jpg ]; then
  wget -O output/downloads/DUIZ01916000001.jpg "https://webservices.picturae.com/mediabank/media/1ea7416f-47ee-c581-83cc-ee763c4a27f0/downloadoriginal/0fb54110-8f9c-5bcb-b84b-a3dfb9192195?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 132 233 4.797117658219233 52.35592657209263 \
-gcp 5714 227 4.811061806812214 52.35599526503791 \
-gcp 5711 4637 4.811149303643842 52.34925484278496 \
-gcp 126 4644 4.797207273055401 52.34918616331772 \
   output/downloads/DUIZ01916000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01916000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.797207273055401,52.34918616331772],[4.811149303643842,52.34925484278496],[4.811061806812214,52.35599526503791],[4.797117658219233,52.35592657209263],[4.797207273055401,52.34918616331772]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01916000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01916000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01916000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01916000001-warped.tif

# ==============================================
# Name: DUIZ01922000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01922000001.jpg ]; then
  wget -O output/downloads/DUIZ01922000001.jpg "https://webservices.picturae.com/mediabank/media/7c4431f1-f34f-f92e-f4ad-9d8a92baea66/downloadoriginal/8ce51d41-1a80-14f1-4394-ac37ca972045?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 202 219 4.783173559889732 52.35585623610571 \
-gcp 5775 203 4.797117658219233 52.35592657209263 \
-gcp 5784 4607 4.797207273055401 52.34918616331772 \
-gcp 213 4625 4.783265292704551 52.34911584113113 \
   output/downloads/DUIZ01922000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01922000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.783265292704551,52.34911584113113],[4.797207273055401,52.34918616331772],[4.797117658219233,52.35592657209263],[4.783173559889732,52.35585623610571],[4.783265292704551,52.34911584113113]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01922000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01922000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01922000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01922000001-warped.tif

# ==============================================
# Name: DUIZ01219000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01219000001.jpg ]; then
  wget -O output/downloads/DUIZ01219000001.jpg "https://webservices.picturae.com/mediabank/media/7e0775ae-e433-dbf4-c96e-afd0150e2b86/downloadoriginal/c0055fd1-70c2-2e9c-aabb-d9b2c19ee7d9?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 456 416 4.964514616272553 52.34990189418268 \
-gcp 6046 446 4.978457157112034 52.34995086015366 \
-gcp 6023 4869 4.978519214400325 52.34321029219094 \
-gcp 435 4848 4.964578791088314 52.34316133582713 \
   output/downloads/DUIZ01219000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01219000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.964578791088314,52.34316133582713],[4.978519214400325,52.34321029219094],[4.978457157112034,52.34995086015366],[4.964514616272553,52.34990189418268],[4.964578791088314,52.34316133582713]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01219000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01219000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01219000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01219000001-warped.tif

# ==============================================
# Name: DUIZ01220000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01220000001.jpg ]; then
  wget -O output/downloads/DUIZ01220000001.jpg "https://webservices.picturae.com/mediabank/media/86565c85-5c31-155f-d867-f55e3647457e/downloadoriginal/70f626e7-985f-baa6-274f-ee83859f67be?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 250 231 4.978457157112034 52.34995086015366 \
-gcp 5837 249 4.992399732755033 52.349998183270124 \
-gcp 5826 4656 4.992459672497925 52.34325760602246 \
-gcp 235 4643 4.978519214400325 52.34321029219094 \
   output/downloads/DUIZ01220000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01220000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.978519214400325,52.34321029219094],[4.992459672497925,52.34325760602246],[4.992399732755033,52.349998183270124],[4.978457157112034,52.34995086015366],[4.978519214400325,52.34321029219094]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01220000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01220000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01220000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01220000001-warped.tif

# ==============================================
# Name: DUIZ01223000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01223000001.jpg ]; then
  wget -O output/downloads/DUIZ01223000001.jpg "https://webservices.picturae.com/mediabank/media/4af6e77c-378a-6890-6b6c-93a2af9165a6/downloadoriginal/cb13ee78-df36-edb8-9010-60d31a6cb06b?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 267 257 4.992399732755033 52.349998183270124 \
-gcp 5848 271 5.00634234201415 52.35004386352358 \
-gcp 5841 4690 5.00640016419433 52.34330327731329 \
-gcp 250 4681 4.992459672497925 52.34325760602246 \
   output/downloads/DUIZ01223000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01223000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.992459672497925,52.34325760602246],[5.00640016419433,52.34330327731329],[5.00634234201415,52.35004386352358],[4.992399732755033,52.349998183270124],[4.992459672497925,52.34325760602246]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01223000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01223000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01223000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01223000001-warped.tif

# ==============================================
# Name: DUIZ01226000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01226000001.jpg ]; then
  wget -O output/downloads/DUIZ01226000001.jpg "https://webservices.picturae.com/mediabank/media/6a3d863a-13d5-0e38-35ce-9a992911f388/downloadoriginal/2ad8d718-272a-87d2-339e-9ecfbb2c3449?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 225 249 5.00634234201415 52.35004386352358 \
-gcp 5815 229 5.020284983701978 52.350087900906054 \
-gcp 5835 4638 5.020340688302742 52.34334730605538 \
-gcp 242 4663 5.00640016419433 52.34330327731329 \
   output/downloads/DUIZ01226000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01226000001.vrt

echo '{"type":"Polygon","coordinates":[[[5.00640016419433,52.34330327731329],[5.020340688302742,52.34334730605538],[5.020284983701978,52.350087900906054],[5.00634234201415,52.35004386352358],[5.00640016419433,52.34330327731329]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01226000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01226000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01226000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01226000001-warped.tif

# ==============================================
# Name: DUIZ01934000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01934000001.jpg ]; then
  wget -O output/downloads/DUIZ01934000001.jpg "https://webservices.picturae.com/mediabank/media/6d24f737-dfc7-7c73-6707-a6e595508cbb/downloadoriginal/09e78128-279e-26b6-b4f4-7adec480d535?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 3  4.8250913832827855 52.349321879520716 \
-gcp 94  4.839033510785126 52.34938727351315 \
-gcp 920  4.839116742440586 52.342646816123214 \
-gcp   4.8251767322528325 52.34258143496034 \
   output/downloads/DUIZ01934000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01934000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.8251767322528325,52.34258143496034],[4.839116742440586,52.342646816123214],[4.839033510785126,52.34938727351315],[4.8250913832827855,52.349321879520716],[4.8251767322528325,52.34258143496034]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01934000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01934000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01934000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01934000001-warped.tif

# ==============================================
# Name: DUIZ01940000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01940000001.jpg ]; then
  wget -O output/downloads/DUIZ01940000001.jpg "https://webservices.picturae.com/mediabank/media/6a62e26e-2dbb-c56a-04e5-6caa84311e61/downloadoriginal/84bc99ef-159d-9b81-660f-250c2d0970ca?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 221 240 4.811149303643842 52.34925484278496 \
-gcp 5810 220 4.8250913832827855 52.349321879520716 \
-gcp 5815 4637 4.8251767322528325 52.34258143496034 \
-gcp 251 4658 4.811236769903821 52.342514411376364 \
   output/downloads/DUIZ01940000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01940000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.811236769903821,52.342514411376364],[4.8251767322528325,52.34258143496034],[4.8250913832827855,52.349321879520716],[4.811149303643842,52.34925484278496],[4.811236769903821,52.342514411376364]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01940000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01940000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01940000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01940000001-warped.tif

# ==============================================
# Name: DUIZ01945000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01945000001.jpg ]; then
  wget -O output/downloads/DUIZ01945000001.jpg "https://webservices.picturae.com/mediabank/media/0b2ba754-f45e-1b3d-786e-55b18c569c75/downloadoriginal/1c5d11fd-8900-15e0-d7be-218fe4850d75?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 255 339 4.797207273055401 52.34918616331772 \
-gcp 5850 311 4.811149303643842 52.34925484278496 \
-gcp 5870 4741 4.811236769903821 52.342514411376364 \
-gcp 270 4767 4.797296856580052 52.342445745383046 \
   output/downloads/DUIZ01945000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01945000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.797296856580052,52.342445745383046],[4.811236769903821,52.342514411376364],[4.811149303643842,52.34925484278496],[4.797207273055401,52.34918616331772],[4.797296856580052,52.342445745383046]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01945000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01945000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01945000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01945000001-warped.tif

# ==============================================
# Name: DUIZ01951000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01951000001.jpg ]; then
  wget -O output/downloads/DUIZ01951000001.jpg "https://webservices.picturae.com/mediabank/media/3b4bfd78-fdff-464e-0b25-f6c19ca1ed36/downloadoriginal/1d10cc8b-627d-b6c2-6e47-3ddb5f6b71cf?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 216 244 4.783265292704551 52.34911584113113 \
-gcp 5828 213 4.797207273055401 52.34918616331772 \
-gcp 5840 4609 4.797296856580052 52.342445745383046 \
-gcp 251 4643 4.783356993468 52.34237543699265 \
   output/downloads/DUIZ01951000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01951000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.783356993468,52.34237543699265],[4.797296856580052,52.342445745383046],[4.797207273055401,52.34918616331772],[4.783265292704551,52.34911584113113],[4.783356993468,52.34237543699265]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01951000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01951000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01951000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01951000001-warped.tif

# ==============================================
# Name: DUIZ01955000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01955000001.jpg ]; then
  wget -O output/downloads/DUIZ01955000001.jpg "https://webservices.picturae.com/mediabank/media/b6550885-4ee0-497b-9986-e981ddb0246f/downloadoriginal/eec2fd50-6101-90f5-f3a2-75c98aa3230d?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 221 314 4.76932336377835 52.349043876237694 \
-gcp 5819 292 4.783265292704551 52.34911584113113 \
-gcp 5827 4679 4.783356993468 52.34237543699265 \
-gcp 240 4702 4.76941718175411 52.34230348621754 \
   output/downloads/DUIZ01955000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01955000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.76941718175411,52.34230348621754],[4.783356993468,52.34237543699265],[4.783265292704551,52.34911584113113],[4.76932336377835,52.349043876237694],[4.76941718175411,52.34230348621754]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01955000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01955000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01955000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01955000001-warped.tif

# ==============================================
# Name: DUIZ01961000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01961000001.jpg ]; then
  wget -O output/downloads/DUIZ01961000001.jpg "https://webservices.picturae.com/mediabank/media/1680774c-d0ca-3461-0eca-90fc6224447c/downloadoriginal/df8020fd-acfa-11ad-326a-22f8fabfe468?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 199 401 4.8251767322528325 52.34258143496034 \
-gcp 5774 416 4.839116742440586 52.342646816123214 \
-gcp 5758 4816 4.83919994501918 52.33590634963156 \
-gcp 176 4803 4.825262051406486 52.33584098129435 \
   output/downloads/DUIZ01961000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01961000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.825262051406486,52.33584098129435],[4.83919994501918,52.33590634963156],[4.839116742440586,52.342646816123214],[4.8251767322528325,52.34258143496034],[4.825262051406486,52.33584098129435]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01961000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01961000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01961000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01961000001-warped.tif

# ==============================================
# Name: DUIZ01968000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01968000001.jpg ]; then
  wget -O output/downloads/DUIZ01968000001.jpg "https://webservices.picturae.com/mediabank/media/817837c8-f0b2-3750-f73e-08ecd36a99ab/downloadoriginal/8803784f-c565-7155-324e-edd66a771a2f?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 312 355 4.811236769903821 52.342514411376364 \
-gcp 5889 350 4.8251767322528325 52.34258143496034 \
-gcp 5893 4774 4.825262051406486 52.33584098129435 \
-gcp 310 4785 4.8113242056079 52.335773970858114 \
   output/downloads/DUIZ01968000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01968000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.8113242056079,52.335773970858114],[4.825262051406486,52.33584098129435],[4.8251767322528325,52.34258143496034],[4.811236769903821,52.342514411376364],[4.8113242056079,52.335773970858114]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01968000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01968000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01968000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01968000001-warped.tif

# ==============================================
# Name: DUIZ01978000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01978000001.jpg ]; then
  wget -O output/downloads/DUIZ01978000001.jpg "https://webservices.picturae.com/mediabank/media/0bf99546-0171-bbaf-a78e-a54004f0ea02/downloadoriginal/6e6315a5-c41c-1cdb-9821-b9c83c865b0c?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 284 292 4.797296856580052 52.342445745383046 \
-gcp 5871 255 4.811236769903821 52.342514411376364 \
-gcp 5899 4681 4.8113242056079 52.335773970858114 \
-gcp 307 4723 4.797386408809309 52.33570531833469 \
   output/downloads/DUIZ01978000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01978000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.797386408809309,52.33570531833469],[4.8113242056079,52.335773970858114],[4.811236769903821,52.342514411376364],[4.797296856580052,52.342445745383046],[4.797386408809309,52.33570531833469]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01978000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01978000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01978000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01978000001-warped.tif

# ==============================================
# Name: DUIZ01984000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01984000001.jpg ]; then
  wget -O output/downloads/DUIZ01984000001.jpg "https://webservices.picturae.com/mediabank/media/73700002-28c9-f01b-1f0f-d4b6b3d12c07/downloadoriginal/268f0c75-4196-7c2a-ddb3-b7cbaf74123e?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 233 238 4.783356993468 52.34237543699265 \
-gcp 5822 237 4.797296856580052 52.342445745383046 \
-gcp 5812 4630 4.797386408809309 52.33570531833469 \
-gcp 240 4636 4.783448662196583 52.33563502373624 \
   output/downloads/DUIZ01984000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01984000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.783448662196583,52.33563502373624],[4.797386408809309,52.33570531833469],[4.797296856580052,52.342445745383046],[4.783356993468,52.34237543699265],[4.783448662196583,52.33563502373624]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01984000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01984000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01984000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01984000001-warped.tif

# ==============================================
# Name: DUIZ01989000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01989000001.jpg ]; then
  wget -O output/downloads/DUIZ01989000001.jpg "https://webservices.picturae.com/mediabank/media/4ac45387-7378-9b53-921b-4206eb4c5c4e/downloadoriginal/1d117666-dd63-75ad-b847-d6ccf0bfcb42?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 164 182 4.825262051406486 52.33584098129435 \
-gcp 5730 183 4.83919994501918 52.33590634963156 \
-gcp 5728 4586 4.83928311853588 52.32916587408431 \
-gcp 156 4591 4.8253473407591 52.329100518568865 \
   output/downloads/DUIZ01989000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01989000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.8253473407591,52.329100518568865],[4.83928311853588,52.32916587408431],[4.83919994501918,52.33590634963156],[4.825262051406486,52.33584098129435],[4.8253473407591,52.329100518568865]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01989000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01989000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01989000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01989000001-warped.tif

# ==============================================
# Name: DUIZ01996000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01996000001.jpg ]; then
  wget -O output/downloads/DUIZ01996000001.jpg "https://webservices.picturae.com/mediabank/media/2ee1b15f-dfad-6477-4d75-05319c868f2f/downloadoriginal/5687473d-4378-024e-a718-055909bee318?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 200 247 4.797386408809309 52.33570531833469 \
-gcp 5765 235 4.8113242056079 52.335773970858114 \
-gcp 5774 4637 4.8114116107718115 52.329033521276365 \
-gcp 206 4656 4.797475929759291 52.32896488221871 \
   output/downloads/DUIZ01996000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ01996000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.797475929759291,52.32896488221871],[4.8114116107718115,52.329033521276365],[4.8113242056079,52.335773970858114],[4.797386408809309,52.33570531833469],[4.797475929759291,52.32896488221871]]]}' > output/publieke-werken-1985/3857/warped/DUIZ01996000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ01996000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ01996000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ01996000001-warped.tif

# ==============================================
# Name: DUIZ02003000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ02003000001.jpg ]; then
  wget -O output/downloads/DUIZ02003000001.jpg "https://webservices.picturae.com/mediabank/media/f6053ccd-bb79-0bbc-9182-a1579594351c/downloadoriginal/765c935c-50ed-856e-18f5-379534648b91?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 222 196 4.8114116107718115 52.329033521276365 \
-gcp 5790 194 4.8253473407591 52.329100518568865 \
-gcp 5787 4599 4.82543260032602 52.322360046829914 \
-gcp 215 4607 4.811498985411282 52.32229306267722 \
   output/downloads/DUIZ02003000001.jpg \
   output/publieke-werken-1985/3857/warped/DUIZ02003000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.811498985411282,52.32229306267722],[4.82543260032602,52.322360046829914],[4.8253473407591,52.329100518568865],[4.8114116107718115,52.329033521276365],[4.811498985411282,52.32229306267722]]]}' > output/publieke-werken-1985/3857/warped/DUIZ02003000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1985/3857/warped/DUIZ02003000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1985/3857/warped/DUIZ02003000001.vrt \
  output/publieke-werken-1985/3857/warped/DUIZ02003000001-warped.tif

# ==============================================
# Add overviews and create index:
# ==============================================

mkdir -p output/publieke-werken-1985/3857

for j in output/publieke-werken-1985/3857/warped/*.tif; do
  gdaladdo -r cubic \
    --config COMPRESS_OVERVIEW JPEG \
    --config PHOTOMETRIC_OVERVIEW YCBCR \
    --config INTERLEAVE_OVERVIEW PIXEL \
    $j 2 4 8 16 32 64 128
done

# Create tile indices
cd output/publieke-werken-1985/3857
gdaltindex index.shp warped/*.tif
ogrinfo -sql "CREATE SPATIAL INDEX ON index" index.shp

gdalbuildvrt index.vrt index.shp
