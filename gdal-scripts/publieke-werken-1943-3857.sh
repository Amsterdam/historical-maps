#!/bin/bash

# Create the directory that will contain the warped TIFFs:
mkdir -p output/downloads
mkdir -p output/publieke-werken-1943/3857/warped

# ==============================================
# Name: DUIZ00055000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00055000001.jpg ]; then
  wget -O output/downloads/DUIZ00055000001.jpg "https://webservices.picturae.com/mediabank/media/29a91493-e2a0-148e-4fad-662aa99b518b/downloadoriginal/be2b7e63-274a-1d6b-8fa2-2109939a544a?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 175 187 4.838199591701413 52.41679133668231 \
-gcp 5762 192 4.852162980025028 52.41685521320238 \
-gcp 5757 4592 4.852244378519896 52.410114836818096 \
-gcp 176 4589 4.838283114951327 52.410050972843436 \
   output/downloads/DUIZ00055000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00055000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.838283114951327,52.410050972843436],[4.852244378519896,52.410114836818096],[4.852162980025028,52.41685521320238],[4.838199591701413,52.41679133668231],[4.838283114951327,52.410050972843436]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00055000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00055000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00055000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00055000001-warped.tif

# ==============================================
# Name: DUIZ00072000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00072000001.jpg ]; then
  wget -O output/downloads/DUIZ00072000001.jpg "https://webservices.picturae.com/mediabank/media/c485c009-b8fb-85b7-9eed-55f8c038db60/downloadoriginal/669d819b-36e7-1272-6a20-69636f7b4c7d?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 177 198 4.852162980025028 52.41685521320238 \
-gcp 5761 205 4.866126414072906 52.41691744372867 \
-gcp 5758 4615 4.866205687789138 52.41017705512218 \
-gcp 165 4609 4.852244378519896 52.410114836818096 \
   output/downloads/DUIZ00072000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00072000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.852244378519896,52.410114836818096],[4.866205687789138,52.41017705512218],[4.866126414072906,52.41691744372867],[4.852162980025028,52.41685521320238],[4.852244378519896,52.410114836818096]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00072000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00072000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00072000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00072000001-warped.tif

# ==============================================
# Name: DUIZ00081000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00081000001.jpg ]; then
  wget -O output/downloads/DUIZ00081000001.jpg "https://webservices.picturae.com/mediabank/media/8be10dbf-f4fa-a193-852a-ab5e0d63ac9f/downloadoriginal/d41b7877-1470-0c60-81d2-9aaf7ae29248?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 179 195 4.866126414072906 52.41691744372867 \
-gcp 5771 199 4.880089892651724 52.41697802825018 \
-gcp 5767 4604 4.880167041566347 52.410237627744756 \
-gcp 176 4600 4.866205687789138 52.41017705512218 \
   output/downloads/DUIZ00081000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00081000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866205687789138,52.41017705512218],[4.880167041566347,52.410237627744756],[4.880089892651724,52.41697802825018],[4.866126414072906,52.41691744372867],[4.866205687789138,52.41017705512218]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00081000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00081000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00081000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00081000001-warped.tif

# ==============================================
# Name: DUIZ00088000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00088000001.jpg ]; then
  wget -O output/downloads/DUIZ00088000001.jpg "https://webservices.picturae.com/mediabank/media/1dba99f3-4a52-04e9-ebc9-a572c5e42124/downloadoriginal/6bafe1f1-1842-0273-19df-937437b4fe52?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 180 215 4.880089892651724 52.41697802825018 \
-gcp 5777 191 4.8940534145681225 52.417036966756186 \
-gcp 5797 4595 4.894128438658776 52.4102965546749 \
-gcp 200 4624 4.880167041566347 52.410237627744756 \
   output/downloads/DUIZ00088000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00088000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880167041566347,52.410237627744756],[4.894128438658776,52.4102965546749],[4.8940534145681225,52.417036966756186],[4.880089892651724,52.41697802825018],[4.880167041566347,52.410237627744756]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00088000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00088000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00088000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00088000001-warped.tif

# ==============================================
# Name: DUIZ00094000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00094000001.jpg ]; then
  wget -O output/downloads/DUIZ00094000001.jpg "https://webservices.picturae.com/mediabank/media/e6d46916-7a14-8410-6f40-fbbc297c7a14/downloadoriginal/61ca0627-8293-9d9f-c845-21343d22a869?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 187 204 4.8940534145681225 52.417036966756186 \
-gcp 5780 201 4.90801697862873 52.41709425923615 \
-gcp 5781 4613 4.908089877873669 52.41035383590234 \
-gcp 187 4618 4.894128438658776 52.4102965546749 \
   output/downloads/DUIZ00094000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00094000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894128438658776,52.4102965546749],[4.908089877873669,52.41035383590234],[4.90801697862873,52.41709425923615],[4.8940534145681225,52.417036966756186],[4.894128438658776,52.4102965546749]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00094000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00094000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00094000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00094000001-warped.tif

# ==============================================
# Name: DUIZ00101000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00101000001.jpg ]; then
  wget -O output/downloads/DUIZ00101000001.jpg "https://webservices.picturae.com/mediabank/media/ad8d837f-4be1-5fc1-9295-58efff7c2c9a/downloadoriginal/94ab5a52-1015-f030-2bad-0a6a42df0d6e?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 204 184 4.9219805836401385 52.41714990568 \
-gcp 5788 199 4.935944228408924 52.41720390607777 \
-gcp 5777 4580 4.9360128778996675 52.41046346120849 \
-gcp 186 4572 4.922051358018236 52.41040947141681 \
   output/downloads/DUIZ00101000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00101000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922051358018236,52.41040947141681],[4.9360128778996675,52.41046346120849],[4.935944228408924,52.41720390607777],[4.9219805836401385,52.41714990568],[4.922051358018236,52.41040947141681]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00101000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00101000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00101000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00101000001-warped.tif

# ==============================================
# Name: DUIZ00107000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00107000001.jpg ]; then
  wget -O output/downloads/DUIZ00107000001.jpg "https://webservices.picturae.com/mediabank/media/c13baedb-6357-0648-355f-95524c39fa44/downloadoriginal/6f15db3c-818b-22d3-ba3a-1445a669df11?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 196 192 4.935944228408924 52.41720390607777 \
-gcp 5780 202 4.949907911741642 52.41725626042002 \
-gcp 5773 4581 4.9499744363251335 52.410515805267835 \
-gcp 183 4576 4.9360128778996675 52.41046346120849 \
   output/downloads/DUIZ00107000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00107000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.9360128778996675,52.41046346120849],[4.9499744363251335,52.410515805267835],[4.949907911741642,52.41725626042002],[4.935944228408924,52.41720390607777],[4.9360128778996675,52.41046346120849]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00107000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00107000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00107000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00107000001-warped.tif

# ==============================================
# Name: DUIZ00113000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00113000001.jpg ]; then
  wget -O output/downloads/DUIZ00113000001.jpg "https://webservices.picturae.com/mediabank/media/28ad000a-d8f5-83ec-0702-4c128e88768a/downloadoriginal/e9b32b69-4c70-590a-964c-6929c4adb72e?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 184 193 4.949907911741642 52.41725626042002 \
-gcp 5781 204 4.9638716324448175 52.41730696869735 \
-gcp 5761 4587 4.963936032101777 52.4105665035855 \
-gcp 176 4579 4.9499744363251335 52.410515805267835 \
   output/downloads/DUIZ00113000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00113000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.9499744363251335,52.410515805267835],[4.963936032101777,52.4105665035855],[4.9638716324448175,52.41730696869735],[4.949907911741642,52.41725626042002],[4.9499744363251335,52.410515805267835]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00113000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00113000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00113000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00113000001-warped.tif

# ==============================================
# Name: DUIZ00124000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00124000001.jpg ]; then
  wget -O output/downloads/DUIZ00124000001.jpg "https://webservices.picturae.com/mediabank/media/a808e589-7fab-f184-9898-4ac3e8837cc4/downloadoriginal/3b68f612-0c85-6cc7-b06a-230039b26d11?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 185 193 4.838283114951327 52.410050972843436 \
-gcp 5780 208 4.852244378519896 52.410114836818096 \
-gcp 5764 4597 4.852325748530965 52.403374450875255 \
-gcp 172 4587 4.838366608974078 52.403310599442165 \
   output/downloads/DUIZ00124000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00124000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.838366608974078,52.403310599442165],[4.852325748530965,52.403374450875255],[4.852244378519896,52.410114836818096],[4.838283114951327,52.410050972843436],[4.838366608974078,52.403310599442165]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00124000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00124000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00124000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00124000001-warped.tif

# ==============================================
# Name: DUIZ00135000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00135000001.jpg ]; then
  wget -O output/downloads/DUIZ00135000001.jpg "https://webservices.picturae.com/mediabank/media/756c7a00-cd8e-df3d-d8a2-67256e157248/downloadoriginal/2313d46b-39bf-ad99-08af-30089b7f8c25?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 191 188 4.852244378519896 52.410114836818096 \
-gcp 5769 203 4.866205687789138 52.41017705512218 \
-gcp 5756 4596 4.866284933764953 52.403436656960864 \
-gcp 181 4583 4.852325748530965 52.403374450875255 \
   output/downloads/DUIZ00135000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00135000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.852325748530965,52.403374450875255],[4.866284933764953,52.403436656960864],[4.866205687789138,52.41017705512218],[4.852244378519896,52.410114836818096],[4.852325748530965,52.403374450875255]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00135000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00135000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00135000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00135000001-warped.tif

# ==============================================
# Name: DUIZ00145000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00145000001.jpg ]; then
  wget -O output/downloads/DUIZ00145000001.jpg "https://webservices.picturae.com/mediabank/media/00ab9aa2-ac0e-36d4-2a78-6a1ddcaaee8d/downloadoriginal/5ef00166-2967-4525-e6e4-62ca2c113fa0?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 174 212 4.866205687789138 52.41017705512218 \
-gcp 5784 227 4.880167041566347 52.410237627744756 \
-gcp 5778 4614 4.880244163483944 52.40349721768798 \
-gcp 166 4603 4.866284933764953 52.403436656960864 \
   output/downloads/DUIZ00145000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00145000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866284933764953,52.403436656960864],[4.880244163483944,52.40349721768798],[4.880167041566347,52.410237627744756],[4.866205687789138,52.41017705512218],[4.866284933764953,52.403436656960864]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00145000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00145000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00145000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00145000001-warped.tif

# ==============================================
# Name: DUIZ00151000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00151000001.jpg ]; then
  wget -O output/downloads/DUIZ00151000001.jpg "https://webservices.picturae.com/mediabank/media/78a17b37-f3d6-77e0-9f87-a20044c1ba6e/downloadoriginal/37194a07-2a56-2510-14c0-91672dc8ebf0?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 182 196 4.880167041566347 52.410237627744756 \
-gcp 5774 209 4.894128438658776 52.4102965546749 \
-gcp 5769 4606 4.8942034364958165 52.40355613304592 \
-gcp 170 4601 4.880244163483944 52.40349721768798 \
   output/downloads/DUIZ00151000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00151000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880244163483944,52.40349721768798],[4.8942034364958165,52.40355613304592],[4.894128438658776,52.4102965546749],[4.880167041566347,52.410237627744756],[4.880244163483944,52.40349721768798]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00151000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00151000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00151000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00151000001-warped.tif

# ==============================================
# Name: DUIZ00156000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00156000001.jpg ]; then
  wget -O output/downloads/DUIZ00156000001.jpg "https://webservices.picturae.com/mediabank/media/f80abd22-1819-7475-5d4f-c4e61d4b3cdf/downloadoriginal/3f590242-07dc-0683-63bb-5b41c84351c6?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 195 171 4.894128438658776 52.4102965546749 \
-gcp 5768 192 4.908089877873669 52.41035383590234 \
-gcp 5758 4598 4.908162751608422 52.403613403024195 \
-gcp 172 4567 4.8942034364958165 52.40355613304592 \
   output/downloads/DUIZ00156000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00156000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.8942034364958165,52.40355613304592],[4.908162751608422,52.403613403024195],[4.908089877873669,52.41035383590234],[4.894128438658776,52.4102965546749],[4.8942034364958165,52.40355613304592]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00156000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00156000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00156000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00156000001-warped.tif

# ==============================================
# Name: DUIZ00162000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00162000001.jpg ]; then
  wget -O output/downloads/DUIZ00162000001.jpg "https://webservices.picturae.com/mediabank/media/cab803ca-7751-bcb2-6a58-a173806301c1/downloadoriginal/bc5fef91-7d8e-1875-2ef2-a0a6e9f8c8ba?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 195 184 4.908089877873669 52.41035383590234 \
-gcp 5775 185 4.922051358018236 52.41040947141681 \
-gcp 5769 4591 4.92212210762959 52.40366902761266 \
-gcp 186 4589 4.908162751608422 52.403613403024195 \
   output/downloads/DUIZ00162000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00162000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908162751608422,52.403613403024195],[4.92212210762959,52.40366902761266],[4.922051358018236,52.41040947141681],[4.908089877873669,52.41035383590234],[4.908162751608422,52.403613403024195]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00162000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00162000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00162000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00162000001-warped.tif

# ==============================================
# Name: DUIZ00168000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00168000001.jpg ]; then
  wget -O output/downloads/DUIZ00168000001.jpg "https://webservices.picturae.com/mediabank/media/872086ba-5d7c-7c27-3a89-dd805b9cd389/downloadoriginal/e0d316d5-b5ac-fab4-ec0f-5626dc104e06?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 182 195 4.922051358018236 52.41040947141681 \
-gcp 5787 197 4.9360128778996675 52.41046346120849 \
-gcp 5786 4612 4.936081503367122 52.403723006801435 \
-gcp 176 4612 4.92212210762959 52.40366902761266 \
   output/downloads/DUIZ00168000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00168000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.92212210762959,52.40366902761266],[4.936081503367122,52.403723006801435],[4.9360128778996675,52.41046346120849],[4.922051358018236,52.41040947141681],[4.92212210762959,52.40366902761266]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00168000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00168000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00168000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00168000001-warped.tif

# ==============================================
# Name: DUIZ00174000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00174000001.jpg ]; then
  wget -O output/downloads/DUIZ00174000001.jpg "https://webservices.picturae.com/mediabank/media/7dfc26be-cd53-01ba-023f-1615774ecfec/downloadoriginal/668b0b4c-49a1-30e6-ef96-52ac26aa55d3?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 182 186 4.9360128778996675 52.41046346120849 \
-gcp 5786 183 4.9499744363251335 52.410515805267835 \
-gcp 5786 4595 4.950040937628804 52.403775340581 \
-gcp 181 4599 4.936081503367122 52.403723006801435 \
   output/downloads/DUIZ00174000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00174000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936081503367122,52.403723006801435],[4.950040937628804,52.403775340581],[4.9499744363251335,52.410515805267835],[4.9360128778996675,52.41046346120849],[4.936081503367122,52.403723006801435]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00174000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00174000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00174000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00174000001-warped.tif

# ==============================================
# Name: DUIZ00180000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00180000001.jpg ]; then
  wget -O output/downloads/DUIZ00180000001.jpg "https://webservices.picturae.com/mediabank/media/5c628033-ebcd-255a-ff54-a988e797284a/downloadoriginal/fbddf385-f421-ce57-3052-9795ead55e11?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 203 167 4.9499744363251335 52.410515805267835 \
-gcp 5808 177 4.963936032101777 52.4105665035855 \
-gcp 5800 4586 4.964000409222395 52.40382602894206 \
-gcp 197 4582 4.950040937628804 52.403775340581 \
   output/downloads/DUIZ00180000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00180000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.950040937628804,52.403775340581],[4.964000409222395,52.40382602894206],[4.963936032101777,52.4105665035855],[4.9499744363251335,52.410515805267835],[4.950040937628804,52.403775340581]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00180000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00180000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00180000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00180000001-warped.tif

# ==============================================
# Name: DUIZ00195000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00195000001.jpg ]; then
  wget -O output/downloads/DUIZ00195000001.jpg "https://webservices.picturae.com/mediabank/media/a0bfb535-3267-52bf-10e3-438d90da34a6/downloadoriginal/ad5ea494-70f7-0b9c-eef3-8c6219edd319?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 192 208 4.838366608974078 52.403310599442165 \
-gcp 5799 181 4.852325748530965 52.403374450875255 \
-gcp 5818 4575 4.8524070900729255 52.396634055419845 \
-gcp 209 4603 4.838450073784738 52.39657021652456 \
   output/downloads/DUIZ00195000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00195000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.838450073784738,52.39657021652456],[4.8524070900729255,52.396634055419845],[4.852325748530965,52.403374450875255],[4.838366608974078,52.403310599442165],[4.838450073784738,52.39657021652456]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00195000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00195000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00195000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00195000001-warped.tif

# ==============================================
# Name: DUIZ00201000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00201000001.jpg ]; then
  wget -O output/downloads/DUIZ00201000001.jpg "https://webservices.picturae.com/mediabank/media/45491c0e-ab00-db01-285e-806ccafe9421/downloadoriginal/e3b9a2e8-2ae8-cafb-d0c5-d0d69c2afbf4?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 190 192 4.852325748530965 52.403374450875255 \
-gcp 5774 196 4.866284933764953 52.403436656960864 \
-gcp 5775 4600 4.866364152014655 52.396696249290706 \
-gcp 187 4596 4.8524070900729255 52.396634055419845 \
   output/downloads/DUIZ00201000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00201000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.8524070900729255,52.396634055419845],[4.866364152014655,52.396696249290706],[4.866284933764953,52.403436656960864],[4.852325748530965,52.403374450875255],[4.8524070900729255,52.396634055419845]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00201000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00201000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00201000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00201000001-warped.tif

# ==============================================
# Name: DUIZ00209000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00209000001.jpg ]; then
  wget -O output/downloads/DUIZ00209000001.jpg "https://webservices.picturae.com/mediabank/media/d02ac41e-beb7-3c02-31cb-f6dd48982750/downloadoriginal/45a89554-b2b0-f77a-cc53-a75fbe31effd?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 186 200 4.866284933764953 52.403436656960864 \
-gcp 5772 190 4.880244163483944 52.40349721768798 \
-gcp 5779 4597 4.880321258418444 52.39675679812607 \
-gcp 186 4609 4.866364152014655 52.396696249290706 \
   output/downloads/DUIZ00209000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00209000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866364152014655,52.396696249290706],[4.880321258418444,52.39675679812607],[4.880244163483944,52.40349721768798],[4.866284933764953,52.403436656960864],[4.866364152014655,52.396696249290706]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00209000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00209000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00209000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00209000001-warped.tif

# ==============================================
# Name: DUIZ00215000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00215000001.jpg ]; then
  wget -O output/downloads/DUIZ00215000001.jpg "https://webservices.picturae.com/mediabank/media/b875dc98-fbf7-34c1-86d9-ddbf5a26285d/downloadoriginal/94cd6de2-e10d-e34c-4ac0-01ff83698521?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 180 189 4.880244163483944 52.40349721768798 \
-gcp 5756 185 4.8942034364958165 52.40355613304592 \
-gcp 5756 4601 4.894278408092784 52.39681570191524 \
-gcp 183 4606 4.880321258418444 52.39675679812607 \
   output/downloads/DUIZ00215000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00215000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880321258418444,52.39675679812607],[4.894278408092784,52.39681570191524],[4.8942034364958165,52.40355613304592],[4.880244163483944,52.40349721768798],[4.880321258418444,52.39675679812607]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00215000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00215000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00215000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00215000001-warped.tif

# ==============================================
# Name: DUIZ00225000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00225000001.jpg ]; then
  wget -O output/downloads/DUIZ00225000001.jpg "https://webservices.picturae.com/mediabank/media/ee78c382-9fcd-a320-2e42-189e9084d733/downloadoriginal/6730a9ac-a1fc-638c-88c4-b24c9a846028?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 303 338 4.8942034364958165 52.40355613304592 \
-gcp 7682 325 4.908162751608422 52.403613403024195 \
-gcp 7711 6125 4.908235599846147 52.39687296064778 \
-gcp 312 6149 4.894278408092784 52.39681570191524 \
   output/downloads/DUIZ00225000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00225000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894278408092784,52.39681570191524],[4.908235599846147,52.39687296064778],[4.908162751608422,52.403613403024195],[4.8942034364958165,52.40355613304592],[4.894278408092784,52.39681570191524]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00225000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00225000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00225000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00225000001-warped.tif

# ==============================================
# Name: DUIZ00237000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00237000001.jpg ]; then
  wget -O output/downloads/DUIZ00237000001.jpg "https://webservices.picturae.com/mediabank/media/2d82d81e-8c78-1bea-5950-2d742de68106/downloadoriginal/744bf7da-5b97-5198-b506-0c6694ca218e?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 332 296 4.908162751608422 52.403613403024195 \
-gcp 7742 355 4.92212210762959 52.40366902761266 \
-gcp 7701 6187 4.922192832486973 52.39692857431355 \
-gcp 290 6137 4.908235599846147 52.39687296064778 \
   output/downloads/DUIZ00237000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00237000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908235599846147,52.39687296064778],[4.922192832486973,52.39692857431355],[4.92212210762959,52.40366902761266],[4.908162751608422,52.403613403024195],[4.908235599846147,52.39687296064778]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00237000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00237000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00237000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00237000001-warped.tif

# ==============================================
# Name: DUIZ00245000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00245000001.jpg ]; then
  wget -O output/downloads/DUIZ00245000001.jpg "https://webservices.picturae.com/mediabank/media/7f105f39-3044-188c-7319-49c169bff5e9/downloadoriginal/9faab3a8-6137-ea16-eb52-8ca6f4218371?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 320 366 4.92212210762959 52.40366902761266 \
-gcp 7706 318 4.936081503367122 52.403723006801435 \
-gcp 7745 6100 4.936150104823676 52.396982542902656 \
-gcp 364 6156 4.922192832486973 52.39692857431355 \
   output/downloads/DUIZ00245000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00245000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922192832486973,52.39692857431355],[4.936150104823676,52.396982542902656],[4.936081503367122,52.403723006801435],[4.92212210762959,52.40366902761266],[4.922192832486973,52.39692857431355]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00245000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00245000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00245000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00245000001-warped.tif

# ==============================================
# Name: DUIZ00252000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00252000001.jpg ]; then
  wget -O output/downloads/DUIZ00252000001.jpg "https://webservices.picturae.com/mediabank/media/b99346cc-b6f1-ff57-f162-66121d261212/downloadoriginal/4b4c99d7-8496-de60-d374-9f79a49d1af7?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 332 378 4.936081503367122 52.403723006801435 \
-gcp 7700 330 4.950040937628804 52.403775340581 \
-gcp 7750 6108 4.950107415664662 52.39703486640556 \
-gcp 364 6165 4.936150104823676 52.396982542902656 \
   output/downloads/DUIZ00252000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00252000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936150104823676,52.396982542902656],[4.950107415664662,52.39703486640556],[4.950040937628804,52.403775340581],[4.936081503367122,52.403723006801435],[4.936150104823676,52.396982542902656]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00252000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00252000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00252000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00252000001-warped.tif

# ==============================================
# Name: DUIZ00258000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00258000001.jpg ]; then
  wget -O output/downloads/DUIZ00258000001.jpg "https://webservices.picturae.com/mediabank/media/4e887dfd-9c06-8451-746a-fcb609084992/downloadoriginal/c656f2bb-153c-bf87-dfd4-9dce18f2d88f?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 327 369 4.950040937628804 52.403775340581 \
-gcp 7692 323 4.964000409222395 52.40382602894206 \
-gcp 7735 6101 4.964064763818304 52.397085544813 \
-gcp 354 6148 4.950107415664662 52.39703486640556 \
   output/downloads/DUIZ00258000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00258000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.950107415664662,52.39703486640556],[4.964064763818304,52.397085544813],[4.964000409222395,52.40382602894206],[4.950040937628804,52.403775340581],[4.950107415664662,52.39703486640556]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00258000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00258000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00258000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00258000001-warped.tif

# ==============================================
# Name: DUIZ00275000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00275000001.jpg ]; then
  wget -O output/downloads/DUIZ00275000001.jpg "https://webservices.picturae.com/mediabank/media/74368257-1fd7-5b20-fac5-f9cab417699d/downloadoriginal/c6b49e43-55e2-c1a6-5c1d-e9c4eef32ea0?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 314 390 4.838450073784738 52.39657021652456 \
-gcp 7690 334 4.8524070900729255 52.396634055419845 \
-gcp 7749 6123 4.852488403160459 52.389893650497974 \
-gcp 362 6194 4.838533509398376 52.38982982413665 \
   output/downloads/DUIZ00275000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00275000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.838533509398376,52.38982982413665],[4.852488403160459,52.389893650497974],[4.8524070900729255,52.396634055419845],[4.838450073784738,52.39657021652456],[4.838533509398376,52.38982982413665]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00275000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00275000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00275000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00275000001-warped.tif

# ==============================================
# Name: DUIZ00284000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00284000001.jpg ]; then
  wget -O output/downloads/DUIZ00284000001.jpg "https://webservices.picturae.com/mediabank/media/4652b115-a485-015c-2f1c-741114952965/downloadoriginal/603cdbc5-08d4-d5a5-bdf2-3d68f51f4eac?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 497 513 4.8524070900729255 52.396634055419845 \
-gcp 7870 467 4.866364152014655 52.396696249290706 \
-gcp 7917 6289 4.866443342552546 52.38995583215777 \
-gcp 527 6338 4.852488403160459 52.389893650497974 \
   output/downloads/DUIZ00284000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00284000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.852488403160459,52.389893650497974],[4.866443342552546,52.38995583215777],[4.866364152014655,52.396696249290706],[4.8524070900729255,52.396634055419845],[4.852488403160459,52.389893650497974]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00284000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00284000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00284000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00284000001-warped.tif

# ==============================================
# Name: DUIZ00296000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00296000001.jpg ]; then
  wget -O output/downloads/DUIZ00296000001.jpg "https://webservices.picturae.com/mediabank/media/0c441075-acfb-60dc-9f23-1c2b7ba19241/downloadoriginal/1d42795d-196f-eda5-5818-34dce21a2c15?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 499 526 4.866364152014655 52.396696249290706 \
-gcp 7876 476 4.880321258418444 52.39675679812607 \
-gcp 7929 6301 4.880398326383764 52.39001636910501 \
-gcp 536 6359 4.866443342552546 52.38995583215777 \
   output/downloads/DUIZ00296000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00296000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866443342552546,52.38995583215777],[4.880398326383764,52.39001636910501],[4.880321258418444,52.39675679812607],[4.866364152014655,52.396696249290706],[4.866443342552546,52.38995583215777]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00296000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00296000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00296000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00296000001-warped.tif

# ==============================================
# Name: DUIZ00304000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00304000001.jpg ]; then
  wget -O output/downloads/DUIZ00304000001.jpg "https://webservices.picturae.com/mediabank/media/07a6a19a-4465-1eb1-39ef-3a33adb9093f/downloadoriginal/a414da8e-4ef3-0a38-8f6d-e6aa67f26556?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 305 373 4.880321258418444 52.39675679812607 \
-gcp 7655 329 4.894278408092784 52.39681570191524 \
-gcp 7699 6145 4.894353353463219 52.39007526132896 \
-gcp 343 6198 4.880398326383764 52.39001636910501 \
   output/downloads/DUIZ00304000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00304000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880398326383764,52.39001636910501],[4.894353353463219,52.39007526132896],[4.894278408092784,52.39681570191524],[4.880321258418444,52.39675679812607],[4.880398326383764,52.39001636910501]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00304000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00304000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00304000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00304000001-warped.tif

# ==============================================
# Name: DUIZ00314000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00314000001.jpg ]; then
  wget -O output/downloads/DUIZ00314000001.jpg "https://webservices.picturae.com/mediabank/media/23bb0376-e01a-8e7d-a1b0-28ccb198a97a/downloadoriginal/12c05937-a7a0-bd19-d994-5dab2d70314d?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 333 347 4.894278408092784 52.39681570191524 \
-gcp 7697 333 4.908235599846147 52.39687296064778 \
-gcp 7730 6136 4.9083084225999976 52.39013250881918 \
-gcp 344 6167 4.894353353463219 52.39007526132896 \
   output/downloads/DUIZ00314000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00314000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894353353463219,52.39007526132896],[4.9083084225999976,52.39013250881918],[4.908235599846147,52.39687296064778],[4.894278408092784,52.39681570191524],[4.894353353463219,52.39007526132896]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00314000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00314000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00314000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00314000001-warped.tif

# ==============================================
# Name: DUIZ00326000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00326000001.jpg ]; then
  wget -O output/downloads/DUIZ00326000001.jpg "https://webservices.picturae.com/mediabank/media/cea275bd-d4fb-e40c-3131-584d9e18d7a8/downloadoriginal/76613789-4e72-ca78-f648-29d8a3539a00?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 326 323 4.908235599846147 52.39687296064778 \
-gcp 7680 316 4.922192832486973 52.39692857431355 \
-gcp 7691 6092 4.922263532603152 52.39018811156555 \
-gcp 323 6110 4.9083084225999976 52.39013250881918 \
   output/downloads/DUIZ00326000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00326000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.9083084225999976,52.39013250881918],[4.922263532603152,52.39018811156555],[4.922192832486973,52.39692857431355],[4.908235599846147,52.39687296064778],[4.9083084225999976,52.39013250881918]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00326000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00326000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00326000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00326000001-warped.tif

# ==============================================
# Name: DUIZ00335000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00335000001.jpg ]; then
  wget -O output/downloads/DUIZ00335000001.jpg "https://webservices.picturae.com/mediabank/media/a164ee9b-8e3f-2066-3362-747c75f49f6b/downloadoriginal/aea14221-63d1-e9d3-8e67-5d63aab526d9?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 314 359 4.922192832486973 52.39692857431355 \
-gcp 7679 312 4.936150104823676 52.396982542902656 \
-gcp 7723 6135 4.9362186822817185 52.3902420695582 \
-gcp 346 6189 4.922263532603152 52.39018811156555 \
   output/downloads/DUIZ00335000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00335000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922263532603152,52.39018811156555],[4.9362186822817185,52.3902420695582],[4.936150104823676,52.396982542902656],[4.922192832486973,52.39692857431355],[4.922263532603152,52.39018811156555]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00335000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00335000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00335000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00335000001-warped.tif

# ==============================================
# Name: DUIZ00345000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00345000001.jpg ]; then
  wget -O output/downloads/DUIZ00345000001.jpg "https://webservices.picturae.com/mediabank/media/3652c430-8685-02b2-7387-633b583525ef/downloadoriginal/072d4402-6286-818b-a1ab-8e184236f6f3?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 310 345 4.936150104823676 52.396982542902656 \
-gcp 7703 340 4.950107415664662 52.39703486640556 \
-gcp 7708 6140 4.95017387044471 52.390294382787616 \
-gcp 317 6157 4.9362186822817185 52.3902420695582 \
   output/downloads/DUIZ00345000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00345000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.9362186822817185,52.3902420695582],[4.95017387044471,52.390294382787616],[4.950107415664662,52.39703486640556],[4.936150104823676,52.396982542902656],[4.9362186822817185,52.3902420695582]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00345000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00345000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00345000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00345000001-warped.tif

# ==============================================
# Name: DUIZ00354000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00354000001.jpg ]; then
  wget -O output/downloads/DUIZ00354000001.jpg "https://webservices.picturae.com/mediabank/media/658be257-a3c9-c845-b42b-7becb72650ea/downloadoriginal/7d101c90-f754-39eb-332b-9f1d9969dc47?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 346 389 4.950107415664662 52.39703486640556 \
-gcp 7718 332 4.964064763818304 52.397085544813 \
-gcp 7773 6119 4.964129095901115 52.39034505124449 \
-gcp 375 6185 4.95017387044471 52.390294382787616 \
   output/downloads/DUIZ00354000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00354000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.95017387044471,52.390294382787616],[4.964129095901115,52.39034505124449],[4.964064763818304,52.397085544813],[4.950107415664662,52.39703486640556],[4.95017387044471,52.390294382787616]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00354000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00354000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00354000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00354000001-warped.tif

# ==============================================
# Name: DUIZ00377000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00377000001.jpg ]; then
  wget -O output/downloads/DUIZ00377000001.jpg "https://webservices.picturae.com/mediabank/media/08097d77-dcb8-e83f-48f8-d6340c7b3d3b/downloadoriginal/6088eaf8-7a21-29df-5ce6-8d8ce875cea9?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 330 335 4.838533509398376 52.38982982413665 \
-gcp 7698 335 4.852488403160459 52.389893650497974 \
-gcp 7706 6147 4.852569687808245 52.38315323615572 \
-gcp 336 6160 4.8386169158300465 52.38308942232452 \
   output/downloads/DUIZ00377000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00377000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.8386169158300465,52.38308942232452],[4.852569687808245,52.38315323615572],[4.852488403160459,52.389893650497974],[4.838533509398376,52.38982982413665],[4.8386169158300465,52.38308942232452]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00377000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00377000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00377000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00377000001-warped.tif

# ==============================================
# Name: DUIZ00388000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00388000001.jpg ]; then
  wget -O output/downloads/DUIZ00388000001.jpg "https://webservices.picturae.com/mediabank/media/1bc6b55b-ead0-7e2f-c3df-bcb583f0af34/downloadoriginal/18cfbd70-bd82-8453-3885-6e11cd98061c?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 346 385 4.852488403160459 52.389893650497974 \
-gcp 7713 330 4.866443342552546 52.38995583215777 \
-gcp 7772 6153 4.866522505392917 52.383215405608155 \
-gcp 391 6215 4.852569687808245 52.38315323615572 \
   output/downloads/DUIZ00388000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00388000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.852569687808245,52.38315323615572],[4.866522505392917,52.383215405608155],[4.866443342552546,52.38995583215777],[4.852488403160459,52.389893650497974],[4.852569687808245,52.38315323615572]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00388000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00388000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00388000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00388000001-warped.tif

# ==============================================
# Name: DUIZ00398000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00398000001.jpg ]; then
  wget -O output/downloads/DUIZ00398000001.jpg "https://webservices.picturae.com/mediabank/media/b251f101-f9c3-aaec-188a-b37bda531721/downloadoriginal/0b64d5ce-6c41-354c-9af3-e0784cf38c2e?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 330 361 4.866443342552546 52.38995583215777 \
-gcp 7723 331 4.880398326383764 52.39001636910501 \
-gcp 7758 6160 4.8804753673938075 52.38327593067086 \
-gcp 356 6201 4.866522505392917 52.383215405608155 \
   output/downloads/DUIZ00398000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00398000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866522505392917,52.383215405608155],[4.8804753673938075,52.38327593067086],[4.880398326383764,52.39001636910501],[4.866443342552546,52.38995583215777],[4.866522505392917,52.383215405608155]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00398000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00398000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00398000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00398000001-warped.tif

# ==============================================
# Name: DUIZ00411000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00411000001.jpg ]; then
  wget -O output/downloads/DUIZ00411000001.jpg "https://webservices.picturae.com/mediabank/media/90481dfb-f191-5f0e-e0d6-0a5b1e03dd80/downloadoriginal/53f3c44b-b22d-01f3-056d-4906d52ff16c?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 317 357 4.880398326383764 52.39001636910501 \
-gcp 7679 334 4.894353353463219 52.39007526132896 \
-gcp 7707 6153 4.894428272620639 52.383334811333086 \
-gcp 336 6183 4.8804753673938075 52.38327593067086 \
   output/downloads/DUIZ00411000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00411000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.8804753673938075,52.38327593067086],[4.894428272620639,52.383334811333086],[4.894353353463219,52.39007526132896],[4.880398326383764,52.39001636910501],[4.8804753673938075,52.38327593067086]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00411000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00411000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00411000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00411000001-warped.tif

# ==============================================
# Name: DUIZ00423000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00423000001.jpg ]; then
  wget -O output/downloads/DUIZ00423000001.jpg "https://webservices.picturae.com/mediabank/media/bcf9b97a-5f1a-1c2f-90de-035bfb7c6b1a/downloadoriginal/dc3850bf-b90e-213e-2f5b-10ae9152234d?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 327 292 4.894353353463219 52.39007526132896 \
-gcp 7779 277 4.9083084225999976 52.39013250881918 \
-gcp 7799 6140 4.908381219883109 52.383392047584415 \
-gcp 342 6168 4.894428272620639 52.383334811333086 \
   output/downloads/DUIZ00423000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00423000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894428272620639,52.383334811333086],[4.908381219883109,52.383392047584415],[4.9083084225999976,52.39013250881918],[4.894353353463219,52.39007526132896],[4.894428272620639,52.383334811333086]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00423000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00423000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00423000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00423000001-warped.tif

# ==============================================
# Name: DUIZ00434000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00434000001.jpg ]; then
  wget -O output/downloads/DUIZ00434000001.jpg "https://webservices.picturae.com/mediabank/media/990e2e97-53d5-17d0-ce01-f73708337b1a/downloadoriginal/a0e54d40-ee00-930f-1a0d-eabc76595d34?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 347 332 4.9083084225999976 52.39013250881918 \
-gcp 7805 351 4.922263532603152 52.39018811156555 \
-gcp 7797 6206 4.922334207990887 52.38344763941474 \
-gcp 329 6201 4.908381219883109 52.383392047584415 \
   output/downloads/DUIZ00434000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00434000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908381219883109,52.383392047584415],[4.922334207990887,52.38344763941474],[4.922263532603152,52.39018811156555],[4.9083084225999976,52.39013250881918],[4.908381219883109,52.383392047584415]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00434000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00434000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00434000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00434000001-warped.tif

# ==============================================
# Name: DUIZ00444000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00444000001.jpg ]; then
  wget -O output/downloads/DUIZ00444000001.jpg "https://webservices.picturae.com/mediabank/media/f1307e03-d552-5b43-7868-bf2f7ad67c26/downloadoriginal/6e49abe8-f94e-6b82-6ae6-7530c5009b5b?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 346 331 4.922263532603152 52.39018811156555 \
-gcp 7816 339 4.9362186822817185 52.3902420695582 \
-gcp 7816 6205 4.936287235753622 52.38350158681417 \
-gcp 351 6219 4.922334207990887 52.38344763941474 \
   output/downloads/DUIZ00444000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00444000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922334207990887,52.38344763941474],[4.936287235753622,52.38350158681417],[4.9362186822817185,52.3902420695582],[4.922263532603152,52.39018811156555],[4.922334207990887,52.38344763941474]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00444000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00444000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00444000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00444000001-warped.tif

# ==============================================
# Name: DUIZ00451000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00451000001.jpg ]; then
  wget -O output/downloads/DUIZ00451000001.jpg "https://webservices.picturae.com/mediabank/media/d4b2b23b-babb-290d-9a85-24069b788584/downloadoriginal/0b05ec86-309c-5360-8ff6-c128b7712b42?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 284 312 4.9362186822817185 52.3902420695582 \
-gcp 5933 280 4.95017387044471 52.390294382787616 \
-gcp 5954 4717 4.95024030198094 52.38355388977318 \
-gcp 313 4759 4.936287235753622 52.38350158681417 \
   output/downloads/DUIZ00451000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00451000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936287235753622,52.38350158681417],[4.95024030198094,52.38355388977318],[4.95017387044471,52.390294382787616],[4.9362186822817185,52.3902420695582],[4.936287235753622,52.38350158681417]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00451000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00451000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00451000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00451000001-warped.tif

# ==============================================
# Name: DUIZ00460000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00460000001.jpg ]; then
  wget -O output/downloads/DUIZ00460000001.jpg "https://webservices.picturae.com/mediabank/media/bdd9ebcb-b522-0eb4-01db-95a7d7639331/downloadoriginal/03557c68-559d-5ea8-b709-689d8ec14203?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 262 274 4.95017387044471 52.390294382787616 \
-gcp 5910 275 4.964129095901115 52.39034505124449 \
-gcp 5914 4717 4.964193405482442 52.38360454828251 \
-gcp 259 4720 4.95024030198094 52.38355388977318 \
   output/downloads/DUIZ00460000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00460000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.95024030198094,52.38355388977318],[4.964193405482442,52.38360454828251],[4.964129095901115,52.39034505124449],[4.95017387044471,52.390294382787616],[4.95024030198094,52.38355388977318]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00460000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00460000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00460000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00460000001-warped.tif

# ==============================================
# Name: DUIZ00483000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00483000001.jpg ]; then
  wget -O output/downloads/DUIZ00483000001.jpg "https://webservices.picturae.com/mediabank/media/a0ca0619-1856-33c2-f6a6-7f78ef6a9148/downloadoriginal/c9811ad8-f4b7-a473-1539-1f59424e6f2f?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 251 299 4.8386169158300465 52.38308942232452 \
-gcp 5907 255 4.852569687808245 52.38315323615572 \
-gcp 5945 4709 4.852650944030937 52.3764128124391 \
-gcp 285 4763 4.8387002930947975 52.37634901113423 \
   output/downloads/DUIZ00483000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00483000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.8387002930947975,52.37634901113423],[4.852650944030937,52.3764128124391],[4.852569687808245,52.38315323615572],[4.8386169158300465,52.38308942232452],[4.8387002930947975,52.37634901113423]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00483000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00483000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00483000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00483000001-warped.tif

# ==============================================
# Name: DUIZ00493000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00493000001.jpg ]; then
  wget -O output/downloads/DUIZ00493000001.jpg "https://webservices.picturae.com/mediabank/media/a90c2554-25a0-cf6c-4d55-a60382532b3f/downloadoriginal/27a72683-1c59-8f6a-9396-62cefad20c58?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 262 267 4.852569687808245 52.38315323615572 \
-gcp 5926 279 4.866522505392917 52.383215405608155 \
-gcp 5916 4740 4.866601640550044 52.376474969687905 \
-gcp 250 4734 4.852650944030937 52.3764128124391 \
   output/downloads/DUIZ00493000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00493000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.852650944030937,52.3764128124391],[4.866601640550044,52.376474969687905],[4.866522505392917,52.383215405608155],[4.852569687808245,52.38315323615572],[4.852650944030937,52.3764128124391]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00493000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00493000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00493000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00493000001-warped.tif

# ==============================================
# Name: DUIZ00507000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00507000001.jpg ]; then
  wget -O output/downloads/DUIZ00507000001.jpg "https://webservices.picturae.com/mediabank/media/334610ca-4c13-eebb-0d90-c9d7f3c5d8e6/downloadoriginal/2f85f04e-001b-5141-382c-c992446bec4c?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 270 262 4.866522505392917 52.383215405608155 \
-gcp 5932 292 4.8804753673938075 52.38327593067086 \
-gcp 5907 4731 4.880552381462476 52.376535482869706 \
-gcp 258 4718 4.866601640550044 52.376474969687905 \
   output/downloads/DUIZ00507000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00507000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866601640550044,52.376474969687905],[4.880552381462476,52.376535482869706],[4.8804753673938075,52.38327593067086],[4.866522505392917,52.383215405608155],[4.866601640550044,52.376474969687905]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00507000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00507000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00507000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00507000001-warped.tif

# ==============================================
# Name: DUIZ00522000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00522000001.jpg ]; then
  wget -O output/downloads/DUIZ00522000001.jpg "https://webservices.picturae.com/mediabank/media/0d9e0a57-3bc3-8a2c-712f-227c94873123/downloadoriginal/be0df5d8-0676-fbc4-f42f-7c5c1ea35b78?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 262 275 4.8804753673938075 52.38327593067086 \
-gcp 5924 261 4.894428272620639 52.383334811333086 \
-gcp 5933 4691 4.894503165578564 52.37659435197371 \
-gcp 279 4714 4.880552381462476 52.376535482869706 \
   output/downloads/DUIZ00522000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00522000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880552381462476,52.376535482869706],[4.894503165578564,52.37659435197371],[4.894428272620639,52.383334811333086],[4.8804753673938075,52.38327593067086],[4.880552381462476,52.376535482869706]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00522000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00522000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00522000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00522000001-warped.tif

# ==============================================
# Name: DUIZ00536000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00536000001.jpg ]; then
  wget -O output/downloads/DUIZ00536000001.jpg "https://webservices.picturae.com/mediabank/media/efadc4fe-0d45-bbfc-7f8f-15f08315d806/downloadoriginal/2acd6a43-66c6-7d30-3f36-29e0963ace9c?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 252 263 4.894428272620639 52.383334811333086 \
-gcp 5895 247 4.908381219883109 52.383392047584415 \
-gcp 5910 4696 4.90845399170862 52.37665157698962 \
-gcp 263 4716 4.894503165578564 52.37659435197371 \
   output/downloads/DUIZ00536000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00536000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894503165578564,52.37659435197371],[4.90845399170862,52.37665157698962],[4.908381219883109,52.383392047584415],[4.894428272620639,52.383334811333086],[4.894503165578564,52.37659435197371]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00536000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00536000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00536000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00536000001-warped.tif

# ==============================================
# Name: DUIZ00551000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00551000001.jpg ]; then
  wget -O output/downloads/DUIZ00551000001.jpg "https://webservices.picturae.com/mediabank/media/b00cb777-8bd1-d60c-7145-346666a8731e/downloadoriginal/192ad18a-03f5-eeb3-a05c-0ed4633223c5?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 269 268 4.908381219883109 52.383392047584415 \
-gcp 5895 264 4.922334207990887 52.38344763941474 \
-gcp 5898 4703 4.92240485866293 52.37670715790714 \
-gcp 274 4717 4.90845399170862 52.37665157698962 \
   output/downloads/DUIZ00551000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00551000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.90845399170862,52.37665157698962],[4.92240485866293,52.37670715790714],[4.922334207990887,52.38344763941474],[4.908381219883109,52.383392047584415],[4.90845399170862,52.37665157698962]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00551000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00551000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00551000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00551000001-warped.tif

# ==============================================
# Name: DUIZ00561000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00561000001.jpg ]; then
  wget -O output/downloads/DUIZ00561000001.jpg "https://webservices.picturae.com/mediabank/media/ea5c2ebf-5fc8-cbd6-58cf-a4d403c230cd/downloadoriginal/148e11d2-4a55-5912-394a-53fc0ac9c7ad?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 264 251 4.922334207990887 52.38344763941474 \
-gcp 5865 266 4.936287235753622 52.38350158681417 \
-gcp 5850 4686 4.936355765251757 52.376761094716606 \
-gcp 254 4677 4.92240485866293 52.37670715790714 \
   output/downloads/DUIZ00561000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00561000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.92240485866293,52.37670715790714],[4.936355765251757,52.376761094716606],[4.936287235753622,52.38350158681417],[4.922334207990887,52.38344763941474],[4.92240485866293,52.37670715790714]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00561000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00561000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00561000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00561000001-warped.tif

# ==============================================
# Name: DUIZ00567000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00567000001.jpg ]; then
  wget -O output/downloads/DUIZ00567000001.jpg "https://webservices.picturae.com/mediabank/media/e99b127d-b717-1d18-5a6b-81b20ca74f0a/downloadoriginal/bf31549c-7664-7863-b1fa-4236a7922410?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 262 307 4.936287235753622 52.38350158681417 \
-gcp 5868 254 4.95024030198094 52.38355388977318 \
-gcp 5909 4676 4.950306710285335 52.376813387408355 \
-gcp 309 4734 4.936355765251757 52.376761094716606 \
   output/downloads/DUIZ00567000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00567000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936355765251757,52.376761094716606],[4.950306710285335,52.376813387408355],[4.95024030198094,52.38355388977318],[4.936287235753622,52.38350158681417],[4.936355765251757,52.376761094716606]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00567000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00567000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00567000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00567000001-warped.tif

# ==============================================
# Name: DUIZ00572000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00572000001.jpg ]; then
  wget -O output/downloads/DUIZ00572000001.jpg "https://webservices.picturae.com/mediabank/media/43cf05b1-8c81-5534-e097-4eec8486e6e3/downloadoriginal/7e988b02-c94b-a4f6-bd06-492f8ac28f87?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 260 264 4.95024030198094 52.38355388977318 \
-gcp 5907 270 4.964193405482442 52.38360454828251 \
-gcp 5903 4731 4.964257692573884 52.37686403597311 \
-gcp 257 4731 4.950306710285335 52.376813387408355 \
   output/downloads/DUIZ00572000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00572000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.950306710285335,52.376813387408355],[4.964257692573884,52.37686403597311],[4.964193405482442,52.38360454828251],[4.95024030198094,52.38355388977318],[4.950306710285335,52.376813387408355]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00572000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00572000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00572000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00572000001-warped.tif

# ==============================================
# Name: DUIZ00598000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00598000001.jpg ]; then
  wget -O output/downloads/DUIZ00598000001.jpg "https://webservices.picturae.com/mediabank/media/afaabf04-1188-3e65-ff87-2f710208533b/downloadoriginal/ddafcd42-1b93-b238-b7a0-d3ca551c7d16?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 218 355 4.8387002930947975 52.37634901113423 \
-gcp 5850 312 4.852650944030937 52.3764128124391 \
-gcp 5892 4733 4.852732171843195 52.36967237939421 \
-gcp 257 4782 4.8387836412076615 52.369608590611875 \
   output/downloads/DUIZ00598000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00598000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.8387836412076615,52.369608590611875],[4.852732171843195,52.36967237939421],[4.852650944030937,52.3764128124391],[4.8387002930947975,52.37634901113423],[4.8387836412076615,52.369608590611875]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00598000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00598000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00598000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00598000001-warped.tif

# ==============================================
# Name: DUIZ00612000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00612000001.jpg ]; then
  wget -O output/downloads/DUIZ00612000001.jpg "https://webservices.picturae.com/mediabank/media/5455ca85-2e95-ae6c-cfd5-a3383d6a9c32/downloadoriginal/433fd044-30a5-d6e7-03d3-16ed12bacefd?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 256 278 4.852650944030937 52.3764128124391 \
-gcp 5872 262 4.866601640550044 52.376474969687905 \
-gcp 5886 4691 4.866680748038203 52.369734524443096 \
-gcp 275 4712 4.852732171843195 52.36967237939421 \
   output/downloads/DUIZ00612000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00612000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.852732171843195,52.36967237939421],[4.866680748038203,52.369734524443096],[4.866601640550044,52.376474969687905],[4.852650944030937,52.3764128124391],[4.852732171843195,52.36967237939421]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00612000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00612000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00612000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00612000001-warped.tif

# ==============================================
# Name: DUIZ00630000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00630000001.jpg ]; then
  wget -O output/downloads/DUIZ00630000001.jpg "https://webservices.picturae.com/mediabank/media/15f66b9c-e875-b216-2f60-7f473ce529c6/downloadoriginal/b513fbf4-7988-47a5-aec5-258968aa8d4f?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 254 268 4.866601640550044 52.376474969687905 \
-gcp 5859 250 4.880552381462476 52.376535482869706 \
-gcp 5882 4652 4.880629368603654 52.36979502574761 \
-gcp 276 4684 4.866680748038203 52.369734524443096 \
   output/downloads/DUIZ00630000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00630000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866680748038203,52.369734524443096],[4.880629368603654,52.36979502574761],[4.880552381462476,52.376535482869706],[4.866601640550044,52.376474969687905],[4.866680748038203,52.369734524443096]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00630000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00630000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00630000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00630000001-warped.tif

# ==============================================
# Name: DUIZ00648000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00648000001.jpg ]; then
  wget -O output/downloads/DUIZ00648000001.jpg "https://webservices.picturae.com/mediabank/media/a7867080-4aa2-dbbf-45b6-fa8cf5636ce3/downloadoriginal/1d97dc4a-0881-23c6-3a09-5c5a073614ce?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 262 284 4.880552381462476 52.376535482869706 \
-gcp 5877 261 4.894503165578564 52.37659435197371 \
-gcp 5887 4676 4.894578032350497 52.369853883296926 \
-gcp 280 4703 4.880629368603654 52.36979502574761 \
   output/downloads/DUIZ00648000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00648000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880629368603654,52.36979502574761],[4.894578032350497,52.369853883296926],[4.894503165578564,52.37659435197371],[4.880552381462476,52.376535482869706],[4.880629368603654,52.36979502574761]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00648000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00648000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00648000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00648000001-warped.tif

# ==============================================
# Name: DUIZ00668000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00668000001.jpg ]; then
  wget -O output/downloads/DUIZ00668000001.jpg "https://webservices.picturae.com/mediabank/media/ce631463-9aa8-f79c-e182-e74c657012e4/downloadoriginal/acafc4a9-b806-716a-7b95-03b68ee6c12b?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 255 268 4.894503165578564 52.37659435197371 \
-gcp 5864 260 4.90845399170862 52.37665157698962 \
-gcp 5871 4670 4.908526738089654 52.36991109708077 \
-gcp 263 4681 4.894578032350497 52.369853883296926 \
   output/downloads/DUIZ00668000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00668000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894578032350497,52.369853883296926],[4.908526738089654,52.36991109708077],[4.90845399170862,52.37665157698962],[4.894503165578564,52.37659435197371],[4.894578032350497,52.369853883296926]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00668000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00668000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00668000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00668000001-warped.tif

# ==============================================
# Name: DUIZ00685000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00685000001.jpg ]; then
  wget -O output/downloads/DUIZ00685000001.jpg "https://webservices.picturae.com/mediabank/media/ffcd7963-2986-07c9-80bf-12ea03d07f30/downloadoriginal/79272f25-f581-3b61-6d74-0ae171671b88?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 265 266 4.90845399170862 52.37665157698962 \
-gcp 5884 264 4.92240485866293 52.37670715790714 \
-gcp 5881 4661 4.92247548463202 52.36996666708887 \
-gcp 273 4665 4.908526738089654 52.36991109708077 \
   output/downloads/DUIZ00685000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00685000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908526738089654,52.36991109708077],[4.92247548463202,52.36996666708887],[4.92240485866293,52.37670715790714],[4.90845399170862,52.37665157698962],[4.908526738089654,52.36991109708077]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00685000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00685000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00685000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00685000001-warped.tif

# ==============================================
# Name: DUIZ00699000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00699000001.jpg ]; then
  wget -O output/downloads/DUIZ00699000001.jpg "https://webservices.picturae.com/mediabank/media/f9435a2e-d06a-601d-2358-4f7d2485d89f/downloadoriginal/2e32ef8b-219a-8171-f0c6-4808efd92ce9?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 259 271 4.92240485866293 52.37670715790714 \
-gcp 5864 258 4.936355765251757 52.376761094716606 \
-gcp 5874 4652 4.936424270788474 52.37002059331152 \
-gcp 270 4670 4.92247548463202 52.36996666708887 \
   output/downloads/DUIZ00699000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00699000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.92247548463202,52.36996666708887],[4.936424270788474,52.37002059331152],[4.936355765251757,52.376761094716606],[4.92240485866293,52.37670715790714],[4.92247548463202,52.36996666708887]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00699000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00699000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00699000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00699000001-warped.tif

# ==============================================
# Name: DUIZ00709000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00709000001.jpg ]; then
  wget -O output/downloads/DUIZ00709000001.jpg "https://webservices.picturae.com/mediabank/media/b55b4c5c-ccd2-2d03-4eb2-b8992e75b5c5/downloadoriginal/121e9f8e-e29a-3d97-3b36-d5789bc34241?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 265 264 4.936355765251757 52.376761094716606 \
-gcp 5852 274 4.950306710285335 52.376813387408355 \
-gcp 5849 4693 4.950373095369869 52.370072875739126 \
-gcp 256 4694 4.936424270788474 52.37002059331152 \
   output/downloads/DUIZ00709000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00709000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936424270788474,52.37002059331152],[4.950373095369869,52.370072875739126],[4.950306710285335,52.376813387408355],[4.936355765251757,52.376761094716606],[4.936424270788474,52.37002059331152]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00709000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00709000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00709000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00709000001-warped.tif

# ==============================================
# Name: DUIZ00716000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00716000001.jpg ]; then
  wget -O output/downloads/DUIZ00716000001.jpg "https://webservices.picturae.com/mediabank/media/8fdc55a4-64b5-6dfd-11e1-d86fb320ce1a/downloadoriginal/554f9d32-473a-6a3b-c790-336e308933bf?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 258 298 4.950306710285335 52.376813387408355 \
-gcp 5864 249 4.964257692573884 52.37686403597311 \
-gcp 5902 4681 4.964321957187033 52.37012351436242 \
-gcp 294 4732 4.950373095369869 52.370072875739126 \
   output/downloads/DUIZ00716000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00716000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.950373095369869,52.370072875739126],[4.964321957187033,52.37012351436242],[4.964257692573884,52.37686403597311],[4.950306710285335,52.376813387408355],[4.950373095369869,52.370072875739126]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00716000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00716000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00716000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00716000001-warped.tif

# ==============================================
# Name: DUIZ00732000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00732000001.jpg ]; then
  wget -O output/downloads/DUIZ00732000001.jpg "https://webservices.picturae.com/mediabank/media/5ad775c5-87e6-df00-c578-379c3327984b/downloadoriginal/86fb9796-b14f-6ab4-c320-082818135464?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 262 252 4.8387836412076615 52.369608590611875 \
-gcp 5864 293 4.852732171843195 52.36967237939421 \
-gcp 5840 4720 4.852813371259658 52.362931937067145 \
-gcp 232 4685 4.838866960183661 52.362868160803544 \
   output/downloads/DUIZ00732000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00732000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.838866960183661,52.362868160803544],[4.852813371259658,52.362931937067145],[4.852732171843195,52.36967237939421],[4.8387836412076615,52.369608590611875],[4.838866960183661,52.362868160803544]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00732000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00732000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00732000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00732000001-warped.tif

# ==============================================
# Name: DUIZ00746000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00746000001.jpg ]; then
  wget -O output/downloads/DUIZ00746000001.jpg "https://webservices.picturae.com/mediabank/media/ad97b0ad-2aac-6cec-6826-76a902079911/downloadoriginal/a52151ae-fb25-fe1f-dbd5-1ccb65f47067?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 259 296 4.852732171843195 52.36967237939421 \
-gcp 5874 264 4.866680748038203 52.369734524443096 \
-gcp 5905 4685 4.866759827871651 52.362994069919836 \
-gcp 281 4724 4.852813371259658 52.362931937067145 \
   output/downloads/DUIZ00746000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00746000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.852813371259658,52.362931937067145],[4.866759827871651,52.362994069919836],[4.866680748038203,52.369734524443096],[4.852732171843195,52.36967237939421],[4.852813371259658,52.362931937067145]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00746000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00746000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00746000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00746000001-warped.tif

# ==============================================
# Name: DUIZ00764000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00764000001.jpg ]; then
  wget -O output/downloads/DUIZ00764000001.jpg "https://webservices.picturae.com/mediabank/media/bf30b993-c7f6-5165-9627-41310ebf02f7/downloadoriginal/dad685fb-0e9a-edf1-e828-5fe1b4b8a0f6?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 252 239 4.866680748038203 52.369734524443096 \
-gcp 5841 227 4.880629368603654 52.36979502574761 \
-gcp 5853 4648 4.880706328831222 52.363054559350594 \
-gcp 262 4670 4.866759827871651 52.362994069919836 \
   output/downloads/DUIZ00764000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00764000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866759827871651,52.362994069919836],[4.880706328831222,52.363054559350594],[4.880629368603654,52.36979502574761],[4.866680748038203,52.369734524443096],[4.866759827871651,52.362994069919836]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00764000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00764000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00764000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00764000001-warped.tif

# ==============================================
# Name: DUIZ00784000002 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00784000002.jpg ]; then
  wget -O output/downloads/DUIZ00784000002.jpg "https://webservices.picturae.com/mediabank/media/2ce9d15b-54a9-f224-d937-b8709ab2c128/downloadoriginal/36fa776c-dc9e-7867-6b57-cc1b58a9c14d?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 251 228 4.880629368603654 52.36979502574761 \
-gcp 5858 226 4.894578032350497 52.369853883296926 \
-gcp 5857 4622 4.894652872949934 52.36311340534879 \
-gcp 261 4623 4.880706328831222 52.363054559350594 \
   output/downloads/DUIZ00784000002.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00784000002.vrt

echo '{"type":"Polygon","coordinates":[[[4.880706328831222,52.363054559350594],[4.894652872949934,52.36311340534879],[4.894578032350497,52.369853883296926],[4.880629368603654,52.36979502574761],[4.880706328831222,52.363054559350594]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00784000002.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00784000002.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00784000002.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00784000002-warped.tif

# ==============================================
# Name: DUIZ00804000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00804000001.jpg ]; then
  wget -O output/downloads/DUIZ00804000001.jpg "https://webservices.picturae.com/mediabank/media/15e987da-2aaf-658a-8da4-b1a345495aa1/downloadoriginal/122fc323-2bc2-6f03-5f78-c20bc08a68b7?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 183 204 4.894578032350497 52.369853883296926 \
-gcp 5754 188 4.908526738089654 52.36991109708077 \
-gcp 5770 4575 4.908599459039318 52.36317060790394 \
-gcp 201 4603 4.894652872949934 52.36311340534879 \
   output/downloads/DUIZ00804000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00804000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894652872949934,52.36311340534879],[4.908599459039318,52.36317060790394],[4.908526738089654,52.36991109708077],[4.894578032350497,52.369853883296926],[4.894652872949934,52.36311340534879]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00804000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00804000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00804000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00804000001-warped.tif

# ==============================================
# Name: DUIZ00825000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00825000001.jpg ]; then
  wget -O output/downloads/DUIZ00825000001.jpg "https://webservices.picturae.com/mediabank/media/5a4a9a93-9d4e-9c76-033e-3756706c0f81/downloadoriginal/635395f5-1a6a-7454-9f07-f60f364d940a?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 163 209 4.908526738089654 52.36991109708077 \
-gcp 5735 209 4.92247548463202 52.36996666708887 \
-gcp 5739 4607 4.92254608591089 52.36322616700596 \
-gcp 158 4613 4.908599459039318 52.36317060790394 \
   output/downloads/DUIZ00825000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00825000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908599459039318,52.36317060790394],[4.92254608591089,52.36322616700596],[4.92247548463202,52.36996666708887],[4.908526738089654,52.36991109708077],[4.908599459039318,52.36317060790394]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00825000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00825000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00825000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00825000001-warped.tif

# ==============================================
# Name: DUIZ00840000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00840000001.jpg ]; then
  wget -O output/downloads/DUIZ00840000001.jpg "https://webservices.picturae.com/mediabank/media/87a588e5-9df1-d0aa-dc96-23d724d9d0fe/downloadoriginal/664bda4d-4d9b-447b-f048-3d643527ff91?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 223 200 4.92247548463202 52.36996666708887 \
-gcp 5808 209 4.936424270788474 52.37002059331152 \
-gcp 5808 4615 4.936492752376133 52.36328008264502 \
-gcp 209 4607 4.92254608591089 52.36322616700596 \
   output/downloads/DUIZ00840000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00840000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.92254608591089,52.36322616700596],[4.936492752376133,52.36328008264502],[4.936424270788474,52.37002059331152],[4.92247548463202,52.36996666708887],[4.92254608591089,52.36322616700596]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00840000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00840000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00840000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00840000001-warped.tif

# ==============================================
# Name: DUIZ00855000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00855000001.jpg ]; then
  wget -O output/downloads/DUIZ00855000001.jpg "https://webservices.picturae.com/mediabank/media/042fea35-0471-bb12-5712-41d6dbe7c297/downloadoriginal/d1bef566-6edb-5ee9-0e24-5a046470e81c?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 205 164 4.936424270788474 52.37002059331152 \
-gcp 5798 143 4.950373095369869 52.370072875739126 \
-gcp 5812 4515 4.950439457246515 52.36333235481158 \
-gcp 224 4542 4.936492752376133 52.36328008264502 \
   output/downloads/DUIZ00855000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00855000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936492752376133,52.36328008264502],[4.950439457246515,52.36333235481158],[4.950373095369869,52.370072875739126],[4.936424270788474,52.37002059331152],[4.936492752376133,52.36328008264502]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00855000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00855000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00855000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00855000001-warped.tif

# ==============================================
# Name: DUIZ00865000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00865000001.jpg ]; then
  wget -O output/downloads/DUIZ00865000001.jpg "https://webservices.picturae.com/mediabank/media/f813b948-f9ae-c97f-052c-97f8b87f156c/downloadoriginal/8d80b3f8-3653-73af-9911-1e3085c759ac?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 209 199 4.950373095369869 52.370072875739126 \
-gcp 5787 210 4.964321957187033 52.37012351436242 \
-gcp 5787 4615 4.964386199333477 52.36338298349637 \
-gcp 201 4611 4.950439457246515 52.36333235481158 \
   output/downloads/DUIZ00865000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00865000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.950439457246515,52.36333235481158],[4.964386199333477,52.36338298349637],[4.964321957187033,52.37012351436242],[4.950373095369869,52.370072875739126],[4.950439457246515,52.36333235481158]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00865000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00865000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00865000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00865000001-warped.tif

# ==============================================
# Name: DUIZ00885000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00885000001.jpg ]; then
  wget -O output/downloads/DUIZ00885000001.jpg "https://webservices.picturae.com/mediabank/media/f2de7766-bd9b-c1f9-3128-7d96a00dcc24/downloadoriginal/7a88b4ff-09c4-fcf0-3f1d-638ca9cfd266?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 192 209 4.838866960183661 52.362868160803544 \
-gcp 5741 185 4.852813371259658 52.362931937067145 \
-gcp 5759 4583 4.85289454229496 52.3561914855039 \
-gcp 210 4614 4.838950250037816 52.356127721755264 \
   output/downloads/DUIZ00885000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00885000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.838950250037816,52.356127721755264],[4.85289454229496,52.3561914855039],[4.852813371259658,52.362931937067145],[4.838866960183661,52.362868160803544],[4.838950250037816,52.356127721755264]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00885000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00885000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00885000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00885000001-warped.tif

# ==============================================
# Name: DUIZ00898000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00898000001.jpg ]; then
  wget -O output/downloads/DUIZ00898000001.jpg "https://webservices.picturae.com/mediabank/media/ed423b59-1983-2be4-1910-fc1c0ddd08f0/downloadoriginal/18793456-17ec-5eeb-042d-32396436aa19?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 212 201 4.852813371259658 52.362931937067145 \
-gcp 5779 212 4.866759827871651 52.362994069919836 \
-gcp 5775 4592 4.866838880064639 52.356253606164074 \
-gcp 199 4595 4.85289454229496 52.3561914855039 \
   output/downloads/DUIZ00898000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00898000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.85289454229496,52.3561914855039],[4.866838880064639,52.356253606164074],[4.866759827871651,52.362994069919836],[4.852813371259658,52.362931937067145],[4.85289454229496,52.3561914855039]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00898000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00898000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00898000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00898000001-warped.tif

# ==============================================
# Name: DUIZ00917000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00917000001.jpg ]; then
  wget -O output/downloads/DUIZ00917000001.jpg "https://webservices.picturae.com/mediabank/media/d7e8a585-3205-1605-14bc-69aabaafa90d/downloadoriginal/d176e278-8280-7b9a-a8aa-e5ff21612fab?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 220 204 4.866759827871651 52.362994069919836 \
-gcp 5798 227 4.880706328831222 52.363054559350594 \
-gcp 5784 4627 4.8807832621590475 52.356314083724776 \
-gcp 202 4612 4.866838880064639 52.356253606164074 \
   output/downloads/DUIZ00917000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00917000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866838880064639,52.356253606164074],[4.8807832621590475,52.356314083724776],[4.880706328831222,52.363054559350594],[4.866759827871651,52.362994069919836],[4.866838880064639,52.356253606164074]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00917000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00917000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00917000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00917000001-warped.tif

# ==============================================
# Name: DUIZ00934000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00934000001.jpg ]; then
  wget -O output/downloads/DUIZ00934000001.jpg "https://webservices.picturae.com/mediabank/media/a18feafb-557c-4b4d-4a14-4bbe97444943/downloadoriginal/65f7c6fa-2db4-14d0-cd20-3d9038a3535b?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 214 180 4.880706328831222 52.363054559350594 \
-gcp 5794 206 4.894652872949934 52.36311340534879 \
-gcp 5771 4612 4.894727687390359 52.35637291817528 \
-gcp 191 4587 4.8807832621590475 52.356314083724776 \
   output/downloads/DUIZ00934000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00934000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.8807832621590475,52.356314083724776],[4.894727687390359,52.35637291817528],[4.894652872949934,52.36311340534879],[4.880706328831222,52.363054559350594],[4.8807832621590475,52.356314083724776]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00934000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00934000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00934000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00934000001-warped.tif

# ==============================================
# Name: DUIZ00952000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00952000001.jpg ]; then
  wget -O output/downloads/DUIZ00952000001.jpg "https://webservices.picturae.com/mediabank/media/85b5f38a-7989-af43-d341-beccfbdb288c/downloadoriginal/314dc859-44e6-0e05-f706-ee6d3fbabe12?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 197 197 4.894652872949934 52.36311340534879 \
-gcp 5780 201 4.908599459039318 52.36317060790394 \
-gcp 5789 4582 4.908672154570723 52.35643010950521 \
-gcp 199 4590 4.894727687390359 52.35637291817528 \
   output/downloads/DUIZ00952000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00952000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894727687390359,52.35637291817528],[4.908672154570723,52.35643010950521],[4.908599459039318,52.36317060790394],[4.894652872949934,52.36311340534879],[4.894727687390359,52.35637291817528]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00952000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00952000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00952000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00952000001-warped.tif

# ==============================================
# Name: DUIZ00969000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00969000001.jpg ]; then
  wget -O output/downloads/DUIZ00969000001.jpg "https://webservices.picturae.com/mediabank/media/7d35bf75-5d53-44ef-92f7-e5765688ad91/downloadoriginal/72b0cc62-631e-0a2e-85e9-1d10ca6da229?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 193 197 4.908599459039318 52.36317060790394 \
-gcp 5748 209 4.92254608591089 52.36322616700596 \
-gcp 5743 4616 4.922616662512259 52.35648565770444 \
-gcp 187 4605 4.908672154570723 52.35643010950521 \
   output/downloads/DUIZ00969000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00969000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908672154570723,52.35643010950521],[4.922616662512259,52.35648565770444],[4.92254608591089,52.36322616700596],[4.908599459039318,52.36317060790394],[4.908672154570723,52.35643010950521]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00969000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00969000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00969000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00969000001-warped.tif

# ==============================================
# Name: DUIZ00983000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00983000001.jpg ]; then
  wget -O output/downloads/DUIZ00983000001.jpg "https://webservices.picturae.com/mediabank/media/54657b29-fdb3-534e-d29b-8a4c6e30a7ba/downloadoriginal/dd126a48-60ce-ae01-bb46-118ce01bc9e4?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 207 197 4.92254608591089 52.36322616700596 \
-gcp 5775 211 4.936492752376133 52.36328008264502 \
-gcp 5769 4614 4.936561210027068 52.356539562763146 \
-gcp 197 4607 4.922616662512259 52.35648565770444 \
   output/downloads/DUIZ00983000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00983000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922616662512259,52.35648565770444],[4.936561210027068,52.356539562763146],[4.936492752376133,52.36328008264502],[4.92254608591089,52.36322616700596],[4.922616662512259,52.35648565770444]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00983000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00983000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00983000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00983000001-warped.tif

# ==============================================
# Name: DUIZ00994000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00994000001.jpg ]; then
  wget -O output/downloads/DUIZ00994000001.jpg "https://webservices.picturae.com/mediabank/media/1b36ad4f-0612-5b4f-7102-8b5c0667ca85/downloadoriginal/04a50c31-ba6f-3b81-d556-772ec9cff5db?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 210 225 4.936492752376133 52.36328008264502 \
-gcp 5779 205 4.950439457246515 52.36333235481158 \
-gcp 5793 4609 4.950505795927228 52.3565918246718 \
-gcp 224 4634 4.936561210027068 52.356539562763146 \
   output/downloads/DUIZ00994000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ00994000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936561210027068,52.356539562763146],[4.950505795927228,52.3565918246718],[4.950439457246515,52.36333235481158],[4.936492752376133,52.36328008264502],[4.936561210027068,52.356539562763146]]]}' > output/publieke-werken-1943/3857/warped/DUIZ00994000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ00994000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ00994000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ00994000001-warped.tif

# ==============================================
# Name: DUIZ01005000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01005000001.jpg ]; then
  wget -O output/downloads/DUIZ01005000001.jpg "https://webservices.picturae.com/mediabank/media/1b50d397-6f17-9dbc-2693-ded78f5f30b0/downloadoriginal/a4da9382-88da-dd0a-6b7b-1c2561be3bf6?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 208 195 4.950439457246515 52.36333235481158 \
-gcp 5777 207 4.964386199333477 52.36338298349637 \
-gcp 5765 4606 4.964450419024794 52.356642443421116 \
-gcp 198 4599 4.950505795927228 52.3565918246718 \
   output/downloads/DUIZ01005000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ01005000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.950505795927228,52.3565918246718],[4.964450419024794,52.356642443421116],[4.964386199333477,52.36338298349637],[4.950439457246515,52.36333235481158],[4.950505795927228,52.3565918246718]]]}' > output/publieke-werken-1943/3857/warped/DUIZ01005000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ01005000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ01005000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ01005000001-warped.tif

# ==============================================
# Name: DUIZ01016000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01016000001.jpg ]; then
  wget -O output/downloads/DUIZ01016000001.jpg "https://webservices.picturae.com/mediabank/media/fe544529-be01-ae8f-a8e6-b24732a9021b/downloadoriginal/90c17a53-adc0-d017-7bad-512e8185e1bf?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 187 173 4.838950250037816 52.356127721755264 \
-gcp 5787 199 4.85289454229496 52.3561914855039 \
-gcp 5775 4603 4.852975684963722 52.34945102475066 \
-gcp 173 4584 4.839033510785126 52.34938727351315 \
   output/downloads/DUIZ01016000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ01016000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.839033510785126,52.34938727351315],[4.852975684963722,52.34945102475066],[4.85289454229496,52.3561914855039],[4.838950250037816,52.356127721755264],[4.839033510785126,52.34938727351315]]]}' > output/publieke-werken-1943/3857/warped/DUIZ01016000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ01016000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ01016000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ01016000001-warped.tif

# ==============================================
# Name: DUIZ01028000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01028000001.jpg ]; then
  wget -O output/downloads/DUIZ01028000001.jpg "https://webservices.picturae.com/mediabank/media/11d89c0e-c01a-f2a7-f5e9-e6b807ab21d3/downloadoriginal/b5e05dbc-377c-73b8-b0d4-68f0fa9e3fb3?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 198 202 4.85289454229496 52.3561914855039 \
-gcp 5758 203 4.866838880064639 52.356253606164074 \
-gcp 5756 4603 4.866917904631407 52.349513133222054 \
-gcp 198 4607 4.852975684963722 52.34945102475066 \
   output/downloads/DUIZ01028000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ01028000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.852975684963722,52.34945102475066],[4.866917904631407,52.349513133222054],[4.866838880064639,52.356253606164074],[4.85289454229496,52.3561914855039],[4.852975684963722,52.34945102475066]]]}' > output/publieke-werken-1943/3857/warped/DUIZ01028000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ01028000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ01028000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ01028000001-warped.tif

# ==============================================
# Name: DUIZ01042000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01042000001.jpg ]; then
  wget -O output/downloads/DUIZ01042000001.jpg "https://webservices.picturae.com/mediabank/media/62348393-950e-d10c-cf67-aecff60c5184/downloadoriginal/15aa9878-f2ad-7103-2aa6-930238d5cc00?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 182 200 4.866838880064639 52.356253606164074 \
-gcp 5752 188 4.8807832621590475 52.356314083724776 \
-gcp 5764 4592 4.880860168600992 52.3495735989162 \
-gcp 190 4608 4.866917904631407 52.349513133222054 \
   output/downloads/DUIZ01042000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ01042000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866917904631407,52.349513133222054],[4.880860168600992,52.3495735989162],[4.8807832621590475,52.356314083724776],[4.866838880064639,52.356253606164074],[4.866917904631407,52.349513133222054]]]}' > output/publieke-werken-1943/3857/warped/DUIZ01042000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ01042000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ01042000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ01042000001-warped.tif

# ==============================================
# Name: DUIZ01055000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01055000001.jpg ]; then
  wget -O output/downloads/DUIZ01055000001.jpg "https://webservices.picturae.com/mediabank/media/3bf87248-1c13-6da3-ba10-79c7af61c0bb/downloadoriginal/80869123-836d-541d-e398-62c60dd31fd6?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 186 214 4.8807832621590475 52.356314083724776 \
-gcp 5760 175 4.894727687390359 52.35637291817528 \
-gcp 5791 4574 4.894802475685259 52.34963242182257 \
-gcp 221 4620 4.880860168600992 52.3495735989162 \
   output/downloads/DUIZ01055000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ01055000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880860168600992,52.3495735989162],[4.894802475685259,52.34963242182257],[4.894727687390359,52.35637291817528],[4.8807832621590475,52.356314083724776],[4.880860168600992,52.3495735989162]]]}' > output/publieke-werken-1943/3857/warped/DUIZ01055000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ01055000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ01055000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ01055000001-warped.tif

# ==============================================
# Name: DUIZ01069000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01069000001.jpg ]; then
  wget -O output/downloads/DUIZ01069000001.jpg "https://webservices.picturae.com/mediabank/media/d6320651-e6e2-a65a-8cfa-16ade73a1b99/downloadoriginal/3b17d83f-183a-1932-9faa-144cd1197bdf?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 190 193 4.894727687390359 52.35637291817528 \
-gcp 5760 184 4.908672154570723 52.35643010950521 \
-gcp 5765 4588 4.9087448246969645 52.34968960193067 \
-gcp 195 4602 4.894802475685259 52.34963242182257 \
   output/downloads/DUIZ01069000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ01069000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894802475685259,52.34963242182257],[4.9087448246969645,52.34968960193067],[4.908672154570723,52.35643010950521],[4.894727687390359,52.35637291817528],[4.894802475685259,52.34963242182257]]]}' > output/publieke-werken-1943/3857/warped/DUIZ01069000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ01069000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ01069000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ01069000001-warped.tif

# ==============================================
# Name: DUIZ01082000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01082000001.jpg ]; then
  wget -O output/downloads/DUIZ01082000001.jpg "https://webservices.picturae.com/mediabank/media/422e9a9b-fcd2-e352-f553-73c50ff1c08b/downloadoriginal/aba90bd7-1e59-4d90-98f7-7ed28a860988?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 201 204 4.908672154570723 52.35643010950521 \
-gcp 5775 197 4.922616662512259 52.35648565770444 \
-gcp 5784 4593 4.922687214448846 52.34974513923041 \
-gcp 209 4603 4.9087448246969645 52.34968960193067 \
   output/downloads/DUIZ01082000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ01082000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.9087448246969645,52.34968960193067],[4.922687214448846,52.34974513923041],[4.922616662512259,52.35648565770444],[4.908672154570723,52.35643010950521],[4.9087448246969645,52.34968960193067]]]}' > output/publieke-werken-1943/3857/warped/DUIZ01082000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ01082000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ01082000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ01082000001-warped.tif

# ==============================================
# Name: DUIZ01095000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01095000001.jpg ]; then
  wget -O output/downloads/DUIZ01095000001.jpg "https://webservices.picturae.com/mediabank/media/b13660df-2681-058e-4ace-be3dd79cc5ed/downloadoriginal/7930f1ea-ec3e-e2e6-c0e2-d277d1298840?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 205 194 4.922616662512259 52.35648565770444 \
-gcp 5772 224 4.936561210027068 52.356539562763146 \
-gcp 5758 4628 4.936629643753615 52.34979903371197 \
-gcp 180 4604 4.922687214448846 52.34974513923041 \
   output/downloads/DUIZ01095000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ01095000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922687214448846,52.34974513923041],[4.936629643753615,52.34979903371197],[4.936561210027068,52.356539562763146],[4.922616662512259,52.35648565770444],[4.922687214448846,52.34974513923041]]]}' > output/publieke-werken-1943/3857/warped/DUIZ01095000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ01095000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ01095000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ01095000001-warped.tif

# ==============================================
# Name: DUIZ01105000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01105000001.jpg ]; then
  wget -O output/downloads/DUIZ01105000001.jpg "https://webservices.picturae.com/mediabank/media/c42e035b-3e6d-bd1d-61cc-9a4693084511/downloadoriginal/7b6f77d6-2397-b9b8-701d-3acd0098112c?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 204 189 4.936561210027068 52.356539562763146 \
-gcp 5781 216 4.950505795927228 52.3565918246718 \
-gcp 5763 4621 4.950572111423964 52.349851285365816 \
-gcp 185 4593 4.936629643753615 52.34979903371197 \
   output/downloads/DUIZ01105000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ01105000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936629643753615,52.34979903371197],[4.950572111423964,52.349851285365816],[4.950505795927228,52.3565918246718],[4.936561210027068,52.356539562763146],[4.936629643753615,52.34979903371197]]]}' > output/publieke-werken-1943/3857/warped/DUIZ01105000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ01105000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ01105000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ01105000001-warped.tif

# ==============================================
# Name: DUIZ01113000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01113000001.jpg ]; then
  wget -O output/downloads/DUIZ01113000001.jpg "https://webservices.picturae.com/mediabank/media/37b71ee1-16d9-cde9-ed8b-a78958f3fd90/downloadoriginal/3d6ddef2-2a76-c0e7-d453-91729c82ff37?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 221 192 4.950505795927228 52.3565918246718 \
-gcp 5794 217 4.964450419024794 52.356642443421116 \
-gcp 5777 4617 4.964514616272553 52.34990189418268 \
-gcp 204 4595 4.950572111423964 52.349851285365816 \
   output/downloads/DUIZ01113000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ01113000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.950572111423964,52.349851285365816],[4.964514616272553,52.34990189418268],[4.964450419024794,52.356642443421116],[4.950505795927228,52.3565918246718],[4.950572111423964,52.349851285365816]]]}' > output/publieke-werken-1943/3857/warped/DUIZ01113000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ01113000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ01113000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ01113000001-warped.tif

# ==============================================
# Name: DUIZ01128000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01128000001.jpg ]; then
  wget -O output/downloads/DUIZ01128000001.jpg "https://webservices.picturae.com/mediabank/media/929634bb-9365-6968-d8b7-8771f02ee525/downloadoriginal/61702d12-52c5-8c7e-e13f-cbaf1ad1b401?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 192 204 4.839033510785126 52.34938727351315 \
-gcp 5786 192 4.852975684963722 52.34945102475066 \
-gcp 5798 4579 4.853056799280559 52.34271055485341 \
-gcp 207 4594 4.839116742440586 52.342646816123214 \
   output/downloads/DUIZ01128000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ01128000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.839116742440586,52.342646816123214],[4.853056799280559,52.34271055485341],[4.852975684963722,52.34945102475066],[4.839033510785126,52.34938727351315],[4.839116742440586,52.342646816123214]]]}' > output/publieke-werken-1943/3857/warped/DUIZ01128000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ01128000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ01128000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ01128000001-warped.tif

# ==============================================
# Name: DUIZ01141000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01141000001.jpg ]; then
  wget -O output/downloads/DUIZ01141000001.jpg "https://webservices.picturae.com/mediabank/media/cd308573-38b4-7ce1-f902-9dbf17144e92/downloadoriginal/9c7be7a9-b01b-65db-ba66-de937ddd6c0f?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 193 225 4.852975684963722 52.34945102475066 \
-gcp 5760 194 4.866917904631407 52.349513133222054 \
-gcp 5789 4589 4.866996901586188 52.342772651139654 \
-gcp 218 4630 4.853056799280559 52.34271055485341 \
   output/downloads/DUIZ01141000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ01141000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.853056799280559,52.34271055485341],[4.866996901586188,52.342772651139654],[4.866917904631407,52.349513133222054],[4.852975684963722,52.34945102475066],[4.853056799280559,52.34271055485341]]]}' > output/publieke-werken-1943/3857/warped/DUIZ01141000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ01141000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ01141000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ01141000001-warped.tif

# ==============================================
# Name: DUIZ01153000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01153000001.jpg ]; then
  wget -O output/downloads/DUIZ01153000001.jpg "https://webservices.picturae.com/mediabank/media/3676f15d-c262-bb3d-599a-b3571fb200a0/downloadoriginal/7ba84484-e454-106f-27a2-f855df885276?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 195 201 4.866917904631407 52.349513133222054 \
-gcp 5756 196 4.880860168600992 52.3495735989162 \
-gcp 5765 4591 4.880937048170903 52.34283310497098 \
-gcp 206 4609 4.866996901586188 52.342772651139654 \
   output/downloads/DUIZ01153000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ01153000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866996901586188,52.342772651139654],[4.880937048170903,52.34283310497098],[4.880860168600992,52.3495735989162],[4.866917904631407,52.349513133222054],[4.866996901586188,52.342772651139654]]]}' > output/publieke-werken-1943/3857/warped/DUIZ01153000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ01153000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ01153000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ01153000001-warped.tif

# ==============================================
# Name: DUIZ01165000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01165000001.jpg ]; then
  wget -O output/downloads/DUIZ01165000001.jpg "https://webservices.picturae.com/mediabank/media/6c25ab37-12d9-07e1-0844-393063dd4ac5/downloadoriginal/bc870b0e-3515-fd58-8a78-c15b67f60dff?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 201 180 4.880860168600992 52.3495735989162 \
-gcp 5773 164 4.894802475685259 52.34963242182257 \
-gcp 5793 4565 4.8948772378480925 52.34289191633669 \
-gcp 215 4589 4.880937048170903 52.34283310497098 \
   output/downloads/DUIZ01165000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ01165000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880937048170903,52.34283310497098],[4.8948772378480925,52.34289191633669],[4.894802475685259,52.34963242182257],[4.880860168600992,52.3495735989162],[4.880937048170903,52.34283310497098]]]}' > output/publieke-werken-1943/3857/warped/DUIZ01165000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ01165000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ01165000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ01165000001-warped.tif

# ==============================================
# Name: DUIZ01175000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01175000001.jpg ]; then
  wget -O output/downloads/DUIZ01175000001.jpg "https://webservices.picturae.com/mediabank/media/62b68e40-511e-b989-80cb-00b999ebd8e2/downloadoriginal/f926d46c-d5bb-be8f-8263-d4f32beacf5f?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 209 218 4.894802475685259 52.34963242182257 \
-gcp 5784 214 4.9087448246969645 52.34968960193067 \
-gcp 5794 4619 4.908817469431128 52.34294908522636 \
-gcp 217 4628 4.8948772378480925 52.34289191633669 \
   output/downloads/DUIZ01175000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ01175000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.8948772378480925,52.34289191633669],[4.908817469431128,52.34294908522636],[4.9087448246969645,52.34968960193067],[4.894802475685259,52.34963242182257],[4.8948772378480925,52.34289191633669]]]}' > output/publieke-werken-1943/3857/warped/DUIZ01175000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ01175000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ01175000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ01175000001-warped.tif

# ==============================================
# Name: DUIZ01189000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01189000001.jpg ]; then
  wget -O output/downloads/DUIZ01189000001.jpg "https://webservices.picturae.com/mediabank/media/d3df453c-866b-e4c0-2b0a-68114dc84421/downloadoriginal/824d832c-d6c7-0064-34b6-62421af3ae5b?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 217 191 4.9087448246969645 52.34968960193067 \
-gcp 5772 217 4.922687214448846 52.34974513923041 \
-gcp 5756 4614 4.922757741733356 52.34300461162991 \
-gcp 195 4594 4.908817469431128 52.34294908522636 \
   output/downloads/DUIZ01189000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ01189000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908817469431128,52.34294908522636],[4.922757741733356,52.34300461162991],[4.922687214448846,52.34974513923041],[4.9087448246969645,52.34968960193067],[4.908817469431128,52.34294908522636]]]}' > output/publieke-werken-1943/3857/warped/DUIZ01189000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ01189000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ01189000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ01189000001-warped.tif

# ==============================================
# Name: DUIZ01200000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01200000001.jpg ]; then
  wget -O output/downloads/DUIZ01200000001.jpg "https://webservices.picturae.com/mediabank/media/24b50755-fc11-5250-ecad-85697f83a9e0/downloadoriginal/1e3819fb-b54b-9167-9318-8640c829f3a8?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 216 198 4.922687214448846 52.34974513923041 \
-gcp 5775 217 4.936629643753615 52.34979903371197 \
-gcp 5756 4612 4.936698053568099 52.34305849553756 \
-gcp 203 4600 4.922757741733356 52.34300461162991 \
   output/downloads/DUIZ01200000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ01200000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922757741733356,52.34300461162991],[4.936698053568099,52.34305849553756],[4.936629643753615,52.34979903371197],[4.922687214448846,52.34974513923041],[4.922757741733356,52.34300461162991]]]}' > output/publieke-werken-1943/3857/warped/DUIZ01200000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ01200000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ01200000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ01200000001-warped.tif

# ==============================================
# Name: DUIZ01208000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01208000001.jpg ]; then
  wget -O output/downloads/DUIZ01208000001.jpg "https://webservices.picturae.com/mediabank/media/904655ba-ec2e-10f6-2d8f-2afad2306527/downloadoriginal/59f40135-413e-c4ac-32db-82ce3388e41b?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 200 204 4.936629643753615 52.34979903371197 \
-gcp 5783 203 4.950572111423964 52.349851285365816 \
-gcp 5791 4599 4.95063840374866 52.3431107369397 \
-gcp 209 4613 4.936698053568099 52.34305849553756 \
   output/downloads/DUIZ01208000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ01208000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936698053568099,52.34305849553756],[4.95063840374866,52.3431107369397],[4.950572111423964,52.349851285365816],[4.936629643753615,52.34979903371197],[4.936698053568099,52.34305849553756]]]}' > output/publieke-werken-1943/3857/warped/DUIZ01208000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ01208000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ01208000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ01208000001-warped.tif

# ==============================================
# Name: DUIZ01216000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01216000001.jpg ]; then
  wget -O output/downloads/DUIZ01216000001.jpg "https://webservices.picturae.com/mediabank/media/3c32dec6-bdcc-4926-1f58-6326dce320f0/downloadoriginal/53408713-ca5a-25af-7416-204d96dfce5f?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 195 223 4.950572111423964 52.349851285365816 \
-gcp 5768 201 4.964514616272553 52.34990189418268 \
-gcp 5789 4605 4.964578791088314 52.34316133582713 \
-gcp 215 4631 4.95063840374866 52.3431107369397 \
   output/downloads/DUIZ01216000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ01216000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.95063840374866,52.3431107369397],[4.964578791088314,52.34316133582713],[4.964514616272553,52.34990189418268],[4.950572111423964,52.349851285365816],[4.95063840374866,52.3431107369397]]]}' > output/publieke-werken-1943/3857/warped/DUIZ01216000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ01216000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ01216000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ01216000001-warped.tif

# ==============================================
# Name: DUIZ01231000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01231000001.jpg ]; then
  wget -O output/downloads/DUIZ01231000001.jpg "https://webservices.picturae.com/mediabank/media/2aaf08a8-d1fb-9e42-fd98-59ff3d7ae923/downloadoriginal/68b0f75b-27ed-3ffe-b64a-0ecb8afc5e99?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 201 188 4.839116742440586 52.342646816123214 \
-gcp 5773 197 4.853056799280559 52.34271055485341 \
-gcp 5773 4593 4.853137885260069 52.33597007585828 \
-gcp 199 4602 4.83919994501918 52.33590634963156 \
   output/downloads/DUIZ01231000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ01231000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.83919994501918,52.33590634963156],[4.853137885260069,52.33597007585828],[4.853056799280559,52.34271055485341],[4.839116742440586,52.342646816123214],[4.83919994501918,52.33590634963156]]]}' > output/publieke-werken-1943/3857/warped/DUIZ01231000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ01231000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ01231000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ01231000001-warped.tif

# ==============================================
# Name: DUIZ01245000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01245000001.jpg ]; then
  wget -O output/downloads/DUIZ01245000001.jpg "https://webservices.picturae.com/mediabank/media/e3d863ca-3fad-88b2-26fa-8753a43c4361/downloadoriginal/9b22f249-58ff-9e86-0666-647f3d62f498?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 203 196 4.853056799280559 52.34271055485341 \
-gcp 5770 208 4.866996901586188 52.342772651139654 \
-gcp 5770 4591 4.867075870943206 52.33603215996312 \
-gcp 199 4586 4.853137885260069 52.33597007585828 \
   output/downloads/DUIZ01245000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ01245000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.853137885260069,52.33597007585828],[4.867075870943206,52.33603215996312],[4.866996901586188,52.342772651139654],[4.853056799280559,52.34271055485341],[4.853137885260069,52.33597007585828]]]}' > output/publieke-werken-1943/3857/warped/DUIZ01245000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ01245000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ01245000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ01245000001-warped.tif

# ==============================================
# Name: DUIZ01257000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01257000001.jpg ]; then
  wget -O output/downloads/DUIZ01257000001.jpg "https://webservices.picturae.com/mediabank/media/19c1e2b1-7bf4-f1ff-3ae6-e444f073dfa1/downloadoriginal/0641c5be-4bf0-871b-cb99-47eb59a3ad4b?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 192 223 4.866996901586188 52.342772651139654 \
-gcp 5782 209 4.880937048170903 52.34283310497098 \
-gcp 5795 4615 4.881013900882621 52.336092601935114 \
-gcp 210 4633 4.867075870943206 52.33603215996312 \
   output/downloads/DUIZ01257000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ01257000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.867075870943206,52.33603215996312],[4.881013900882621,52.336092601935114],[4.880937048170903,52.34283310497098],[4.866996901586188,52.342772651139654],[4.867075870943206,52.33603215996312]]]}' > output/publieke-werken-1943/3857/warped/DUIZ01257000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ01257000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ01257000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ01257000001-warped.tif

# ==============================================
# Name: DUIZ01266000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01266000001.jpg ]; then
  wget -O output/downloads/DUIZ01266000001.jpg "https://webservices.picturae.com/mediabank/media/fa74c7a4-eb28-24df-8349-1a41ce9938e3/downloadoriginal/6fcae121-4f91-77cd-bd44-d242aa6e556f?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 208 194 4.880937048170903 52.34283310497098 \
-gcp 5795 216 4.8948772378480925 52.34289191633669 \
-gcp 5785 4618 4.894951973892325 52.336151401763686 \
-gcp 199 4608 4.881013900882621 52.336092601935114 \
   output/downloads/DUIZ01266000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ01266000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.881013900882621,52.336092601935114],[4.894951973892325,52.336151401763686],[4.8948772378480925,52.34289191633669],[4.880937048170903,52.34283310497098],[4.881013900882621,52.336092601935114]]]}' > output/publieke-werken-1943/3857/warped/DUIZ01266000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ01266000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ01266000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ01266000001-warped.tif

# ==============================================
# Name: DUIZ01276000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01276000001.jpg ]; then
  wget -O output/downloads/DUIZ01276000001.jpg "https://webservices.picturae.com/mediabank/media/48e97916-dfef-53f7-5c8e-291edd6d2323/downloadoriginal/7ed290f8-3610-80dd-eb9a-7bcc2c20c6c4?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 206 170 4.8948772378480925 52.34289191633669 \
-gcp 5787 191 4.908817469431128 52.34294908522636 \
-gcp 5776 4591 4.9088900887862925 52.33620855943833 \
-gcp 197 4577 4.894951973892325 52.336151401763686 \
   output/downloads/DUIZ01276000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ01276000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894951973892325,52.336151401763686],[4.9088900887862925,52.33620855943833],[4.908817469431128,52.34294908522636],[4.8948772378480925,52.34289191633669],[4.894951973892325,52.336151401763686]]]}' > output/publieke-werken-1943/3857/warped/DUIZ01276000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ01276000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ01276000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ01276000001-warped.tif

# ==============================================
# Name: DUIZ01284000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01284000001.jpg ]; then
  wget -O output/downloads/DUIZ01284000001.jpg "https://webservices.picturae.com/mediabank/media/b0f14a6c-e8e5-b9c4-b2ed-b033445cd6aa/downloadoriginal/5d2309c6-a725-374e-b0cb-3f6b02df375a?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 207 200 4.908817469431128 52.34294908522636 \
-gcp 5791 207 4.922757741733356 52.34300461162991 \
-gcp 5786 4609 4.9228282443784845 52.33626407494904 \
-gcp 202 4600 4.9088900887862925 52.33620855943833 \
   output/downloads/DUIZ01284000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ01284000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.9088900887862925,52.33620855943833],[4.9228282443784845,52.33626407494904],[4.922757741733356,52.34300461162991],[4.908817469431128,52.34294908522636],[4.9088900887862925,52.33620855943833]]]}' > output/publieke-werken-1943/3857/warped/DUIZ01284000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ01284000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ01284000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ01284000001-warped.tif

# ==============================================
# Name: DUIZ01297000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01297000001.jpg ]; then
  wget -O output/downloads/DUIZ01297000001.jpg "https://webservices.picturae.com/mediabank/media/50851b1e-f6b7-d7dc-19a0-d3ae559cee8a/downloadoriginal/c1c9ab4f-9a0d-02ce-5ee7-0c942c9cede9?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 202 209 4.922757741733356 52.34300461162991 \
-gcp 5779 211 4.936698053568099 52.34305849553756 \
-gcp 5782 4611 4.936766439482835 52.33631794828592 \
-gcp 206 4615 4.9228282443784845 52.33626407494904 \
   output/downloads/DUIZ01297000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ01297000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.9228282443784845,52.33626407494904],[4.936766439482835,52.33631794828592],[4.936698053568099,52.34305849553756],[4.922757741733356,52.34300461162991],[4.9228282443784845,52.33626407494904]]]}' > output/publieke-werken-1943/3857/warped/DUIZ01297000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ01297000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ01297000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ01297000001-warped.tif

# ==============================================
# Name: DUIZ01303000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01303000001.jpg ]; then
  wget -O output/downloads/DUIZ01303000001.jpg "https://webservices.picturae.com/mediabank/media/8b66cdb2-35f6-ce3f-f48f-1a029f606157/downloadoriginal/4eaa08e8-1af1-edd9-c1dc-d10ad27bb154?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 206 235 4.936698053568099 52.34305849553756 \
-gcp 5774 210 4.95063840374866 52.3431107369397 \
-gcp 5798 4609 4.950704672913254 52.336370179439506 \
-gcp 230 4645 4.936766439482835 52.33631794828592 \
   output/downloads/DUIZ01303000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ01303000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936766439482835,52.33631794828592],[4.950704672913254,52.336370179439506],[4.95063840374866,52.3431107369397],[4.936698053568099,52.34305849553756],[4.936766439482835,52.33631794828592]]]}' > output/publieke-werken-1943/3857/warped/DUIZ01303000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ01303000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ01303000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ01303000001-warped.tif

# ==============================================
# Name: DUIZ01308000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01308000001.jpg ]; then
  wget -O output/downloads/DUIZ01308000001.jpg "https://webservices.picturae.com/mediabank/media/0a6cb1fd-6f34-21c2-30c2-2cc03d8bf54c/downloadoriginal/52704d98-0faf-c0ce-a158-8a7a3a6c4c6b?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 223 236 4.95063840374866 52.3431107369397 \
-gcp 5783 235 4.964578791088314 52.34316133582713 \
-gcp 5789 4637 4.9646429434836366 52.33642076840053 \
-gcp 224 4648 4.950704672913254 52.336370179439506 \
   output/downloads/DUIZ01308000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ01308000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.950704672913254,52.336370179439506],[4.9646429434836366,52.33642076840053],[4.964578791088314,52.34316133582713],[4.95063840374866,52.3431107369397],[4.950704672913254,52.336370179439506]]]}' > output/publieke-werken-1943/3857/warped/DUIZ01308000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ01308000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ01308000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ01308000001-warped.tif

# ==============================================
# Name: DUIZ01320000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01320000001.jpg ]; then
  wget -O output/downloads/DUIZ01320000001.jpg "https://webservices.picturae.com/mediabank/media/653baad4-2c10-2552-2c0a-1237c6e3ecc1/downloadoriginal/b8ca3673-b835-dedf-3df4-7c38629fb730?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 207 212 4.83919994501918 52.33590634963156 \
-gcp 5792 206 4.853137885260069 52.33597007585828 \
-gcp 5794 4610 4.853218942916847 52.32922958781127 \
-gcp 211 4623 4.83928311853588 52.32916587408431 \
   output/downloads/DUIZ01320000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ01320000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.83928311853588,52.32916587408431],[4.853218942916847,52.32922958781127],[4.853137885260069,52.33597007585828],[4.83919994501918,52.33590634963156],[4.83928311853588,52.32916587408431]]]}' > output/publieke-werken-1943/3857/warped/DUIZ01320000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ01320000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ01320000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ01320000001-warped.tif

# ==============================================
# Name: DUIZ01327000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01327000001.jpg ]; then
  wget -O output/downloads/DUIZ01327000001.jpg "https://webservices.picturae.com/mediabank/media/628e5cef-5002-652f-aa50-86991dc61007/downloadoriginal/7442d716-630f-8850-dcdf-fb7df009a963?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 207 187 4.853137885260069 52.33597007585828 \
-gcp 5773 205 4.867075870943206 52.33603215996312 \
-gcp 5756 4597 4.867154812716667 52.32929165973837 \
-gcp 192 4588 4.853218942916847 52.32922958781127 \
   output/downloads/DUIZ01327000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ01327000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.853218942916847,52.32922958781127],[4.867154812716667,52.32929165973837],[4.867075870943206,52.33603215996312],[4.853137885260069,52.33597007585828],[4.853218942916847,52.32922958781127]]]}' > output/publieke-werken-1943/3857/warped/DUIZ01327000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ01327000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ01327000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ01327000001-warped.tif

# ==============================================
# Name: DUIZ01339000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01339000001.jpg ]; then
  wget -O output/downloads/DUIZ01339000001.jpg "https://webservices.picturae.com/mediabank/media/ba22ec83-8ffa-8155-0c63-401c68379a99/downloadoriginal/76b4aec5-c97a-953d-4d8e-0a142394a2e4?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 200 211 4.881013900882621 52.336092601935114 \
-gcp 5785 198 4.894951973892325 52.336151401763686 \
-gcp 5802 4605 4.895026683831404 52.329410878149645 \
-gcp 212 4627 4.88109072674998 52.329352089854716 \
   output/downloads/DUIZ01339000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ01339000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.88109072674998,52.329352089854716],[4.895026683831404,52.329410878149645],[4.894951973892325,52.336151401763686],[4.881013900882621,52.336092601935114],[4.88109072674998,52.329352089854716]]]}' > output/publieke-werken-1943/3857/warped/DUIZ01339000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ01339000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ01339000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ01339000001-warped.tif

# ==============================================
# Name: DUIZ01345000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01345000001.jpg ]; then
  wget -O output/downloads/DUIZ01345000001.jpg "https://webservices.picturae.com/mediabank/media/74f81d05-48bf-9f26-30bf-cdc963e4b5a4/downloadoriginal/3d6b6cd4-feaf-a228-54d5-ad197476a439?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 210 200 4.894951973892325 52.336151401763686 \
-gcp 5779 216 4.9088900887862925 52.33620855943833 \
-gcp 5770 4618 4.908962682775526 52.32946802461267 \
-gcp 201 4606 4.895026683831404 52.329410878149645 \
   output/downloads/DUIZ01345000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ01345000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.895026683831404,52.329410878149645],[4.908962682775526,52.32946802461267],[4.9088900887862925,52.33620855943833],[4.894951973892325,52.336151401763686],[4.895026683831404,52.329410878149645]]]}' > output/publieke-werken-1943/3857/warped/DUIZ01345000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ01345000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ01345000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ01345000001-warped.tif

# ==============================================
# Name: DUIZ01350000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01350000001.jpg ]; then
  wget -O output/downloads/DUIZ01350000001.jpg "https://webservices.picturae.com/mediabank/media/3ba74d50-64f2-53ff-04f3-53fe70105d6a/downloadoriginal/bbee26ee-534e-9b4b-e175-f8dedbabc4cb?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 215 233 4.9088900887862925 52.33620855943833 \
-gcp 5788 221 4.9228282443784845 52.33626407494904 \
-gcp 5804 4621 4.922898722396921 52.329523529233825 \
-gcp 227 4643 4.908962682775526 52.32946802461267 \
   output/downloads/DUIZ01350000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ01350000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908962682775526,52.32946802461267],[4.922898722396921,52.329523529233825],[4.9228282443784845,52.33626407494904],[4.9088900887862925,52.33620855943833],[4.908962682775526,52.32946802461267]]]}' > output/publieke-werken-1943/3857/warped/DUIZ01350000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ01350000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ01350000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ01350000001-warped.tif

# ==============================================
# Name: DUIZ01355000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01355000001.jpg ]; then
  wget -O output/downloads/DUIZ01355000001.jpg "https://webservices.picturae.com/mediabank/media/d68e489e-e470-d29e-bf50-c5858a40115d/downloadoriginal/fac66366-0609-49b6-0a29-075a9cb3a50b?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 213 197 4.9228282443784845 52.33626407494904 \
-gcp 5787 210 4.936766439482835 52.33631794828592 \
-gcp 5781 4611 4.9368348015101295 52.329577392003195 \
-gcp 203 4602 4.922898722396921 52.329523529233825 \
   output/downloads/DUIZ01355000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ01355000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922898722396921,52.329523529233825],[4.9368348015101295,52.329577392003195],[4.936766439482835,52.33631794828592],[4.9228282443784845,52.33626407494904],[4.922898722396921,52.329523529233825]]]}' > output/publieke-werken-1943/3857/warped/DUIZ01355000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ01355000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ01355000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ01355000001-warped.tif

# ==============================================
# Name: DUIZ01359000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01359000001.jpg ]; then
  wget -O output/downloads/DUIZ01359000001.jpg "https://webservices.picturae.com/mediabank/media/87d96ced-2e40-76eb-0938-72b7209f938f/downloadoriginal/c83af6e8-b47b-7d07-ddb6-3bafb28efc91?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 224 225 4.936766439482835 52.33631794828592 \
-gcp 5785 222 4.950704672913254 52.336370179439506 \
-gcp 5798 4615 4.950770918929674 52.32962961291131 \
-gcp 228 4631 4.9368348015101295 52.329577392003195 \
   output/downloads/DUIZ01359000001.jpg \
   output/publieke-werken-1943/3857/warped/DUIZ01359000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.9368348015101295,52.329577392003195],[4.950770918929674,52.32962961291131],[4.950704672913254,52.336370179439506],[4.936766439482835,52.33631794828592],[4.9368348015101295,52.329577392003195]]]}' > output/publieke-werken-1943/3857/warped/DUIZ01359000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1943/3857/warped/DUIZ01359000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1943/3857/warped/DUIZ01359000001.vrt \
  output/publieke-werken-1943/3857/warped/DUIZ01359000001-warped.tif

# ==============================================
# Add overviews and create index:
# ==============================================

mkdir -p output/publieke-werken-1943/3857

for j in output/publieke-werken-1943/3857/warped/*.tif; do
  gdaladdo -r cubic \
    --config COMPRESS_OVERVIEW JPEG \
    --config PHOTOMETRIC_OVERVIEW YCBCR \
    --config INTERLEAVE_OVERVIEW PIXEL \
    $j 2 4 8 16 32 64 128
done

# Create tile indices
cd output/publieke-werken-1943/3857
gdaltindex index.shp warped/*.tif
ogrinfo -sql "CREATE SPATIAL INDEX ON index" index.shp

gdalbuildvrt index.vrt index.shp
