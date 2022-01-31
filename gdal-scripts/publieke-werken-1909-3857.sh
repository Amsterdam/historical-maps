#!/bin/bash

# Create the directory that will contain the warped TIFFs:
mkdir -p output/downloads
mkdir -p output/publieke-werken-1909/3857/warped

# ==============================================
# Name: DUIZ00070000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00070000001.jpg ]; then
  wget -O output/downloads/DUIZ00070000001.jpg "https://webservices.picturae.com/mediabank/media/a0b01755-bd0b-253d-f79f-199ac7be0c11/downloadoriginal/b76cd78f-70c2-fadd-a5e8-66e32a4ba316?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 181 148 4.85603831538427 52.41846522116897 \
-gcp 5771 192 4.869997236716251 52.41822899269805 \
-gcp 5733 4600 4.869691198997782 52.41149102900232 \
-gcp 137 4557 4.855734399901251 52.411727224683844 \
   output/downloads/DUIZ00070000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00070000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.855734399901251,52.411727224683844],[4.869691198997782,52.41149102900232],[4.869997236716251,52.41822899269805],[4.85603831538427,52.41846522116897],[4.855734399901251,52.411727224683844]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00070000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00070000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00070000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00070000001-warped.tif

# ==============================================
# Name: DUIZ00078000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00078000001.jpg ]; then
  wget -O output/downloads/DUIZ00078000001.jpg "https://webservices.picturae.com/mediabank/media/ac68771e-c41d-1b36-87d5-d3818caa2f50/downloadoriginal/394a99d8-4589-c435-1236-3f95c9fb5d78?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 188 175 4.869997236716251 52.41822899269805 \
-gcp 5782 189 4.883956014355105 52.41799111908545 \
-gcp 5766 4598 4.883647854476956 52.41125318850168 \
-gcp 177 4587 4.869691198997782 52.41149102900232 \
   output/downloads/DUIZ00078000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00078000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.869691198997782,52.41149102900232],[4.883647854476956,52.41125318850168],[4.883956014355105,52.41799111908545],[4.869997236716251,52.41822899269805],[4.869691198997782,52.41149102900232]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00078000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00078000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00078000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00078000001-warped.tif

# ==============================================
# Name: DUIZ00085000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00085000001.jpg ]; then
  wget -O output/downloads/DUIZ00085000001.jpg "https://webservices.picturae.com/mediabank/media/a27b56d9-8ce1-c837-08ed-861de56b8bff/downloadoriginal/79d11efb-a74f-30f3-feed-6c74d5c2391c?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 275 224 4.883956014355105 52.41799111908545 \
-gcp 5860 220 4.897914647110927 52.41775160036329 \
-gcp 5864 4628 4.897604365149481 52.41101370321404 \
-gcp 276 4632 4.883647854476956 52.41125318850168 \
   output/downloads/DUIZ00085000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00085000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.883647854476956,52.41125318850168],[4.897604365149481,52.41101370321404],[4.897914647110927,52.41775160036329],[4.883956014355105,52.41799111908545],[4.883647854476956,52.41125318850168]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00085000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00085000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00085000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00085000001-warped.tif

# ==============================================
# Name: DUIZ00093000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00093000001.jpg ]; then
  wget -O output/downloads/DUIZ00093000001.jpg "https://webservices.picturae.com/mediabank/media/e7e0c1fe-bbe0-9722-3cff-e45a968e71cb/downloadoriginal/36525746-5f2c-711f-6187-89c56acbd10f?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 367 88 4.897914647110927 52.41775160036329 \
-gcp 5963 120 4.911873133793888 52.417510436564065 \
-gcp 5951 4528 4.911560729826148 52.410772573171855 \
-gcp 363 4510 4.897604365149481 52.41101370321404 \
   output/downloads/DUIZ00093000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00093000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.897604365149481,52.41101370321404],[4.911560729826148,52.410772573171855],[4.911873133793888,52.417510436564065],[4.897914647110927,52.41775160036329],[4.897604365149481,52.41101370321404]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00093000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00093000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00093000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00093000001-warped.tif

# ==============================================
# Name: DUIZ00123000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00123000001.jpg ]; then
  wget -O output/downloads/DUIZ00123000001.jpg "https://webservices.picturae.com/mediabank/media/917c8fce-27e7-367e-6b51-629a85e5b952/downloadoriginal/477a4e34-7941-ea5a-4217-18c01b555fd6?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 184 172 4.841777458376743 52.411961775514264 \
-gcp 5776 178 4.855734399901251 52.411727224683844 \
-gcp 5765 4588 4.855430573189139 52.40498921806989 \
-gcp 175 4583 4.841475753233889 52.405223736445436 \
   output/downloads/DUIZ00123000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00123000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.841475753233889,52.405223736445436],[4.855430573189139,52.40498921806989],[4.855734399901251,52.411727224683844],[4.841777458376743,52.411961775514264],[4.841475753233889,52.405223736445436]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00123000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00123000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00123000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00123000001-warped.tif

# ==============================================
# Name: DUIZ00133000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00133000001.jpg ]; then
  wget -O output/downloads/DUIZ00133000001.jpg "https://webservices.picturae.com/mediabank/media/01cd4eb9-b469-8d22-6edc-83b52ddd04af/downloadoriginal/96d34df0-00f6-bf0e-67b1-97bce9bcc2a9?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 201 172 4.855734399901251 52.411727224683844 \
-gcp 5793 195 4.869691198997782 52.41149102900232 \
-gcp 5769 4606 4.869385250791521 52.40475305516575 \
-gcp 184 4588 4.855430573189139 52.40498921806989 \
   output/downloads/DUIZ00133000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00133000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.855430573189139,52.40498921806989],[4.869385250791521,52.40475305516575],[4.869691198997782,52.41149102900232],[4.855734399901251,52.411727224683844],[4.855430573189139,52.40498921806989]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00133000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00133000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00133000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00133000001-warped.tif

# ==============================================
# Name: DUIZ00142000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00142000001.jpg ]; then
  wget -O output/downloads/DUIZ00142000001.jpg "https://webservices.picturae.com/mediabank/media/0023dda4-d644-90bc-9e95-30c7dee1acf6/downloadoriginal/28b13148-2c7c-b83b-25e8-35378e40ec71?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 179 175 4.869691198997782 52.41149102900232 \
-gcp 5765 171 4.883647854476956 52.41125318850168 \
-gcp 5758 4579 4.883339784852268 52.40451524776487 \
-gcp 177 4584 4.869385250791521 52.40475305516575 \
   output/downloads/DUIZ00142000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00142000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.869385250791521,52.40475305516575],[4.883339784852268,52.40451524776487],[4.883647854476956,52.41125318850168],[4.869691198997782,52.41149102900232],[4.869385250791521,52.40475305516575]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00142000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00142000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00142000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00142000001-warped.tif

# ==============================================
# Name: DUIZ00150000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00150000001.jpg ]; then
  wget -O output/downloads/DUIZ00150000001.jpg "https://webservices.picturae.com/mediabank/media/c8d3277f-84cb-4aa9-4cb6-9ccfc32eb86a/downloadoriginal/6e73b13a-1127-4c34-dc4d-b073573deec3?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 183 170 4.883647854476956 52.41125318850168 \
-gcp 5780 188 4.897604365149481 52.41101370321404 \
-gcp 5761 4597 4.897294174182696 52.404275795899494 \
-gcp 166 4581 4.883339784852268 52.40451524776487 \
   output/downloads/DUIZ00150000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00150000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.883339784852268,52.40451524776487],[4.897294174182696,52.404275795899494],[4.897604365149481,52.41101370321404],[4.883647854476956,52.41125318850168],[4.883339784852268,52.40451524776487]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00150000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00150000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00150000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00150000001-warped.tif

# ==============================================
# Name: DUIZ00194000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00194000001.jpg ]; then
  wget -O output/downloads/DUIZ00194000001.jpg "https://webservices.picturae.com/mediabank/media/7ad9f90e-964f-2453-cfb7-3480faefdfee/downloadoriginal/28c2a53e-a729-b3a7-4f02-5828f4faa83c?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 168 173 4.841475753233889 52.405223736445436 \
-gcp 5779 178 4.855430573189139 52.40498921806989 \
-gcp 5770 4598 4.855126835201124 52.398251201373554 \
-gcp 166 4593 4.841174136074159 52.39848568730622 \
   output/downloads/DUIZ00194000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00194000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.841174136074159,52.39848568730622],[4.855126835201124,52.398251201373554],[4.855430573189139,52.40498921806989],[4.841475753233889,52.405223736445436],[4.841174136074159,52.39848568730622]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00194000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00194000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00194000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00194000001-warped.tif

# ==============================================
# Name: DUIZ00200000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00200000001.jpg ]; then
  wget -O output/downloads/DUIZ00200000001.jpg "https://webservices.picturae.com/mediabank/media/753d0e51-a020-008d-39e4-104d70da0cad/downloadoriginal/9add1400-821f-678d-98bc-1f75497c5478?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 171 204 4.855430573189139 52.40498921806989 \
-gcp 5764 188 4.869385250791521 52.40475305516575 \
-gcp 5779 4604 4.869079392050279 52.3980150712347 \
-gcp 178 4618 4.855126835201124 52.398251201373554 \
   output/downloads/DUIZ00200000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00200000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.855126835201124,52.398251201373554],[4.869079392050279,52.3980150712347],[4.869385250791521,52.40475305516575],[4.855430573189139,52.40498921806989],[4.855126835201124,52.398251201373554]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00200000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00200000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00200000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00200000001-warped.tif

# ==============================================
# Name: DUIZ00207000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00207000001.jpg ]; then
  wget -O output/downloads/DUIZ00207000001.jpg "https://webservices.picturae.com/mediabank/media/68de9327-13ea-b15e-2e15-c037a9c1c207/downloadoriginal/6d25d3c0-4a86-cd11-f922-fa55be0cfd56?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 167 173 4.869385250791521 52.40475305516575 \
-gcp 5768 177 4.883339784852268 52.40451524776487 \
-gcp 5765 4594 4.883031805433463 52.39777729692147 \
-gcp 164 4593 4.869079392050279 52.3980150712347 \
   output/downloads/DUIZ00207000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00207000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.869079392050279,52.3980150712347],[4.883031805433463,52.39777729692147],[4.883339784852268,52.40451524776487],[4.869385250791521,52.40475305516575],[4.869079392050279,52.3980150712347]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00207000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00207000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00207000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00207000001-warped.tif

# ==============================================
# Name: DUIZ00214000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00214000001.jpg ]; then
  wget -O output/downloads/DUIZ00214000001.jpg "https://webservices.picturae.com/mediabank/media/ffbf57b8-dedf-d26a-b6f7-3cf42040012d/downloadoriginal/605c4bbb-1af3-66dd-8702-5ff92f412fef?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 176 182 4.883339784852268 52.40451524776487 \
-gcp 5774 171 4.897294174182696 52.404275795899494 \
-gcp 5787 4586 4.896984074162609 52.397537878466046 \
-gcp 180 4599 4.883031805433463 52.39777729692147 \
   output/downloads/DUIZ00214000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00214000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.883031805433463,52.39777729692147],[4.896984074162609,52.397537878466046],[4.897294174182696,52.404275795899494],[4.883339784852268,52.40451524776487],[4.883031805433463,52.39777729692147]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00214000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00214000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00214000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00214000001-warped.tif

# ==============================================
# Name: DUIZ00221000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00221000001.jpg ]; then
  wget -O output/downloads/DUIZ00221000001.jpg "https://webservices.picturae.com/mediabank/media/f1c01497-aa1e-7bcc-d973-8fa8fa11f4be/downloadoriginal/2b99f099-baf3-9d75-8b66-2e4cd772f0c3?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 304 307 4.897294174182696 52.404275795899494 \
-gcp 7706 305 4.911248417594206 52.40403469960201 \
-gcp 7712 6143 4.910936197049734 52.39729681590091 \
-gcp 307 6154 4.896984074162609 52.397537878466046 \
   output/downloads/DUIZ00221000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00221000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.896984074162609,52.397537878466046],[4.910936197049734,52.39729681590091],[4.911248417594206,52.40403469960201],[4.897294174182696,52.404275795899494],[4.896984074162609,52.397537878466046]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00221000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00221000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00221000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00221000001-warped.tif

# ==============================================
# Name: DUIZ00232000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00232000001.jpg ]; then
  wget -O output/downloads/DUIZ00232000001.jpg "https://webservices.picturae.com/mediabank/media/9c78df94-71b4-f91f-7cf1-c291c3e5900c/downloadoriginal/d05e03df-272a-7ca3-96d5-a97e30f20987?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 321 314 4.911248417594206 52.40403469960201 \
-gcp 7704 345 4.92520251389829 52.40379195890515 \
-gcp 7691 6171 4.92488817290693 52.3970541092587 \
-gcp 304 6148 4.910936197049734 52.39729681590091 \
   output/downloads/DUIZ00232000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00232000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.910936197049734,52.39729681590091],[4.92488817290693,52.3970541092587],[4.92520251389829,52.40379195890515],[4.911248417594206,52.40403469960201],[4.910936197049734,52.39729681590091]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00232000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00232000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00232000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00232000001-warped.tif

# ==============================================
# Name: DUIZ00273000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00273000001.jpg ]; then
  wget -O output/downloads/DUIZ00273000001.jpg "https://webservices.picturae.com/mediabank/media/6620d9cc-184f-86e5-00b0-788847d08f4e/downloadoriginal/02401b97-15d9-c4f8-97ec-7ef4a7f6f972?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 309 330 4.841174136074159 52.39848568730622 \
-gcp 7703 273 4.855126835201124 52.398251201373554 \
-gcp 7754 6102 4.854823185890424 52.39151317464126 \
-gcp 352 6170 4.840872606851152 52.39174762814298 \
   output/downloads/DUIZ00273000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00273000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.840872606851152,52.39174762814298],[4.854823185890424,52.39151317464126],[4.855126835201124,52.398251201373554],[4.841174136074159,52.39848568730622],[4.840872606851152,52.39174762814298]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00273000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00273000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00273000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00273000001-warped.tif

# ==============================================
# Name: DUIZ00280000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00280000001.jpg ]; then
  wget -O output/downloads/DUIZ00280000001.jpg "https://webservices.picturae.com/mediabank/media/595d0df6-1cd7-993a-2c28-3e0053a370fa/downloadoriginal/68611793-4099-32b2-cd81-4e2e935eebac?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 286 309 4.855126835201124 52.398251201373554 \
-gcp 7673 288 4.869079392050279 52.3980150712347 \
-gcp 7705 6108 4.868773622726888 52.391277077255616 \
-gcp 305 6143 4.854823185890424 52.39151317464126 \
   output/downloads/DUIZ00280000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00280000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.854823185890424,52.39151317464126],[4.868773622726888,52.391277077255616],[4.869079392050279,52.3980150712347],[4.855126835201124,52.398251201373554],[4.854823185890424,52.39151317464126]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00280000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00280000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00280000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00280000001-warped.tif

# ==============================================
# Name: DUIZ00287000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00287000001.jpg ]; then
  wget -O output/downloads/DUIZ00287000001.jpg "https://webservices.picturae.com/mediabank/media/81353eaa-0e01-b8b3-c96a-17cf2fa760c3/downloadoriginal/e6da03a3-e235-b2ed-e021-567fe749a732?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 291 352 4.869079392050279 52.3980150712347 \
-gcp 7663 303 4.883031805433463 52.39777729692147 \
-gcp 7706 6109 4.882723916173003 52.39103933601786 \
-gcp 327 6168 4.868773622726888 52.391277077255616 \
   output/downloads/DUIZ00287000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00287000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.868773622726888,52.391277077255616],[4.882723916173003,52.39103933601786],[4.883031805433463,52.39777729692147],[4.869079392050279,52.3980150712347],[4.868773622726888,52.391277077255616]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00287000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00287000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00287000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00287000001-warped.tif

# ==============================================
# Name: DUIZ00302000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00302000001.jpg ]; then
  wget -O output/downloads/DUIZ00302000001.jpg "https://webservices.picturae.com/mediabank/media/a6a7c39f-3bf8-7174-c804-89fa123d8a1e/downloadoriginal/ca45df25-2bdd-ae00-633b-6a034f830573?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 302 320 4.883031805433463 52.39777729692147 \
-gcp 7670 310 4.896984074162609 52.397537878466046 \
-gcp 7689 6122 4.896674065041304 52.390799950960215 \
-gcp 313 6151 4.882723916173003 52.39103933601786 \
   output/downloads/DUIZ00302000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00302000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.882723916173003,52.39103933601786],[4.896674065041304,52.390799950960215],[4.896984074162609,52.397537878466046],[4.883031805433463,52.39777729692147],[4.882723916173003,52.39103933601786]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00302000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00302000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00302000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00302000001-warped.tif

# ==============================================
# Name: DUIZ00310000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00310000001.jpg ]; then
  wget -O output/downloads/DUIZ00310000001.jpg "https://webservices.picturae.com/mediabank/media/a134257b-7b30-5f9a-94a8-75613a2944d3/downloadoriginal/b8a73b18-6c2d-cc2c-9aa5-efb1dbf557f8?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 310 332 4.896984074162609 52.397537878466046 \
-gcp 7692 294 4.910936197049734 52.39729681590091 \
-gcp 7732 6111 4.910624068144418 52.39055892211497 \
-gcp 339 6160 4.896674065041304 52.390799950960215 \
   output/downloads/DUIZ00310000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00310000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.896674065041304,52.390799950960215],[4.910624068144418,52.39055892211497],[4.910936197049734,52.39729681590091],[4.896984074162609,52.397537878466046],[4.896674065041304,52.390799950960215]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00310000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00310000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00310000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00310000001-warped.tif

# ==============================================
# Name: DUIZ00320000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00320000001.jpg ]; then
  wget -O output/downloads/DUIZ00320000001.jpg "https://webservices.picturae.com/mediabank/media/b298db2e-5b28-f29f-4d4a-40bfaa153f6b/downloadoriginal/06dc9699-ea32-5a12-79b3-3e4ac730719c?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 323 338 4.910936197049734 52.39729681590091 \
-gcp 7706 343 4.92488817290693 52.3970541092587 \
-gcp 7711 6149 4.924573924295057 52.39031624951497 \
-gcp 333 6155 4.910624068144418 52.39055892211497 \
   output/downloads/DUIZ00320000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00320000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.910624068144418,52.39055892211497],[4.924573924295057,52.39031624951497],[4.92488817290693,52.3970541092587],[4.910936197049734,52.39729681590091],[4.910624068144418,52.39055892211497]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00320000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00320000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00320000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00320000001-warped.tif

# ==============================================
# Name: DUIZ00374000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00374000001.jpg ]; then
  wget -O output/downloads/DUIZ00374000001.jpg "https://webservices.picturae.com/mediabank/media/1911d26f-7bff-9920-0d62-813d29830cef/downloadoriginal/15aabeb2-c532-45f2-c168-6cb42c4e528b?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 371 279 4.840872606851152 52.39174762814298 \
-gcp 7760 269 4.854823185890424 52.39151317464126 \
-gcp 7771 6091 4.8545196252102905 52.38477513791942 \
-gcp 364 6114 4.840571165518503 52.38500955900218 \
   output/downloads/DUIZ00374000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00374000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.840571165518503,52.38500955900218],[4.8545196252102905,52.38477513791942],[4.854823185890424,52.39151317464126],[4.840872606851152,52.39174762814298],[4.840571165518503,52.38500955900218]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00374000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00374000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00374000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00374000001-warped.tif

# ==============================================
# Name: DUIZ00384000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00384000001.jpg ]; then
  wget -O output/downloads/DUIZ00384000001.jpg "https://webservices.picturae.com/mediabank/media/2e92d995-e2d2-2596-8fd9-e1f34f11104c/downloadoriginal/8f25cf47-1d4b-2b49-ed5e-410013bed4f9?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 307 351 4.854823185890424 52.39151317464126 \
-gcp 7690 298 4.868773622726888 52.391277077255616 \
-gcp 7739 6122 4.868467942774224 52.384539073274944 \
-gcp 343 6182 4.8545196252102905 52.38477513791942 \
   output/downloads/DUIZ00384000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00384000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.8545196252102905,52.38477513791942],[4.868467942774224,52.384539073274944],[4.868773622726888,52.391277077255616],[4.854823185890424,52.39151317464126],[4.8545196252102905,52.38477513791942]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00384000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00384000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00384000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00384000001-warped.tif

# ==============================================
# Name: DUIZ00393000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00393000001.jpg ]; then
  wget -O output/downloads/DUIZ00393000001.jpg "https://webservices.picturae.com/mediabank/media/6cc0a1d5-5dd3-7621-9b30-77e56a0b0b97/downloadoriginal/f8e5db04-fd77-0057-9910-4b187bcc9562?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 317 309 4.868773622726888 52.391277077255616 \
-gcp 7698 283 4.882723916173003 52.39103933601786 \
-gcp 7735 6099 4.88241611702337 52.38430136510051 \
-gcp 342 6135 4.868467942774224 52.384539073274944 \
   output/downloads/DUIZ00393000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00393000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.868467942774224,52.384539073274944],[4.88241611702337,52.38430136510051],[4.882723916173003,52.39103933601786],[4.868773622726888,52.391277077255616],[4.868467942774224,52.384539073274944]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00393000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00393000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00393000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00393000001-warped.tif

# ==============================================
# Name: DUIZ00405000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00405000001.jpg ]; then
  wget -O output/downloads/DUIZ00405000001.jpg "https://webservices.picturae.com/mediabank/media/ce1ca0bb-7cfc-5da8-006f-aa9ed9f17295/downloadoriginal/0d726c60-b23d-1f93-cc37-43637b78ae48?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 324 320 4.882723916173003 52.39103933601786 \
-gcp 7705 294 4.896674065041304 52.390799950960215 \
-gcp 7737 6119 4.896364146770882 52.38406201342832 \
-gcp 337 6150 4.88241611702337 52.38430136510051 \
   output/downloads/DUIZ00405000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00405000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.88241611702337,52.38430136510051],[4.896364146770882,52.38406201342832],[4.896674065041304,52.390799950960215],[4.882723916173003,52.39103933601786],[4.88241611702337,52.38430136510051]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00405000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00405000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00405000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00405000001-warped.tif

# ==============================================
# Name: DUIZ00418000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00418000001.jpg ]; then
  wget -O output/downloads/DUIZ00418000001.jpg "https://webservices.picturae.com/mediabank/media/3c7ae09a-ec37-f015-d331-8c92b08e4486/downloadoriginal/4a5ed2cc-383c-6e79-1cfd-9880dd17bccb?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 257 304 4.896674065041304 52.390799950960215 \
-gcp 7714 285 4.910624068144418 52.39055892211497 \
-gcp 7728 6167 4.910312030829992 52.38382101829069 \
-gcp 309 6194 4.896364146770882 52.38406201342832 \
   output/downloads/DUIZ00418000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00418000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.896364146770882,52.38406201342832],[4.910312030829992,52.38382101829069],[4.910624068144418,52.39055892211497],[4.896674065041304,52.390799950960215],[4.896364146770882,52.38406201342832]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00418000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00418000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00418000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00418000001-warped.tif

# ==============================================
# Name: DUIZ00429000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00429000001.jpg ]; then
  wget -O output/downloads/DUIZ00429000001.jpg "https://webservices.picturae.com/mediabank/media/afb85521-e8af-c048-b9c2-3fef2f8c2270/downloadoriginal/64b2d9ec-2357-7a63-5899-6d38f6869166?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 344 269 4.910624068144418 52.39055892211497 \
-gcp 7780 226 4.924573924295057 52.39031624951497 \
-gcp 7819 6098 4.924259768014021 52.3835783797204 \
-gcp 379 6154 4.910312030829992 52.38382101829069 \
   output/downloads/DUIZ00429000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00429000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.910312030829992,52.38382101829069],[4.924259768014021,52.3835783797204],[4.924573924295057,52.39031624951497],[4.910624068144418,52.39055892211497],[4.910312030829992,52.38382101829069]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00429000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00429000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00429000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00429000001-warped.tif

# ==============================================
# Name: DUIZ00441000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00441000001.jpg ]; then
  wget -O output/downloads/DUIZ00441000001.jpg "https://webservices.picturae.com/mediabank/media/92dcda3c-15aa-444c-c4cd-5e1eff0976a4/downloadoriginal/6a6c1630-4299-1323-05d9-dea11cb7cf67?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 335 338 4.924573924295057 52.39031624951497 \
-gcp 7782 346 4.938523632306012 52.39007193319314 \
-gcp 7788 6215 4.938207357136372 52.383334097750456 \
-gcp 347 6219 4.924259768014021 52.3835783797204 \
   output/downloads/DUIZ00441000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00441000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.924259768014021,52.3835783797204],[4.938207357136372,52.383334097750456],[4.938523632306012,52.39007193319314],[4.924573924295057,52.39031624951497],[4.924259768014021,52.3835783797204]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00441000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00441000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00441000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00441000001-warped.tif

# ==============================================
# Name: DUIZ00490000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00490000001.jpg ]; then
  wget -O output/downloads/DUIZ00490000001.jpg "https://webservices.picturae.com/mediabank/media/101a660f-b4d0-a0f7-a0da-c9fdf1b1eba8/downloadoriginal/ec825bde-9b41-d6f0-5f7c-612f05a23c5a?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 202 254 4.8545196252102905 52.38477513791942 \
-gcp 5877 249 4.868467942774224 52.384539073274944 \
-gcp 5875 4683 4.86816235214519 52.37780105933903 \
-gcp 200 4700 4.854216153114009 52.3780370912544 \
   output/downloads/DUIZ00490000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00490000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.854216153114009,52.3780370912544],[4.86816235214519,52.37780105933903],[4.868467942774224,52.384539073274944],[4.8545196252102905,52.38477513791942],[4.854216153114009,52.3780370912544]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00490000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00490000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00490000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00490000001-warped.tif

# ==============================================
# Name: DUIZ00499000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00499000001.jpg ]; then
  wget -O output/downloads/DUIZ00499000001.jpg "https://webservices.picturae.com/mediabank/media/4e2a99be-6f68-439e-b760-c2e9a09faad7/downloadoriginal/78f4be37-db68-f901-a9c2-89ffd0c94553?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 254 265 4.868467942774224 52.384539073274944 \
-gcp 5904 238 4.88241611702337 52.38430136510051 \
-gcp 5931 4691 4.882108407937094 52.377563384215804 \
-gcp 280 4721 4.86816235214519 52.37780105933903 \
   output/downloads/DUIZ00499000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00499000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.86816235214519,52.37780105933903],[4.882108407937094,52.377563384215804],[4.88241611702337,52.38430136510051],[4.868467942774224,52.384539073274944],[4.86816235214519,52.37780105933903]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00499000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00499000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00499000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00499000001-warped.tif

# ==============================================
# Name: DUIZ00515000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00515000001.jpg ]; then
  wget -O output/downloads/DUIZ00515000001.jpg "https://webservices.picturae.com/mediabank/media/563f6ebe-dd3d-891c-2fa8-339f23ff3aa8/downloadoriginal/5cf1b9ee-b0fc-cf1a-51ab-98612d3cdcc3?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 262 310 4.88241611702337 52.38430136510051 \
-gcp 5907 253 4.896364146770882 52.38406201342832 \
-gcp 5949 4703 4.89605431930349 52.377324065916845 \
-gcp 303 4759 4.882108407937094 52.377563384215804 \
   output/downloads/DUIZ00515000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00515000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.882108407937094,52.377563384215804],[4.89605431930349,52.377324065916845],[4.896364146770882,52.38406201342832],[4.88241611702337,52.38430136510051],[4.882108407937094,52.377563384215804]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00515000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00515000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00515000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00515000001-warped.tif

# ==============================================
# Name: DUIZ00532000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00532000001.jpg ]; then
  wget -O output/downloads/DUIZ00532000001.jpg "https://webservices.picturae.com/mediabank/media/4ff8e3be-5c60-5eb7-655d-81e9220c4631/downloadoriginal/b8412951-bd0d-682f-e70b-9f9e562af509?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 242 270 4.896364146770882 52.38406201342832 \
-gcp 5886 227 4.910312030829992 52.38382101829069 \
-gcp 5924 4675 4.910000085058215 52.377083104474494 \
-gcp 278 4726 4.89605431930349 52.377324065916845 \
   output/downloads/DUIZ00532000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00532000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.89605431930349,52.377324065916845],[4.910000085058215,52.377083104474494],[4.910312030829992,52.38382101829069],[4.896364146770882,52.38406201342832],[4.89605431930349,52.377324065916845]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00532000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00532000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00532000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00532000001-warped.tif

# ==============================================
# Name: DUIZ00546000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00546000001.jpg ]; then
  wget -O output/downloads/DUIZ00546000001.jpg "https://webservices.picturae.com/mediabank/media/733edd45-d104-8572-6b4e-605a39ca23ba/downloadoriginal/b8906432-f9ec-aede-b612-7bbb6a6faea9?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 255 256 4.910312030829992 52.38382101829069 \
-gcp 5896 277 4.924259768014021 52.3835783797204 \
-gcp 5886 4722 4.9239457040152015 52.37684049992151 \
-gcp 242 4714 4.910000085058215 52.377083104474494 \
   output/downloads/DUIZ00546000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00546000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.910000085058215,52.377083104474494],[4.9239457040152015,52.37684049992151],[4.924259768014021,52.3835783797204],[4.910312030829992,52.38382101829069],[4.910000085058215,52.377083104474494]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00546000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00546000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00546000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00546000001-warped.tif

# ==============================================
# Name: DUIZ00558000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00558000001.jpg ]; then
  wget -O output/downloads/DUIZ00558000001.jpg "https://webservices.picturae.com/mediabank/media/ab130b67-923a-4818-7d0c-a4836ea8f52f/downloadoriginal/300397bc-5004-b215-0d3f-e5e489f37b05?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 249 233 4.924259768014021 52.3835783797204 \
-gcp 5866 245 4.938207357136372 52.383334097750456 \
-gcp 5860 4659 4.937891174988465 52.376596252290824 \
-gcp 255 4657 4.9239457040152015 52.37684049992151 \
   output/downloads/DUIZ00558000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00558000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.9239457040152015,52.37684049992151],[4.937891174988465,52.376596252290824],[4.938207357136372,52.383334097750456],[4.924259768014021,52.3835783797204],[4.9239457040152015,52.37684049992151]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00558000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00558000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00558000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00558000001-warped.tif

# ==============================================
# Name: DUIZ00565000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00565000001.jpg ]; then
  wget -O output/downloads/DUIZ00565000001.jpg "https://webservices.picturae.com/mediabank/media/5cec5203-b48c-d33a-8d58-3c281b212e86/downloadoriginal/f485154b-d7ae-44f4-d0ef-1ec431c63661?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 219 244 4.938207357136372 52.383334097750456 \
-gcp 5845 255 4.952154797010537 52.383088172414034 \
-gcp 5844 4662 4.951836496792104 52.37635036161575 \
-gcp 204 4663 4.937891174988465 52.376596252290824 \
   output/downloads/DUIZ00565000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00565000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.937891174988465,52.376596252290824],[4.951836496792104,52.37635036161575],[4.952154797010537,52.383088172414034],[4.938207357136372,52.383334097750456],[4.937891174988465,52.376596252290824]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00565000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00565000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00565000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00565000001-warped.tif

# ==============================================
# Name: DUIZ00570000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00570000001.jpg ]; then
  wget -O output/downloads/DUIZ00570000001.jpg "https://webservices.picturae.com/mediabank/media/f9a1982e-3345-432e-f306-30f8e7b267e9/downloadoriginal/0b607c9b-dbab-189b-5e28-cd06492c7f62?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 257 241 4.952154797010537 52.383088172414034 \
-gcp 5915 240 4.966102086450089 52.38284060374484 \
-gcp 5927 4701 4.9657816682403055 52.37610282792972 \
-gcp 262 4711 4.951836496792104 52.37635036161575 \
   output/downloads/DUIZ00570000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00570000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.951836496792104,52.37635036161575],[4.9657816682403055,52.37610282792972],[4.966102086450089,52.38284060374484],[4.952154797010537,52.383088172414034],[4.951836496792104,52.37635036161575]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00570000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00570000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00570000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00570000001-warped.tif

# ==============================================
# Name: DUIZ00605000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00605000001.jpg ]; then
  wget -O output/downloads/DUIZ00605000001.jpg "https://webservices.picturae.com/mediabank/media/abebbe6b-1351-3105-1f65-5dc930d20b41/downloadoriginal/7da5939d-7783-7f51-b615-50100d6bf071?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 235 228 4.854216153114009 52.3780370912544 \
-gcp 5846 212 4.86816235214519 52.37780105933903 \
-gcp 5857 4640 4.867856850792717 52.371063035494366 \
-gcp 249 4660 4.853912769554891 52.37129903469264 \
   output/downloads/DUIZ00605000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00605000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.853912769554891,52.37129903469264],[4.867856850792717,52.371063035494366],[4.86816235214519,52.37780105933903],[4.854216153114009,52.3780370912544],[4.853912769554891,52.37129903469264]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00605000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00605000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00605000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00605000001-warped.tif

# ==============================================
# Name: DUIZ00620000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00620000001.jpg ]; then
  wget -O output/downloads/DUIZ00620000001.jpg "https://webservices.picturae.com/mediabank/media/afbfb258-b246-7340-6d9b-ce807f3ada8d/downloadoriginal/ca40e424-3161-0841-5f8a-25924670979a?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 248 306 4.86816235214519 52.37780105933903 \
-gcp 5858 262 4.882108407937094 52.377563384215804 \
-gcp 5891 4687 4.881800788866729 52.37082539341016 \
-gcp 281 4731 4.867856850792717 52.371063035494366 \
   output/downloads/DUIZ00620000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00620000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.867856850792717,52.371063035494366],[4.881800788866729,52.37082539341016],[4.882108407937094,52.377563384215804],[4.86816235214519,52.37780105933903],[4.867856850792717,52.371063035494366]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00620000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00620000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00620000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00620000001-warped.tif

# ==============================================
# Name: DUIZ00640000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00640000001.jpg ]; then
  wget -O output/downloads/DUIZ00640000001.jpg "https://webservices.picturae.com/mediabank/media/15eda166-99f6-6837-e739-ea77098f2f76/downloadoriginal/f4da66ca-ef5b-b704-9d45-188d5239eb2d?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 235 282 4.882108407937094 52.377563384215804 \
-gcp 5832 269 4.89605431930349 52.377324065916845 \
-gcp 5835 4690 4.8957445825913 52.37058610847218 \
-gcp 246 4705 4.881800788866729 52.37082539341016 \
   output/downloads/DUIZ00640000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00640000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.881800788866729,52.37082539341016],[4.8957445825913,52.37058610847218],[4.89605431930349,52.377324065916845],[4.882108407937094,52.377563384215804],[4.881800788866729,52.37082539341016]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00640000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00640000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00640000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00640000001-warped.tif

# ==============================================
# Name: DUIZ00660000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00660000001.jpg ]; then
  wget -O output/downloads/DUIZ00660000001.jpg "https://webservices.picturae.com/mediabank/media/9ef63c90-2655-606a-a983-5e1863332604/downloadoriginal/63ac7dc0-078c-6f6f-22f9-3fef2a397b4a?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 156 256 4.89605431930349 52.377324065916845 \
-gcp 5771 216 4.910000085058215 52.377083104474494 \
-gcp 5804 4642 4.909688230780882 52.370345180712825 \
-gcp 186 4687 4.8957445825913 52.37058610847218 \
   output/downloads/DUIZ00660000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00660000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.8957445825913,52.37058610847218],[4.909688230780882,52.370345180712825],[4.910000085058215,52.377083104474494],[4.89605431930349,52.377324065916845],[4.8957445825913,52.37058610847218]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00660000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00660000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00660000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00660000001-warped.tif

# ==============================================
# Name: DUIZ00680000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00680000001.jpg ]; then
  wget -O output/downloads/DUIZ00680000001.jpg "https://webservices.picturae.com/mediabank/media/246fdb68-89d2-b5b3-1964-6ef931ce6856/downloadoriginal/97048eab-1aaf-b6f7-791a-c8504155f354?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 233 273 4.910000085058215 52.377083104474494 \
-gcp 5849 252 4.9239457040152015 52.37684049992151 \
-gcp 5866 4677 4.923631732250015 52.37010261016465 \
-gcp 249 4703 4.909688230780882 52.370345180712825 \
   output/downloads/DUIZ00680000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00680000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.909688230780882,52.370345180712825],[4.923631732250015,52.37010261016465],[4.9239457040152015,52.37684049992151],[4.910000085058215,52.377083104474494],[4.909688230780882,52.370345180712825]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00680000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00680000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00680000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00680000001-warped.tif

# ==============================================
# Name: DUIZ00695000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00695000001.jpg ]; then
  wget -O output/downloads/DUIZ00695000001.jpg "https://webservices.picturae.com/mediabank/media/43a53352-a14f-ada5-6c5b-c80b8149fbdf/downloadoriginal/86c67e07-93ab-534b-2ed8-3ff60a908d30?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 244 253 4.9239457040152015 52.37684049992151 \
-gcp 5856 243 4.937891174988465 52.376596252290824 \
-gcp 5862 4666 4.9375750858133225 52.369858396860785 \
-gcp 256 4681 4.923631732250015 52.37010261016465 \
   output/downloads/DUIZ00695000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00695000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.923631732250015,52.37010261016465],[4.9375750858133225,52.369858396860785],[4.937891174988465,52.376596252290824],[4.9239457040152015,52.37684049992151],[4.923631732250015,52.37010261016465]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00695000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00695000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00695000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00695000001-warped.tif

# ==============================================
# Name: DUIZ00706000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00706000001.jpg ]; then
  wget -O output/downloads/DUIZ00706000001.jpg "https://webservices.picturae.com/mediabank/media/38ca7d1f-620c-62fe-6c40-526131973bab/downloadoriginal/fcd3d32b-12e7-8bdc-1030-1f3d313fd61c?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 244 280 4.937891174988465 52.376596252290824 \
-gcp 5853 243 4.951836496792104 52.37635036161575 \
-gcp 5881 4669 4.9515182902855175 52.36961254083432 \
-gcp 264 4713 4.9375750858133225 52.369858396860785 \
   output/downloads/DUIZ00706000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00706000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.9375750858133225,52.369858396860785],[4.9515182902855175,52.36961254083432],[4.951836496792104,52.37635036161575],[4.937891174988465,52.376596252290824],[4.9375750858133225,52.369858396860785]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00706000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00706000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00706000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00706000001-warped.tif

# ==============================================
# Name: DUIZ00714000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00714000001.jpg ]; then
  wget -O output/downloads/DUIZ00714000001.jpg "https://webservices.picturae.com/mediabank/media/3cc9e7a3-8b1d-3f25-ed1f-39d893dd1774/downloadoriginal/4a35fea1-d5d3-8f0e-afdb-0af32b876c76?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 244 252 4.951836496792104 52.37635036161575 \
-gcp 5865 244 4.9657816682403055 52.37610282792972 \
-gcp 5876 4677 4.965461344481393 52.3693650421189 \
-gcp 248 4689 4.9515182902855175 52.36961254083432 \
   output/downloads/DUIZ00714000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00714000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.9515182902855175,52.36961254083432],[4.965461344481393,52.3693650421189],[4.9657816682403055,52.37610282792972],[4.951836496792104,52.37635036161575],[4.9515182902855175,52.36961254083432]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00714000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00714000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00714000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00714000001-warped.tif

# ==============================================
# Name: DUIZ00738000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00738000001.jpg ]; then
  wget -O output/downloads/DUIZ00738000001.jpg "https://webservices.picturae.com/mediabank/media/307c7071-c5af-d815-9314-665fb9cfcc22/downloadoriginal/c9cd772d-13fe-0a18-3b38-ca25aec0669e?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 247 238 4.853912769554891 52.37129903469264 \
-gcp 5863 241 4.867856850792717 52.371063035494366 \
-gcp 5867 4669 4.867551438669778 52.36432500178729 \
-gcp 248 4675 4.85360947448629 52.36456096828053 \
   output/downloads/DUIZ00738000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00738000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.85360947448629,52.36456096828053],[4.867551438669778,52.36432500178729],[4.867856850792717,52.371063035494366],[4.853912769554891,52.37129903469264],[4.85360947448629,52.36456096828053]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00738000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00738000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00738000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00738000001-warped.tif

# ==============================================
# Name: DUIZ00754000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00754000001.jpg ]; then
  wget -O output/downloads/DUIZ00754000001.jpg "https://webservices.picturae.com/mediabank/media/3c85c96a-2512-006e-4e2c-8877eb3848ac/downloadoriginal/75a4ce5d-a70b-0d5e-219d-ca1f04af51e2?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 240 315 4.867856850792717 52.371063035494366 \
-gcp 5851 252 4.881800788866729 52.37082539341016 \
-gcp 5904 4676 4.881493259764861 52.36408739273002 \
-gcp 293 4743 4.867551438669778 52.36432500178729 \
   output/downloads/DUIZ00754000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00754000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.867551438669778,52.36432500178729],[4.881493259764861,52.36408739273002],[4.881800788866729,52.37082539341016],[4.867856850792717,52.371063035494366],[4.867551438669778,52.36432500178729]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00754000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00754000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00754000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00754000001-warped.tif

# ==============================================
# Name: DUIZ00772000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00772000001.jpg ]; then
  wget -O output/downloads/DUIZ00772000001.jpg "https://webservices.picturae.com/mediabank/media/7afc2fde-ee2f-70d9-8520-79e6339c993b/downloadoriginal/7b20eee5-ebb9-97cc-9d69-c67eebbc336d?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 156 245 4.881800788866729 52.37082539341016 \
-gcp 5768 266 4.8957445825913 52.37058610847218 \
-gcp 5749 4695 4.895434936586521 52.36384814114081 \
-gcp 135 4675 4.881493259764861 52.36408739273002 \
   output/downloads/DUIZ00772000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00772000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.881493259764861,52.36408739273002],[4.895434936586521,52.36384814114081],[4.8957445825913,52.37058610847218],[4.881800788866729,52.37082539341016],[4.881493259764861,52.36408739273002]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00772000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00772000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00772000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00772000001-warped.tif

# ==============================================
# Name: DUIZ00793000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00793000001.jpg ]; then
  wget -O output/downloads/DUIZ00793000001.jpg "https://webservices.picturae.com/mediabank/media/96b7a9fb-3b85-5f05-c68a-f84a66ef9ff2/downloadoriginal/3ecc088e-05b7-a12d-14b2-e3013103dc21?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 325 337 4.8957445825913 52.37058610847218 \
-gcp 5886 343 4.909688230780882 52.370345180712825 \
-gcp 5893 4746 4.909376467949818 52.36360724705204 \
-gcp 321 4747 4.895434936586521 52.36384814114081 \
   output/downloads/DUIZ00793000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00793000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.895434936586521,52.36384814114081],[4.909376467949818,52.36360724705204],[4.909688230780882,52.370345180712825],[4.8957445825913,52.37058610847218],[4.895434936586521,52.36384814114081]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00793000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00793000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00793000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00793000001-warped.tif

# ==============================================
# Name: DUIZ00818000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00818000001.jpg ]; then
  wget -O output/downloads/DUIZ00818000001.jpg "https://webservices.picturae.com/mediabank/media/aee74db3-c44b-f29b-2592-8ed2d4494233/downloadoriginal/5f3fcaef-71b5-d413-2e30-60d3372d00b5?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 188 170 4.909688230780882 52.370345180712825 \
-gcp 5775 179 4.923631732250015 52.37010261016465 \
-gcp 5773 4579 4.923317852669906 52.36336471049635 \
-gcp 187 4576 4.909376467949818 52.36360724705204 \
   output/downloads/DUIZ00818000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00818000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.909376467949818,52.36360724705204],[4.923317852669906,52.36336471049635],[4.923631732250015,52.37010261016465],[4.909688230780882,52.370345180712825],[4.909376467949818,52.36360724705204]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00818000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00818000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00818000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00818000001-warped.tif

# ==============================================
# Name: DUIZ00833000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00833000001.jpg ]; then
  wget -O output/downloads/DUIZ00833000001.jpg "https://webservices.picturae.com/mediabank/media/68eb430d-9a1a-d3d3-a332-659b986bc99b/downloadoriginal/2a655ff5-b1af-57f8-ee6e-2d9a2769c537?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 64 81 4.923631732250015 52.37010261016465 \
-gcp 5658 49 4.9375750858133225 52.369858396860785 \
-gcp 5666 4456 4.937259089562014 52.36312053150669 \
-gcp 81 4486 4.923317852669906 52.36336471049635 \
   output/downloads/DUIZ00833000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00833000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.923317852669906,52.36336471049635],[4.937259089562014,52.36312053150669],[4.9375750858133225,52.369858396860785],[4.923631732250015,52.37010261016465],[4.923317852669906,52.36336471049635]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00833000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00833000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00833000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00833000001-warped.tif

# ==============================================
# Name: DUIZ00849000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00849000001.jpg ]; then
  wget -O output/downloads/DUIZ00849000001.jpg "https://webservices.picturae.com/mediabank/media/59c828ce-9129-a8dc-5bb4-b770216c2d6d/downloadoriginal/7eb29a0b-45c3-3f33-63be-f4d029ded096?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 190 171 4.9375750858133225 52.369858396860785 \
-gcp 5784 197 4.9515182902855175 52.36961254083432 \
-gcp 5762 4603 4.951200177441465 52.362874710116294 \
-gcp 168 4588 4.937259089562014 52.36312053150669 \
   output/downloads/DUIZ00849000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00849000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.937259089562014,52.36312053150669],[4.951200177441465,52.362874710116294],[4.9515182902855175,52.36961254083432],[4.9375750858133225,52.369858396860785],[4.937259089562014,52.36312053150669]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00849000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00849000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00849000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00849000001-warped.tif

# ==============================================
# Name: DUIZ00861000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00861000001.jpg ]; then
  wget -O output/downloads/DUIZ00861000001.jpg "https://webservices.picturae.com/mediabank/media/7adafd9d-d155-4d74-32bc-b394769ca2dc/downloadoriginal/58530822-3398-8ec8-9062-358c96d10be4?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 175 182 4.9515182902855175 52.36961254083432 \
-gcp 5768 177 4.965461344481393 52.3693650421189 \
-gcp 5777 4590 4.965141115123661 52.36262724635867 \
-gcp 176 4593 4.951200177441465 52.362874710116294 \
   output/downloads/DUIZ00861000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00861000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.951200177441465,52.362874710116294],[4.965141115123661,52.36262724635867],[4.965461344481393,52.3693650421189],[4.9515182902855175,52.36961254083432],[4.951200177441465,52.362874710116294]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00861000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00861000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00861000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00861000001-warped.tif

# ==============================================
# Name: DUIZ00892000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00892000001.jpg ]; then
  wget -O output/downloads/DUIZ00892000001.jpg "https://webservices.picturae.com/mediabank/media/f1f587cc-fd46-d472-60a5-4c75972c0e75/downloadoriginal/a96bf1ba-8705-6855-934c-e1a8eef19eaa?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 197 185 4.85360947448629 52.36456096828053 \
-gcp 5792 181 4.867551438669778 52.36432500178729 \
-gcp 5805 4583 4.867246115729371 52.357586958264285 \
-gcp 207 4597 4.853306267861583 52.35782289206453 \
   output/downloads/DUIZ00892000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00892000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.853306267861583,52.35782289206453],[4.867246115729371,52.357586958264285],[4.867551438669778,52.36432500178729],[4.85360947448629,52.36456096828053],[4.853306267861583,52.35782289206453]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00892000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00892000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00892000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00892000001-warped.tif

# ==============================================
# Name: DUIZ00906000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00906000001.jpg ]; then
  wget -O output/downloads/DUIZ00906000001.jpg "https://webservices.picturae.com/mediabank/media/5ac1668a-fc86-1e50-9238-cbd3010167c6/downloadoriginal/fdfcbddc-79c2-3e61-cce2-80a796ff768c?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 176 199 4.867551438669778 52.36432500178729 \
-gcp 5766 172 4.881493259764861 52.36408739273002 \
-gcp 5791 4573 4.8811858205841085 52.35734938222177 \
-gcp 196 4608 4.867246115729371 52.357586958264285 \
   output/downloads/DUIZ00906000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00906000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.867246115729371,52.357586958264285],[4.8811858205841085,52.35734938222177],[4.881493259764861,52.36408739273002],[4.867551438669778,52.36432500178729],[4.867246115729371,52.357586958264285]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00906000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00906000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00906000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00906000001-warped.tif

# ==============================================
# Name: DUIZ00925000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00925000001.jpg ]; then
  wget -O output/downloads/DUIZ00925000001.jpg "https://webservices.picturae.com/mediabank/media/2ed250ba-b278-9f67-e644-efe46a57e867/downloadoriginal/84dd902c-3d45-768f-92ea-ecac5afa85fd?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 210 87 4.881493259764861 52.36408739273002 \
-gcp 5790 105 4.895434936586521 52.36384814114081 \
-gcp 5776 4506 4.895125381241393 52.35711016396911 \
-gcp 197 4496 4.8811858205841085 52.35734938222177 \
   output/downloads/DUIZ00925000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00925000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.8811858205841085,52.35734938222177],[4.895125381241393,52.35711016396911],[4.895434936586521,52.36384814114081],[4.881493259764861,52.36408739273002],[4.8811858205841085,52.35734938222177]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00925000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00925000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00925000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00925000001-warped.tif

# ==============================================
# Name: DUIZ00943000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00943000001.jpg ]; then
  wget -O output/downloads/DUIZ00943000001.jpg "https://webservices.picturae.com/mediabank/media/9ef6c784-2070-b955-7e3f-cfcff7a1a42e/downloadoriginal/7edfe62a-bfc0-3d4b-1f22-a2a789accc7b?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 200 178 4.895434936586521 52.36384814114081 \
-gcp 5785 171 4.909376467949818 52.36360724705204 \
-gcp 5799 4575 4.909064796516888 52.35686930353865 \
-gcp 210 4589 4.895125381241393 52.35711016396911 \
   output/downloads/DUIZ00943000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00943000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.895125381241393,52.35711016396911],[4.909064796516888,52.35686930353865],[4.909376467949818,52.36360724705204],[4.895434936586521,52.36384814114081],[4.895125381241393,52.35711016396911]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00943000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00943000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00943000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00943000001-warped.tif

# ==============================================
# Name: DUIZ00962000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00962000001.jpg ]; then
  wget -O output/downloads/DUIZ00962000001.jpg "https://webservices.picturae.com/mediabank/media/7630e283-7a23-7948-ee61-74f5d14481c2/downloadoriginal/2c14d39e-6abd-75bd-85c8-2c0b131f2f2d?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 177 201 4.909376467949818 52.36360724705204 \
-gcp 5765 188 4.923317852669906 52.36336471049635 \
-gcp 5781 4593 4.923004065226358 52.35662680096299 \
-gcp 188 4613 4.909064796516888 52.35686930353865 \
   output/downloads/DUIZ00962000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00962000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.909064796516888,52.35686930353865],[4.923004065226358,52.35662680096299],[4.923317852669906,52.36336471049635],[4.909376467949818,52.36360724705204],[4.909064796516888,52.35686930353865]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00962000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00962000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00962000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00962000001-warped.tif

# ==============================================
# Name: DUIZ00977000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00977000001.jpg ]; then
  wget -O output/downloads/DUIZ00977000001.jpg "https://webservices.picturae.com/mediabank/media/662b143d-dfbb-8f3b-bfa9-113bc9af249e/downloadoriginal/836cff77-0526-8d15-7519-57468496bc85?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 186 179 4.923317852669906 52.36336471049635 \
-gcp 5773 195 4.937259089562014 52.36312053150669 \
-gcp 5765 4598 4.936943186185642 52.35638265627507 \
-gcp 179 4592 4.923004065226358 52.35662680096299 \
   output/downloads/DUIZ00977000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00977000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.923004065226358,52.35662680096299],[4.936943186185642,52.35638265627507],[4.937259089562014,52.36312053150669],[4.923317852669906,52.36336471049635],[4.923004065226358,52.35662680096299]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00977000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00977000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00977000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00977000001-warped.tif

# ==============================================
# Name: DUIZ00990000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ00990000001.jpg ]; then
  wget -O output/downloads/DUIZ00990000001.jpg "https://webservices.picturae.com/mediabank/media/f2bae678-9caf-1ec2-1f51-512a32ea5829/downloadoriginal/3f5914a5-a828-6beb-e72d-91f20037dc0e?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 198 175 4.937259089562014 52.36312053150669 \
-gcp 5783 195 4.951200177441465 52.362874710116294 \
-gcp 5772 4603 4.950882158210667 52.35613686950809 \
-gcp 179 4591 4.936943186185642 52.35638265627507 \
   output/downloads/DUIZ00990000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ00990000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936943186185642,52.35638265627507],[4.950882158210667,52.35613686950809],[4.951200177441465,52.362874710116294],[4.937259089562014,52.36312053150669],[4.936943186185642,52.35638265627507]]]}' > output/publieke-werken-1909/3857/warped/DUIZ00990000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ00990000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ00990000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ00990000001-warped.tif

# ==============================================
# Name: DUIZ01001000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01001000001.jpg ]; then
  wget -O output/downloads/DUIZ01001000001.jpg "https://webservices.picturae.com/mediabank/media/7251c119-e8ba-91d2-215b-aac4e6e0aa6b/downloadoriginal/f2791b1f-ba0b-8c74-1487-4669537adc9e?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 172 169 4.951200177441465 52.362874710116294 \
-gcp 5760 170 4.965141115123661 52.36262724635867 \
-gcp 5760 4578 4.964820980117449 52.3558894406956 \
-gcp 167 4582 4.950882158210667 52.35613686950809 \
   output/downloads/DUIZ01001000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ01001000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.950882158210667,52.35613686950809],[4.964820980117449,52.3558894406956],[4.965141115123661,52.36262724635867],[4.951200177441465,52.362874710116294],[4.950882158210667,52.35613686950809]]]}' > output/publieke-werken-1909/3857/warped/DUIZ01001000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ01001000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ01001000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ01001000001-warped.tif

# ==============================================
# Name: DUIZ01022000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01022000001.jpg ]; then
  wget -O output/downloads/DUIZ01022000001.jpg "https://webservices.picturae.com/mediabank/media/680942b4-3944-fc6d-e083-a490477bea99/downloadoriginal/90aa8401-1e6c-ea9e-f46e-2e951779e863?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 181 181 4.853306267861583 52.35782289206453 \
-gcp 5774 167 4.867246115729371 52.357586958264285 \
-gcp 5784 4575 4.866940881924528 52.35084890497171 \
-gcp 186 4593 4.8530031496341826 52.351084806091 \
   output/downloads/DUIZ01022000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ01022000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.8530031496341826,52.351084806091],[4.866940881924528,52.35084890497171],[4.867246115729371,52.357586958264285],[4.853306267861583,52.35782289206453],[4.8530031496341826,52.351084806091]]]}' > output/publieke-werken-1909/3857/warped/DUIZ01022000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ01022000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ01022000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ01022000001-warped.tif

# ==============================================
# Name: DUIZ01035000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01035000001.jpg ]; then
  wget -O output/downloads/DUIZ01035000001.jpg "https://webservices.picturae.com/mediabank/media/6f6f72f0-4d93-3ea5-6bb6-041a70c7fa55/downloadoriginal/baeeba4c-f63c-be0e-edb3-b516d4bf85c2?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 210 190 4.867246115729371 52.357586958264285 \
-gcp 5794 205 4.8811858205841085 52.35734938222177 \
-gcp 5795 4604 4.880878471277129 52.350611361931925 \
-gcp 201 4597 4.866940881924528 52.35084890497171 \
   output/downloads/DUIZ01035000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ01035000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866940881924528,52.35084890497171],[4.880878471277129,52.350611361931925],[4.8811858205841085,52.35734938222177],[4.867246115729371,52.357586958264285],[4.866940881924528,52.35084890497171]]]}' > output/publieke-werken-1909/3857/warped/DUIZ01035000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ01035000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ01035000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ01035000001-warped.tif

# ==============================================
# Name: DUIZ01050000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01050000001.jpg ]; then
  wget -O output/downloads/DUIZ01050000001.jpg "https://webservices.picturae.com/mediabank/media/dd75bbcb-feb8-c81c-8c5c-94334a6a3374/downloadoriginal/86a6e1c8-55a8-4db3-0fab-ce8205c5b3de?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 195 190 4.8811858205841085 52.35734938222177 \
-gcp 5790 187 4.895125381241393 52.35711016396911 \
-gcp 5789 4597 4.894815916508187 52.350372177003585 \
-gcp 202 4604 4.880878471277129 52.350611361931925 \
   output/downloads/DUIZ01050000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ01050000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880878471277129,52.350611361931925],[4.894815916508187,52.350372177003585],[4.895125381241393,52.35711016396911],[4.8811858205841085,52.35734938222177],[4.880878471277129,52.350611361931925]]]}' > output/publieke-werken-1909/3857/warped/DUIZ01050000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ01050000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ01050000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ01050000001-warped.tif

# ==============================================
# Name: DUIZ01062000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01062000001.jpg ]; then
  wget -O output/downloads/DUIZ01062000001.jpg "https://webservices.picturae.com/mediabank/media/3f518b1d-0f37-73e4-ad99-e5af1d77c86f/downloadoriginal/3b999265-1d79-2562-5898-9a34504d694d?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 212 183 4.895125381241393 52.35711016396911 \
-gcp 5805 187 4.909064796516888 52.35686930353865 \
-gcp 5807 4591 4.9087532164339835 52.350131350219065 \
-gcp 213 4595 4.894815916508187 52.350372177003585 \
   output/downloads/DUIZ01062000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ01062000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894815916508187,52.350372177003585],[4.9087532164339835,52.350131350219065],[4.909064796516888,52.35686930353865],[4.895125381241393,52.35711016396911],[4.894815916508187,52.350372177003585]]]}' > output/publieke-werken-1909/3857/warped/DUIZ01062000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ01062000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ01062000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ01062000001-warped.tif

# ==============================================
# Name: DUIZ01076000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01076000001.jpg ]; then
  wget -O output/downloads/DUIZ01076000001.jpg "https://webservices.picturae.com/mediabank/media/49276316-32a6-5d35-fd47-68ae0a25f2ed/downloadoriginal/bf93c6a8-9470-6329-50f6-66ec2c856581?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 175 168 4.909064796516888 52.35686930353865 \
-gcp 5773 170 4.923004065226358 52.35662680096299 \
-gcp 5774 4588 4.922690369870883 52.34988888161104 \
-gcp 176 4590 4.9087532164339835 52.350131350219065 \
   output/downloads/DUIZ01076000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ01076000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.9087532164339835,52.350131350219065],[4.922690369870883,52.34988888161104],[4.923004065226358,52.35662680096299],[4.909064796516888,52.35686930353865],[4.9087532164339835,52.350131350219065]]]}' > output/publieke-werken-1909/3857/warped/DUIZ01076000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ01076000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ01076000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ01076000001-warped.tif

# ==============================================
# Name: DUIZ01089000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01089000001.jpg ]; then
  wget -O output/downloads/DUIZ01089000001.jpg "https://webservices.picturae.com/mediabank/media/261ee173-cd7c-8564-5092-15e279cdc0b4/downloadoriginal/1fc4dfb6-cc45-2894-8952-8fef5a799db2?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 194 188 4.923004065226358 52.35662680096299 \
-gcp 5786 202 4.936943186185642 52.35638265627507 \
-gcp 5778 4613 4.936627375635335 52.34964477121233 \
-gcp 188 4600 4.922690369870883 52.34988888161104 \
   output/downloads/DUIZ01089000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ01089000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922690369870883,52.34988888161104],[4.936627375635335,52.34964477121233],[4.936943186185642,52.35638265627507],[4.923004065226358,52.35662680096299],[4.922690369870883,52.34988888161104]]]}' > output/publieke-werken-1909/3857/warped/DUIZ01089000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ01089000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ01089000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ01089000001-warped.tif

# ==============================================
# Name: DUIZ01135000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01135000001.jpg ]; then
  wget -O output/downloads/DUIZ01135000001.jpg "https://webservices.picturae.com/mediabank/media/111a6046-8b2d-bd21-eb42-2218fe9ca535/downloadoriginal/efdb9d9b-16e2-950f-42c8-ee4ef12ca314?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 202 165 4.8530031496341826 52.351084806091 \
-gcp 5793 182 4.866940881924528 52.35084890497171 \
-gcp 5780 4595 4.866635737208313 52.34411084195607 \
-gcp 186 4581 4.852700119757533 52.344346710406356 \
   output/downloads/DUIZ01135000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ01135000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.852700119757533,52.344346710406356],[4.866635737208313,52.34411084195607],[4.866940881924528,52.35084890497171],[4.8530031496341826,52.351084806091],[4.852700119757533,52.344346710406356]]]}' > output/publieke-werken-1909/3857/warped/DUIZ01135000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ01135000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ01135000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ01135000001-warped.tif

# ==============================================
# Name: DUIZ01149000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01149000001.jpg ]; then
  wget -O output/downloads/DUIZ01149000001.jpg "https://webservices.picturae.com/mediabank/media/85683cca-d2e3-543b-bc4e-132ad6f0813a/downloadoriginal/123fa7f6-e30d-7477-1e61-be323e46ccab?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 189 212 4.866940881924528 52.35084890497171 \
-gcp 5758 189 4.880878471277129 52.350611361931925 \
-gcp 5779 4590 4.880571211796604 52.34387333190683 \
-gcp 197 4615 4.866635737208313 52.34411084195607 \
   output/downloads/DUIZ01149000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ01149000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866635737208313,52.34411084195607],[4.880571211796604,52.34387333190683],[4.880878471277129,52.350611361931925],[4.866940881924528,52.35084890497171],[4.866635737208313,52.34411084195607]]]}' > output/publieke-werken-1909/3857/warped/DUIZ01149000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ01149000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ01149000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ01149000001-warped.tif

# ==============================================
# Name: DUIZ01160000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01160000001.jpg ]; then
  wget -O output/downloads/DUIZ01160000001.jpg "https://webservices.picturae.com/mediabank/media/e982aed9-aa34-6c58-46eb-386b58ff0038/downloadoriginal/d2a24ffe-ac91-b638-b807-3945a1fbada2?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 183 205 4.880878471277129 52.350611361931925 \
-gcp 5758 186 4.894815916508187 52.350372177003585 \
-gcp 5780 4583 4.8945065423392125 52.343634180290586 \
-gcp 195 4610 4.880571211796604 52.34387333190683 \
   output/downloads/DUIZ01160000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ01160000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880571211796604,52.34387333190683],[4.8945065423392125,52.343634180290586],[4.894815916508187,52.350372177003585],[4.880878471277129,52.350611361931925],[4.880571211796604,52.34387333190683]]]}' > output/publieke-werken-1909/3857/warped/DUIZ01160000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ01160000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ01160000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ01160000001-warped.tif

# ==============================================
# Name: DUIZ01172000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01172000001.jpg ]; then
  wget -O output/downloads/DUIZ01172000001.jpg "https://webservices.picturae.com/mediabank/media/0d2b71e0-be3f-be03-05f9-3af606b05482/downloadoriginal/c62cc575-5c85-62a3-bf8a-8dfb4fb5b192?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 189 190 4.894815916508187 52.350372177003585 \
-gcp 5773 200 4.9087532164339835 52.350131350219065 \
-gcp 5771 4605 4.90844172765303 52.34339338713977 \
-gcp 181 4595 4.8945065423392125 52.343634180290586 \
   output/downloads/DUIZ01172000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ01172000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.8945065423392125,52.343634180290586],[4.90844172765303,52.34339338713977],[4.9087532164339835,52.350131350219065],[4.894815916508187,52.350372177003585],[4.8945065423392125,52.343634180290586]]]}' > output/publieke-werken-1909/3857/warped/DUIZ01172000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ01172000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ01172000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ01172000001-warped.tif

# ==============================================
# Name: DUIZ01182000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01182000001.jpg ]; then
  wget -O output/downloads/DUIZ01182000001.jpg "https://webservices.picturae.com/mediabank/media/395b049e-243e-5210-2095-1a0946c1edf7/downloadoriginal/58fccf74-84d0-5fed-43ce-28a7954106c1?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 188 187 4.9087532164339835 52.350131350219065 \
-gcp 5774 179 4.922690369870883 52.34988888161104 \
-gcp 5789 4587 4.922376766555028 52.34315095248693 \
-gcp 198 4596 4.90844172765303 52.34339338713977 \
   output/downloads/DUIZ01182000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ01182000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.90844172765303,52.34339338713977],[4.922376766555028,52.34315095248693],[4.922690369870883,52.34988888161104],[4.9087532164339835,52.350131350219065],[4.90844172765303,52.34339338713977]]]}' > output/publieke-werken-1909/3857/warped/DUIZ01182000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ01182000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ01182000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ01182000001-warped.tif

# ==============================================
# Name: DUIZ01239000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01239000001.jpg ]; then
  wget -O output/downloads/DUIZ01239000001.jpg "https://webservices.picturae.com/mediabank/media/5a0beae2-5ab8-d4cb-660d-ab018b5c80a3/downloadoriginal/6f6a85aa-b735-90f1-5ef2-629784827631?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 170 176 4.852700119757533 52.344346710406356 \
-gcp 5781 181 4.866635737208313 52.34411084195607 \
-gcp 5783 4551 4.866330681533823 52.33737276926373 \
-gcp 169 4560 4.852397178185109 52.33760860505705 \
   output/downloads/DUIZ01239000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ01239000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.852397178185109,52.33760860505705],[4.866330681533823,52.33737276926373],[4.866635737208313,52.34411084195607],[4.852700119757533,52.344346710406356],[4.852397178185109,52.33760860505705]]]}' > output/publieke-werken-1909/3857/warped/DUIZ01239000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ01239000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ01239000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ01239000001-warped.tif

# ==============================================
# Name: DUIZ01252000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01252000001.jpg ]; then
  wget -O output/downloads/DUIZ01252000001.jpg "https://webservices.picturae.com/mediabank/media/acd3a373-1446-658e-a23e-97145d0182b8/downloadoriginal/27bca6aa-16af-2331-6116-2b2b1d55f890?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 189 189 4.866635737208313 52.34411084195607 \
-gcp 5771 176 4.880571211796604 52.34387333190683 \
-gcp 5784 4580 4.880264042095253 52.33713529219289 \
-gcp 201 4592 4.866330681533823 52.33737276926373 \
   output/downloads/DUIZ01252000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ01252000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866330681533823,52.33737276926373],[4.880264042095253,52.33713529219289],[4.880571211796604,52.34387333190683],[4.866635737208313,52.34411084195607],[4.866330681533823,52.33737276926373]]]}' > output/publieke-werken-1909/3857/warped/DUIZ01252000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ01252000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ01252000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ01252000001-warped.tif

# ==============================================
# Name: DUIZ01262000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01262000001.jpg ]; then
  wget -O output/downloads/DUIZ01262000001.jpg "https://webservices.picturae.com/mediabank/media/2e5aa66d-28e4-d119-3f63-151d9414d05e/downloadoriginal/08da73b1-73bf-a061-6504-de2add66b408?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 184 215 4.880571211796604 52.34387333190683 \
-gcp 5771 184 4.8945065423392125 52.343634180290586 \
-gcp 5801 4583 4.894197258686809 52.33689617387661 \
-gcp 215 4624 4.880264042095253 52.33713529219289 \
   output/downloads/DUIZ01262000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ01262000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880264042095253,52.33713529219289],[4.894197258686809,52.33689617387661],[4.8945065423392125,52.343634180290586],[4.880571211796604,52.34387333190683],[4.880264042095253,52.33713529219289]]]}' > output/publieke-werken-1909/3857/warped/DUIZ01262000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ01262000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ01262000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ01262000001-warped.tif

# ==============================================
# Name: DUIZ01271000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01271000001.jpg ]; then
  wget -O output/downloads/DUIZ01271000001.jpg "https://webservices.picturae.com/mediabank/media/3993a6d0-820e-8fbb-b3d1-4ae252e1353f/downloadoriginal/da8a3ecd-8527-53f1-20c3-03a3c4035bf8?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 176 205 4.8945065423392125 52.343634180290586 \
-gcp 5762 200 4.90844172765303 52.34339338713977 \
-gcp 5772 4608 4.9081303301259895 52.33665541434712 \
-gcp 182 4618 4.894197258686809 52.33689617387661 \
   output/downloads/DUIZ01271000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ01271000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894197258686809,52.33689617387661],[4.9081303301259895,52.33665541434712],[4.90844172765303,52.34339338713977],[4.8945065423392125,52.343634180290586],[4.894197258686809,52.33689617387661]]]}' > output/publieke-werken-1909/3857/warped/DUIZ01271000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ01271000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ01271000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ01271000001-warped.tif

# ==============================================
# Name: DUIZ01280000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01280000001.jpg ]; then
  wget -O output/downloads/DUIZ01280000001.jpg "https://webservices.picturae.com/mediabank/media/db43f34b-c369-f127-dae6-89a7de8da021/downloadoriginal/db030e43-3658-67ad-e48b-730a88a4fdcc?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 186 164 4.90844172765303 52.34339338713977 \
-gcp 5776 162 4.922376766555028 52.34315095248693 \
-gcp 5784 4566 4.922063255230378 52.33641301363706 \
-gcp 194 4579 4.9081303301259895 52.33665541434712 \
   output/downloads/DUIZ01280000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ01280000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.9081303301259895,52.33665541434712],[4.922063255230378,52.33641301363706],[4.922376766555028,52.34315095248693],[4.90844172765303,52.34339338713977],[4.9081303301259895,52.33665541434712]]]}' > output/publieke-werken-1909/3857/warped/DUIZ01280000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ01280000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ01280000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ01280000001-warped.tif

# ==============================================
# Name: DUIZ01293000001 🗺️
# ==============================================

if [ ! -f output/downloads/DUIZ01293000001.jpg ]; then
  wget -O output/downloads/DUIZ01293000001.jpg "https://webservices.picturae.com/mediabank/media/22454d6a-7d1c-0d25-1644-5bc08f0e58a8/downloadoriginal/d3b25877-8e66-d17f-618e-215ed5dc4b0d?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 255 192 4.922376766555028 52.34315095248693 \
-gcp 5850 210 4.936311657862268 52.34290687636492 \
-gcp 5834 4617 4.935996032817637 52.33616897177932 \
-gcp 247 4604 4.922063255230378 52.33641301363706 \
   output/downloads/DUIZ01293000001.jpg \
   output/publieke-werken-1909/3857/warped/DUIZ01293000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922063255230378,52.33641301363706],[4.935996032817637,52.33616897177932],[4.936311657862268,52.34290687636492],[4.922376766555028,52.34315095248693],[4.922063255230378,52.33641301363706]]]}' > output/publieke-werken-1909/3857/warped/DUIZ01293000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline output/publieke-werken-1909/3857/warped/DUIZ01293000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:3857" \
  output/publieke-werken-1909/3857/warped/DUIZ01293000001.vrt \
  output/publieke-werken-1909/3857/warped/DUIZ01293000001-warped.tif

# ==============================================
# Add overviews and create index:
# ==============================================

mkdir -p output/publieke-werken-1909/3857

for j in output/publieke-werken-1909/3857/warped/*.tif; do
  gdaladdo -r cubic \
    --config COMPRESS_OVERVIEW JPEG \
    --config PHOTOMETRIC_OVERVIEW YCBCR \
    --config INTERLEAVE_OVERVIEW PIXEL \
    $j 2 4 8 16 32 64 128
done

# Create tile indices
cd output/publieke-werken-1909/3857
gdaltindex index.shp warped/*.tif
ogrinfo -sql "CREATE SPATIAL INDEX ON index" index.shp

gdalbuildvrt index.vrt index.shp
