#!/bin/bash

# Create the directory that will contain the warped TIFFs:
mkdir -p ../output/publieke-werken/downloads
mkdir -p ../output/publieke-werken/1950/28992/warped
  

# =============================================================================================
# Name: DUIZ01016000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01016000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01016000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01016000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 3043 1103 4.846076 52.35474 \
-gcp 5469 1112 4.852105 52.354782 \
-gcp 3046 4481 4.846183 52.349599 \
   ../output/publieke-werken/downloads/DUIZ01016000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ01016000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.839033510785127,52.349387273513166],[4.838950250037817,52.356127721755314],[4.85289454229496,52.35619148550395],[4.852975684963722,52.34945102475071],[4.839033510785127,52.349387273513166]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ01016000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ01016000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ01016000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ01016000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01028000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01028000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01028000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01028000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5273 4192 4.865683 52.350143 \
-gcp 5590 1236 4.866418 52.354661 \
-gcp 2068 1614 4.857625 52.354035 \
   ../output/publieke-werken/downloads/DUIZ01028000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ01028000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.852975684963722,52.34945102475071],[4.85289454229496,52.35619148550395],[4.866838880064639,52.35625360616411],[4.866917904631408,52.34951313322205],[4.852975684963722,52.34945102475071]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ01028000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ01028000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ01028000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ01028000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01042000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01042000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01042000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01042000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4414 537 4.877399 52.355762 \
-gcp 572 506 4.867828 52.355795 \
-gcp 4542 3138 4.877763 52.351801 \
   ../output/publieke-werken/downloads/DUIZ01042000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ01042000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866917904631408,52.34951313322205],[4.866838880064639,52.35625360616411],[4.880783262159048,52.35631408372479],[4.880860168600993,52.34957359891624],[4.866917904631408,52.34951313322205]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ01042000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ01042000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ01042000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ01042000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01055000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01055000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01055000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01055000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 2731 3284 4.887135 52.351617 \
-gcp 5259 343 4.893465 52.356109 \
-gcp 1562 670 4.884222 52.355615 \
   ../output/publieke-werken/downloads/DUIZ01055000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ01055000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880860168600993,52.34957359891624],[4.880783262159048,52.35631408372479],[4.894727687390359,52.356372918175296],[4.894802475685259,52.34963242182259],[4.880860168600993,52.34957359891624]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ01055000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ01055000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ01055000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ01055000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01069000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01069000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01069000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01069000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1338 420 4.897617 52.356031 \
-gcp 5226 469 4.907337 52.355991 \
-gcp 4784 3968 4.906265 52.350638 \
-gcp 551 3992 4.895697 52.350572 \
   ../output/publieke-werken/downloads/DUIZ01069000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ01069000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894802475685259,52.34963242182259],[4.894727687390359,52.356372918175296],[4.908672154570724,52.35643010950521],[4.908744824696965,52.3496896019307],[4.894802475685259,52.34963242182259]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ01069000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ01069000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ01069000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ01069000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01082000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01082000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01082000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01082000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 923 229 4.910486 52.356394 \
-gcp 5422 525 4.921746 52.355975 \
-gcp 2321 4101 4.914032 52.35047 \
   ../output/publieke-werken/downloads/DUIZ01082000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ01082000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908744824696965,52.3496896019307],[4.908672154570724,52.35643010950521],[4.922616662512259,52.35648565770449],[4.922687214448847,52.34974513923046],[4.908744824696965,52.3496896019307]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ01082000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ01082000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ01082000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ01082000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01095000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01095000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01095000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01095000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 538 628 4.923479 52.355834 \
-gcp 5508 704 4.935908 52.355798 \
-gcp 4500 3754 4.933451 52.351129 \
   ../output/publieke-werken/downloads/DUIZ01095000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ01095000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922687214448847,52.34974513923046],[4.922616662512259,52.35648565770449],[4.93656121002707,52.35653956276317],[4.936629643753616,52.34979903371198],[4.922687214448847,52.34974513923046]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ01095000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ01095000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ01095000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ01095000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00101000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00101000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00101000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00101000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4762 3303 4.933451 52.412426 \
-gcp 724 1324 4.923506 52.415417 \
-gcp 1232 392 4.924793 52.416883 \
   ../output/publieke-werken/downloads/DUIZ00101000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00101000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922051358018237,52.410409471416834],[4.921980583640138,52.41714990568002],[4.935944228408925,52.41720390607779],[4.936012877899669,52.41046346120851],[4.922051358018237,52.410409471416834]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00101000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00101000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00101000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00101000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00107000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00107000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00107000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00107000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 2997 1714 4.942963 52.4149 \
-gcp 4572 3364 4.946997 52.412472 \
-gcp 1707 2914 4.939985 52.413015 \
   ../output/publieke-werken/downloads/DUIZ00107000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00107000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936012877899669,52.41046346120851],[4.935944228408925,52.41720390607779],[4.949907911741644,52.41725626042006],[4.949974436325135,52.410515805267856],[4.936012877899669,52.41046346120851]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00107000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00107000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00107000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00107000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00113000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00113000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00113000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00113000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1056 4176 4.952173 52.411163 \
-gcp 4880 384 4.961958 52.416948 \
-gcp 288 992 4.950542 52.416425 \
-gcp 4832 4448 4.961743 52.409959 \
   ../output/publieke-werken/downloads/DUIZ00113000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00113000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.949974436325135,52.410515805267856],[4.949907911741644,52.41725626042006],[4.963871632444818,52.417306968697375],[4.963936032101777,52.41056650358553],[4.949974436325135,52.410515805267856]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00113000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00113000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00113000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00113000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00125000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00125000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00125000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00125000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 210 186 4.838282 52.410052 \
-gcp 5808 208 4.852244 52.410115 \
-gcp 5776 4608 4.852325 52.403375 \
   ../output/publieke-werken/downloads/DUIZ00125000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00125000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.838366608974079,52.403310599442186],[4.838283114951327,52.41005097284346],[4.852244378519897,52.41011483681815],[4.852325748530966,52.40337445087526],[4.838366608974079,52.403310599442186]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00125000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00125000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00125000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00125000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00136000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00136000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00136000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00136000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 190 221 4.852244 52.410115 \
-gcp 224 4613 4.852325 52.403375 \
-gcp 5792 4576 4.866284 52.403437 \
   ../output/publieke-werken/downloads/DUIZ00136000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00136000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.852325748530966,52.40337445087526],[4.852244378519897,52.41011483681815],[4.86620568778914,52.41017705512224],[4.866284933764953,52.403436656960906],[4.852325748530966,52.40337445087526]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00136000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00136000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00136000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00136000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00145000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00145000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00145000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00145000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 476 517 4.866949 52.409686 \
-gcp 1770 2083 4.87021 52.40733 \
-gcp 826 2770 4.867882 52.40625 \
   ../output/publieke-werken/downloads/DUIZ00145000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00145000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866284933764953,52.403436656960906],[4.86620568778914,52.41017705512224],[4.880167041566348,52.410237627744756],[4.880244163483944,52.40349721768803],[4.866284933764953,52.403436656960906]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00145000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00145000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00145000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00145000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00152000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00152000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00152000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00152000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 3683 247 4.888881 52.410183 \
-gcp 4765 548 4.891574 52.409741 \
-gcp 4360 1063 4.8906 52.408941 \
   ../output/publieke-werken/downloads/DUIZ00152000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00152000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880244163483944,52.40349721768803],[4.880167041566348,52.410237627744756],[4.894128438658778,52.41029655467496],[4.894203436495817,52.403556133045946],[4.880244163483944,52.40349721768803]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00152000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00152000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00152000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00152000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00156000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00156000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00156000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00156000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5664 992 4.907949 52.408984 \
-gcp 3596 4534 4.902542 52.403743 \
-gcp 232 912 4.894238 52.4092 \
   ../output/publieke-werken/downloads/DUIZ00156000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00156000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894203436495817,52.403556133045946],[4.894128438658778,52.41029655467496],[4.908089877873669,52.41035383590237],[4.908162751608423,52.40361340302422],[4.894203436495817,52.403556133045946]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00156000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00156000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00156000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00156000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00162000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00162000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00162000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00162000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 198 185 4.908089 52.410355 \
-gcp 190 4587 4.908162 52.403614 \
-gcp 5771 4590 4.922121 52.40367 \
   ../output/publieke-werken/downloads/DUIZ00162000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00162000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908162751608423,52.40361340302422],[4.908089877873669,52.41035383590237],[4.922051358018237,52.410409471416834],[4.92212210762959,52.4036690276127],[4.908162751608423,52.40361340302422]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00162000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00162000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00162000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00162000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00168000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00168000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00168000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00168000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 178 4612 4.922121 52.40367 \
-gcp 5786 4614 4.936081 52.403724 \
-gcp 183 198 4.922051 52.41041 \
   ../output/publieke-werken/downloads/DUIZ00168000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00168000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.92212210762959,52.4036690276127],[4.922051358018237,52.410409471416834],[4.936012877899669,52.41046346120851],[4.936081503367124,52.403723006801485],[4.92212210762959,52.4036690276127]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00168000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00168000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00168000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00168000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00174000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00174000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00174000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00174000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4498 698 4.946669 52.409769 \
-gcp 4224 1392 4.945908 52.40863 \
-gcp 5790 1938 4.950006 52.407825 \
   ../output/publieke-werken/downloads/DUIZ00174000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00174000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936081503367124,52.403723006801485],[4.936012877899669,52.41046346120851],[4.949974436325135,52.410515805267856],[4.950040937628804,52.403775340581014],[4.936081503367124,52.403723006801485]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00174000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00174000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00174000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00174000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00180000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00180000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00180000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00180000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 2196 2568 4.954941 52.40687 \
-gcp 4653 4131 4.961143 52.40453 \
-gcp 4971 585 4.961867 52.409952 \
   ../output/publieke-werken/downloads/DUIZ00180000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00180000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.950040937628804,52.403775340581014],[4.949974436325135,52.410515805267856],[4.963936032101777,52.41056650358553],[4.964000409222397,52.40382602894209],[4.950040937628804,52.403775340581014]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00180000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00180000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00180000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00180000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00186000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00186000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00186000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00186000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 3920 4568 4.973288 52.404016 \
-gcp 252 1868 4.964082 52.408022 \
-gcp 1870 369 4.968047 52.410335 \
   ../output/publieke-werken/downloads/DUIZ00186000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00186000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.964000409222397,52.40382602894209],[4.963936032101777,52.41056650358553],[4.97789766403672,52.41061555615256],[4.977959916955641,52.40387507187561],[4.964000409222397,52.40382602894209]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00186000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00186000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00186000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00186000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00195000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00195000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00195000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00195000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 211 4603 4.83845 52.39657 \
-gcp 5818 4574 4.85241 52.39663 \
-gcp 5800 182 4.85232 52.40338 \
   ../output/publieke-werken/downloads/DUIZ00195000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00195000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.838450073784739,52.39657021652458],[4.838366608974079,52.403310599442186],[4.852325748530966,52.40337445087526],[4.852407090072926,52.39663405541986],[4.838450073784739,52.39657021652458]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00195000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00195000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00195000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00195000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01105000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01105000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01105000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01105000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 2566 2256 4.942555 52.353423 \
-gcp 1333 345 4.939401 52.356312 \
-gcp 918 741 4.938349 52.355683 \
-gcp 300 329 4.93681 52.356319 \
-gcp 786 2057 4.938065 52.353691 \
-gcp 353 4511 4.937062 52.349936 \
-gcp 1099 2870 4.938891 52.352459 \
-gcp 5018 2734 4.948686 52.352731 \
   ../output/publieke-werken/downloads/DUIZ01105000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ01105000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936629643753616,52.34979903371198],[4.93656121002707,52.35653956276317],[4.950505795927228,52.35659182467182],[4.950572111423964,52.349851285365865],[4.936629643753616,52.34979903371198]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ01105000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ01105000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ01105000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ01105000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01128000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01128000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01128000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01128000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5520 244 4.852298 52.349379 \
-gcp 3534 2596 4.84739 52.345735 \
-gcp 3022 664 4.846119 52.348701 \
-gcp 4198 236 4.849005 52.349366 \
   ../output/publieke-werken/downloads/DUIZ01128000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ01128000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.839116742440587,52.34264681612326],[4.839033510785127,52.349387273513166],[4.852975684963722,52.34945102475071],[4.853056799280559,52.34271055485344],[4.839116742440587,52.34264681612326]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ01128000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ01128000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ01128000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ01128000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01141000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01141000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01141000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01141000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1851 766 4.857137 52.348629 \
-gcp 1398 4224 4.856016 52.343336 \
-gcp 5484 2846 4.866208 52.345453 \
   ../output/publieke-werken/downloads/DUIZ01141000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ01141000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.853056799280559,52.34271055485344],[4.852975684963722,52.34945102475071],[4.866917904631408,52.34951313322205],[4.866996901586189,52.34277265113968],[4.853056799280559,52.34271055485344]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ01141000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ01141000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ01141000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ01141000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01153000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01153000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01153000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01153000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 198 206 4.866917 52.349514 \
-gcp 5756 192 4.88086 52.349574 \
-gcp 5768 4592 4.880936 52.342834 \
   ../output/publieke-werken/downloads/DUIZ01153000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ01153000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866996901586189,52.34277265113968],[4.866917904631408,52.34951313322205],[4.880860168600993,52.34957359891624],[4.880937048170904,52.342833104971],[4.866996901586189,52.34277265113968]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ01153000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ01153000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ01153000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ01153000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01165000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01165000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01165000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01165000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 866 2541 4.882559 52.345961 \
-gcp 913 1021 4.882656 52.348262 \
-gcp 3356 813 4.888755 52.348619 \
-gcp 5751 4417 4.894779 52.34311 \
   ../output/publieke-werken/downloads/DUIZ01165000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ01165000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880937048170904,52.342833104971],[4.880860168600993,52.34957359891624],[4.894802475685259,52.34963242182259],[4.894877237848093,52.34289191633672],[4.880937048170904,52.342833104971]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ01165000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ01165000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ01165000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ01165000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01175000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01175000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01175000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01175000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5523 1989 4.908094 52.346967 \
-gcp 474 1112 4.895498 52.348265 \
-gcp 876 4371 4.896523 52.343297 \
   ../output/publieke-werken/downloads/DUIZ01175000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ01175000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894877237848093,52.34289191633672],[4.894802475685259,52.34963242182259],[4.908744824696965,52.3496896019307],[4.908817469431128,52.34294908522637],[4.894877237848093,52.34289191633672]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ01175000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ01175000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ01175000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ01175000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01189000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01189000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01189000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01189000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5570 4084 4.922261 52.343821 \
-gcp 1956 268 4.913088 52.349592 \
-gcp 295 349 4.908936 52.349445 \
-gcp 1645 4141 4.912455 52.343674 \
   ../output/publieke-werken/downloads/DUIZ01189000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ01189000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908817469431128,52.34294908522637],[4.908744824696965,52.3496896019307],[4.922687214448847,52.34974513923046],[4.922757741733357,52.343004611629944],[4.908817469431128,52.34294908522637]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ01189000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ01189000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ01189000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ01189000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01231000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01231000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01231000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01231000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 202 190 4.839116 52.342647 \
-gcp 5776 194 4.853056 52.342711 \
-gcp 5774 4596 4.853137 52.335971 \
   ../output/publieke-werken/downloads/DUIZ01231000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ01231000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.83919994501918,52.335906349631614],[4.839116742440587,52.34264681612326],[4.853056799280559,52.34271055485344],[4.85313788526007,52.3359700758583],[4.83919994501918,52.335906349631614]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ01231000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ01231000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ01231000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ01231000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01245000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01245000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01245000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01245000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 210 196 4.853056 52.342711 \
-gcp 5768 218 4.866996 52.342773 \
-gcp 5766 4590 4.867075 52.336033 \
   ../output/publieke-werken/downloads/DUIZ01245000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ01245000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.85313788526007,52.3359700758583],[4.853056799280559,52.34271055485344],[4.866996901586189,52.34277265113968],[4.867075870943207,52.33603215996313],[4.85313788526007,52.3359700758583]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ01245000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ01245000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ01245000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ01245000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01283000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01283000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01283000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01283000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 256 474 4.908646 52.342999 \
-gcp 3390 3423 4.916285 52.338387 \
-gcp 4977 378 4.920437 52.342986 \
   ../output/publieke-werken/downloads/DUIZ01283000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ01283000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908890088786293,52.33620855943839],[4.908817469431128,52.34294908522637],[4.922757741733357,52.343004611629944],[4.922828244378485,52.33626407494904],[4.908890088786293,52.33620855943839]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ01283000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ01283000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ01283000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ01283000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01303000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01303000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01303000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01303000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 2527 3242 4.942501 52.338463 \
-gcp 5440 2171 4.949791 52.340108 \
-gcp 3234 578 4.944271 52.342524 \
   ../output/publieke-werken/downloads/DUIZ01303000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ01303000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936766439482835,52.336317948285966],[4.9366980535681,52.34305849553758],[4.95063840374866,52.343110736939735],[4.950704672913256,52.336370179439555],[4.936766439482835,52.336317948285966]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ01303000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ01303000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ01303000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ01303000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01327000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01327000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01327000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01327000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1803 4529 4.857261 52.329353 \
-gcp 2066 1324 4.857835 52.334248 \
-gcp 572 1861 4.854117 52.333415 \
   ../output/publieke-werken/downloads/DUIZ01327000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ01327000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.853218942916848,52.32922958781129],[4.85313788526007,52.3359700758583],[4.867075870943207,52.33603215996313],[4.867154812716668,52.32929165973841],[4.853218942916848,52.32922958781129]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ01327000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ01327000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ01327000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ01327000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01379000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01379000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01379000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01379000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1725 218 4.857089 52.329186 \
-gcp 1970 612 4.857722 52.328589 \
-gcp 1709 4118 4.857116 52.323216 \
-gcp 1971 932 4.857717 52.328101 \
   ../output/publieke-werken/downloads/DUIZ01379000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ01379000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.853299972265478,52.322489090758516],[4.853218942916848,52.32922958781129],[4.867154812716668,52.32929165973841],[4.867233726920776,52.32255115051162],[4.853299972265478,52.322489090758516]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ01379000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ01379000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ01379000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ01379000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01667000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01667000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01667000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01667000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 173 198 4.824321 52.409986 \
-gcp 5755 4607 4.838366 52.403311 \
-gcp 161 4603 4.824407 52.403246 \
   ../output/publieke-werken/downloads/DUIZ01667000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ01667000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.824407516286362,52.403245102673026],[4.82432189827612,52.409985463209566],[4.838283114951327,52.41005097284346],[4.838366608974079,52.403310599442186],[4.824407516286362,52.403245102673026]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ01667000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ01667000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ01667000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ01667000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01693000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01693000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01693000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01693000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 152 255 4.824286 52.402844 \
-gcp 5752 279 4.837589 52.402792 \
-gcp 5752 4647 4.837589 52.39635 \
   ../output/publieke-werken/downloads/DUIZ01693000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ01693000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.824493104341551,52.39650473261617],[4.824407516286362,52.403245102673026],[4.838366608974079,52.403310599442186],[4.838450073784739,52.39657021652458],[4.824493104341551,52.39650473261617]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ01693000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ01693000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ01693000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ01693000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01699000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01699000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01699000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01699000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 168 239 4.812012 52.403257 \
-gcp 5752 223 4.826603 52.403478 \
-gcp 208 4599 4.812698 52.395715 \
   ../output/publieke-werken/downloads/DUIZ01699000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ01699000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.810536182934792,52.396437603706175],[4.810448471659863,52.403177960579235],[4.824407516286362,52.403245102673026],[4.824493104341551,52.39650473261617],[4.810536182934792,52.396437603706175]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ01699000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ01699000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ01699000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ01699000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01722000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01722000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01722000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01722000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 272 270 4.824886 52.395879 \
-gcp 5744 398 4.837589 52.395774 \
-gcp 5744 4702 4.837847 52.389646 \
   ../output/publieke-werken/downloads/DUIZ01722000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ01722000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.824578662457137,52.38976435308513],[4.824493104341551,52.39650473261617],[4.838450073784739,52.39657021652458],[4.838533509398378,52.38982982413669],[4.824578662457137,52.38976435308513]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ01722000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ01722000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ01722000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ01722000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01729000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01729000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01729000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01729000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 208 270 4.811926 52.396193 \
-gcp 5792 302 4.824371 52.396187 \
-gcp 5760 4590 4.824886 52.389751 \
   ../output/publieke-werken/downloads/DUIZ01729000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ01729000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.810623863527553,52.38969723735488],[4.810536182934792,52.396437603706175],[4.824493104341551,52.39650473261617],[4.824578662457137,52.38976435308513],[4.810623863527553,52.38969723735488]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ01729000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ01729000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ01729000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ01729000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01735000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01735000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01735000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01735000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5664 286 4.810982 52.396344 \
-gcp 240 302 4.796906 52.396318 \
-gcp 5776 4638 4.811754 52.389826 \
   ../output/publieke-werken/downloads/DUIZ01735000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ01735000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.796669113800418,52.38962847695788],[4.796579310755865,52.39636882980655],[4.810536182934792,52.396437603706175],[4.810623863527553,52.38969723735488],[4.796669113800418,52.38962847695788]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ01735000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ01735000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ01735000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ01735000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01757000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01757000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01757000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01757000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5792 254 4.838877 52.389698 \
-gcp 160 320 4.822998 52.38964 \
-gcp 2864 3552 4.830637 52.384663 \
   ../output/publieke-werken/downloads/DUIZ01757000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ01757000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.824664190648556,52.38302396412592],[4.824578662457137,52.38976435308513],[4.838533509398378,52.38982982413669],[4.838616915830047,52.38308942232453],[4.824664190648556,52.38302396412592]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ01757000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ01757000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ01757000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ01757000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01765000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01765000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01765000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01765000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 3104 270 4.819822 52.389902 \
-gcp 5776 3630 4.826775 52.384558 \
-gcp 144 3710 4.812269 52.384349 \
   ../output/publieke-werken/downloads/DUIZ01765000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ01765000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.810711513453968,52.38295686157143],[4.810623863527553,52.38969723735488],[4.824578662457137,52.38976435308513],[4.824664190648556,52.38302396412592],[4.810711513453968,52.38295686157143]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ01765000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ01765000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ01765000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ01765000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01772000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01772000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01772000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01772000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 192 187 4.796668 52.389629 \
-gcp 189 4578 4.796758 52.382889 \
-gcp 5758 4576 4.810711 52.382957 \
   ../output/publieke-werken/downloads/DUIZ01772000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ01772000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.796758885436461,52.382888114673015],[4.796669113800418,52.38962847695788],[4.810623863527553,52.38969723735488],[4.810711513453968,52.38295686157143],[4.796758885436461,52.382888114673015]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ01772000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ01772000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ01772000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ01772000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01791000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01791000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01791000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01791000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 264 4618 4.824749 52.376284 \
-gcp 236 211 4.824663 52.383025 \
-gcp 5847 4600 4.8387 52.37635 \
   ../output/publieke-werken/downloads/DUIZ01791000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ01791000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.824749688931237,52.376283565784696],[4.824664190648556,52.38302396412592],[4.838616915830047,52.38308942232453],[4.838700293094798,52.37634901113428],[4.824749688931237,52.376283565784696]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ01791000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ01791000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ01791000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ01791000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00202000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00202000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00202000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00202000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 312 261 4.852325 52.403375 \
-gcp 5712 4528 4.866363 52.396697 \
-gcp 352 4505 4.852325 52.396697 \
   ../output/publieke-werken/downloads/DUIZ00202000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00202000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.852407090072926,52.39663405541986],[4.852325748530966,52.40337445087526],[4.866284933764953,52.403436656960906],[4.866364152014656,52.39669624929073],[4.852407090072926,52.39663405541986]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00202000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00202000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00202000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00202000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00215000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00215000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00215000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00215000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5757 4600 4.894278 52.396816 \
-gcp 184 4605 4.880321 52.396757 \
-gcp 184 192 4.880243 52.403498 \
   ../output/publieke-werken/downloads/DUIZ00215000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00215000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880321258418444,52.39675679812611],[4.880244163483944,52.40349721768803],[4.894203436495817,52.403556133045946],[4.894278408092785,52.39681570191528],[4.880321258418444,52.39675679812611]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00215000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00215000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00215000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00215000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00225000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00225000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00225000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00225000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 7710 6124 4.908235 52.396874 \
-gcp 303 341 4.894203 52.403557 \
-gcp 314 6148 4.894278 52.396816 \
   ../output/publieke-werken/downloads/DUIZ00225000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00225000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894278408092785,52.39681570191528],[4.894203436495817,52.403556133045946],[4.908162751608423,52.40361340302422],[4.908235599846147,52.39687296064783],[4.894278408092785,52.39681570191528]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00225000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00225000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00225000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00225000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00237000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00237000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00237000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00237000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5765 3998 4.918501 52.399421 \
-gcp 1862 4286 4.911146 52.399021 \
-gcp 3462 6147 4.914177 52.39691 \
   ../output/publieke-werken/downloads/DUIZ00237000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00237000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908235599846147,52.39687296064783],[4.908162751608423,52.40361340302422],[4.92212210762959,52.4036690276127],[4.922192832486973,52.39692857431359],[4.908235599846147,52.39687296064783]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00237000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00237000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00237000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00237000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00245000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00245000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00245000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00245000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 664 4672 4.922776 52.398661 \
-gcp 1082 1336 4.923581 52.402556 \
-gcp 877 6026 4.923162 52.397074 \
   ../output/publieke-werken/downloads/DUIZ00245000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00245000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922192832486973,52.39692857431359],[4.92212210762959,52.4036690276127],[4.936081503367124,52.403723006801485],[4.936150104823677,52.39698254290268],[4.922192832486973,52.39692857431359]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00245000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00245000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00245000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00245000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00252000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00252000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00252000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00252000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 366 6158 4.936149 52.396983 \
-gcp 338 382 4.936081 52.403724 \
-gcp 7752 6106 4.950107 52.397036 \
   ../output/publieke-werken/downloads/DUIZ00252000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00252000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936150104823677,52.39698254290268],[4.936081503367124,52.403723006801485],[4.950040937628804,52.403775340581014],[4.950107415664664,52.397034866405576],[4.936150104823677,52.39698254290268]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00252000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00252000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00252000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00252000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00258000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00258000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00258000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00258000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 331 371 4.95004 52.403776 \
-gcp 7735 6101 4.964064 52.397086 \
-gcp 357 6148 4.950107 52.397036 \
   ../output/publieke-werken/downloads/DUIZ00258000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00258000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.950107415664664,52.397034866405576],[4.950040937628804,52.403775340581014],[4.964000409222397,52.40382602894209],[4.964064763818304,52.39708554481305],[4.950107415664664,52.397034866405576]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00258000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00258000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00258000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00258000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00275000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00275000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00275000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00275000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 315 390 4.838449 52.396571 \
-gcp 366 6192 4.838533 52.38983 \
-gcp 7749 6121 4.852488 52.389894 \
   ../output/publieke-werken/downloads/DUIZ00275000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00275000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.838533509398378,52.38982982413669],[4.838450073784739,52.39657021652458],[4.852407090072926,52.39663405541986],[4.85248840316046,52.38989365049802],[4.838533509398378,52.38982982413669]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00275000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00275000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00275000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00275000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00294000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00294000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00294000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00294000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4076 5447 4.873515 52.390779 \
-gcp 7384 5001 4.879791 52.391293 \
-gcp 3571 3744 4.872571 52.392766 \
   ../output/publieke-werken/downloads/DUIZ00294000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00294000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866443342552547,52.38995583215781],[4.866364152014656,52.39669624929073],[4.880321258418444,52.39675679812611],[4.880398326383764,52.39001636910505],[4.866443342552547,52.38995583215781]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00294000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00294000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00294000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00294000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00304000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00304000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00304000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00304000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 486 5664 4.880663 52.390632 \
-gcp 2632 6118 4.884734 52.390111 \
-gcp 5212 6000 4.889616 52.390246 \
   ../output/publieke-werken/downloads/DUIZ00304000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00304000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880398326383764,52.39001636910505],[4.880321258418444,52.39675679812611],[4.894278408092785,52.39681570191528],[4.89435335346322,52.39007526132898],[4.880398326383764,52.39001636910505]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00304000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00304000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00304000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00304000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00314000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00314000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00314000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00314000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 346 6165 4.894353 52.390076 \
-gcp 7208 5108 4.907305 52.391319 \
-gcp 336 356 4.894278 52.396816 \
   ../output/publieke-werken/downloads/DUIZ00314000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00314000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.89435335346322,52.39007526132898],[4.894278408092785,52.39681570191528],[4.908235599846147,52.39687296064783],[4.908308422599998,52.3901325088192],[4.89435335346322,52.39007526132898]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00314000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00314000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00314000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00314000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00326000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00326000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00326000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00326000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 328 320 4.908235 52.396874 \
-gcp 7688 312 4.922192 52.396929 \
-gcp 7688 6120 4.922263 52.390189 \
   ../output/publieke-werken/downloads/DUIZ00326000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00326000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908308422599998,52.3901325088192],[4.908235599846147,52.39687296064783],[4.922192832486973,52.39692857431359],[4.922263532603153,52.3901881115656],[4.908308422599998,52.3901325088192]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00326000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00326000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00326000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00326000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00335000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00335000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00335000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00335000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 2700 2526 4.926708 52.394426 \
-gcp 5641 3705 4.932277 52.393051 \
-gcp 2024 5458 4.925437 52.391031 \
   ../output/publieke-werken/downloads/DUIZ00335000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00335000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922263532603153,52.3901881115656],[4.922192832486973,52.39692857431359],[4.936150104823677,52.39698254290268],[4.936218682281719,52.390242069558234],[4.922263532603153,52.3901881115656]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00335000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00335000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00335000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00335000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00345000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00345000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00345000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00345000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 679 5195 4.936885 52.391365 \
-gcp 7641 6012 4.950038 52.390442 \
-gcp 628 3300 4.936772 52.393571 \
   ../output/publieke-werken/downloads/DUIZ00345000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00345000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936218682281719,52.390242069558234],[4.936150104823677,52.39698254290268],[4.950107415664664,52.397034866405576],[4.95017387044471,52.390294382787665],[4.936218682281719,52.390242069558234]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00345000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00345000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00345000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00345000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00355000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00355000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00355000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00355000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 352 392 4.950107 52.397036 \
-gcp 7696 344 4.964064 52.397086 \
-gcp 7742 6160 4.964128 52.390346 \
   ../output/publieke-werken/downloads/DUIZ00355000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00355000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.95017387044471,52.390294382787665],[4.950107415664664,52.397034866405576],[4.964064763818304,52.39708554481305],[4.964129095901116,52.390345051244516],[4.95017387044471,52.390294382787665]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00355000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00355000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00355000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00355000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00368000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00368000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00368000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00368000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 7688 6108 5.005994 52.390488 \
-gcp 287 6117 4.992039 52.390442 \
-gcp 301 333 4.991979 52.397183 \
   ../output/publieke-werken/downloads/DUIZ00368000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00368000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.992039653930022,52.390441453805074],[4.99197956729695,52.39718196630592],[5.005937020238597,52.39722770937422],[5.005994984120399,52.390487187891644],[4.992039653930022,52.390441453805074]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00368000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00368000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00368000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00368000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00377000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00377000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00377000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00377000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 7619 5848 4.852406 52.383497 \
-gcp 4042 5232 4.845598 52.384185 \
-gcp 4513 2041 4.846478 52.387882 \
   ../output/publieke-werken/downloads/DUIZ00377000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00377000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.838616915830047,52.38308942232453],[4.838533509398378,52.38982982413669],[4.85248840316046,52.38989365049802],[4.852569687808244,52.383153236155735],[4.838616915830047,52.38308942232453]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00377000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00377000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00377000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00377000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00398000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00398000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00398000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00398000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4994 896 4.875247 52.389358 \
-gcp 6746 5696 4.878568 52.383809 \
-gcp 2442 5858 4.870457 52.383606 \
   ../output/publieke-werken/downloads/DUIZ00398000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00398000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866522505392917,52.383215405608176],[4.866443342552547,52.38995583215781],[4.880398326383764,52.39001636910505],[4.880475367393809,52.38327593067091],[4.866522505392917,52.383215405608176]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00398000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00398000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00398000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00398000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00411000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00411000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00411000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00411000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 6048 970 4.891271 52.389332 \
-gcp 4076 5323 4.887559 52.384273 \
-gcp 531 2204 4.880821 52.387872 \
   ../output/publieke-werken/downloads/DUIZ00411000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00411000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880475367393809,52.38327593067091],[4.880398326383764,52.39001636910505],[4.89435335346322,52.39007526132898],[4.894428272620641,52.3833348113331],[4.880475367393809,52.38327593067091]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00411000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00411000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00411000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00411000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00423000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00423000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00423000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00423000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 332 308 4.894353 52.390076 \
-gcp 7780 272 4.908308 52.390133 \
-gcp 7800 6144 4.908381 52.383393 \
   ../output/publieke-werken/downloads/DUIZ00423000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00423000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894428272620641,52.3833348113331],[4.89435335346322,52.39007526132898],[4.908308422599998,52.3901325088192],[4.908381219883111,52.38339204758446],[4.894428272620641,52.3833348113331]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00423000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00423000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00423000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00423000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00434000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00434000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00434000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00434000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1370 455 4.91024 52.389983 \
-gcp 7700 886 4.922079 52.389558 \
-gcp 7679 4184 4.922084 52.38577 \
-gcp 1902 6127 4.911329 52.383497 \
   ../output/publieke-werken/downloads/DUIZ00434000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00434000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908381219883111,52.38339204758446],[4.908308422599998,52.3901325088192],[4.922263532603153,52.3901881115656],[4.922334207990888,52.3834476394148],[4.908381219883111,52.38339204758446]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00434000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00434000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00434000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00434000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00444000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00444000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00444000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00444000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 618 4222 4.92283 52.385731 \
-gcp 724 510 4.922985 52.389983 \
-gcp 4226 2785 4.929535 52.38739 \
   ../output/publieke-werken/downloads/DUIZ00444000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00444000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922334207990888,52.3834476394148],[4.922263532603153,52.3901881115656],[4.936218682281719,52.390242069558234],[4.936287235753624,52.38350158681422],[4.922334207990888,52.3834476394148]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00444000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00444000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00444000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00444000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00451000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00451000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00451000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00451000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5747 451 4.949706 52.390029 \
-gcp 5599 2167 4.949325 52.38743 \
-gcp 3130 528 4.943258 52.389911 \
   ../output/publieke-werken/downloads/DUIZ00451000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00451000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936287235753624,52.38350158681422],[4.936218682281719,52.390242069558234],[4.95017387044471,52.390294382787665],[4.950240301980939,52.38355388977322],[4.936287235753624,52.38350158681422]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00451000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00451000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00451000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00451000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00460000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00460000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00460000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00460000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 260 4717 4.95024 52.383555 \
-gcp 263 274 4.950173 52.390295 \
-gcp 5916 4717 4.964193 52.383605 \
   ../output/publieke-werken/downloads/DUIZ00460000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00460000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.950240301980939,52.38355388977322],[4.95017387044471,52.390294382787665],[4.964129095901116,52.390345051244516],[4.964193405482441,52.38360454828254],[4.950240301980939,52.38355388977322]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00460000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00460000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00460000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00460000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00476000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00476000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00476000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00476000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4550 3834 5.002679 52.385007 \
-gcp 504 4000 4.992449 52.384899 \
-gcp 544 380 4.992793 52.390262 \
   ../output/publieke-werken/downloads/DUIZ00476000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00476000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.992099719546314,52.38370093191648],[4.992039653930022,52.390441453805074],[5.005994984120399,52.390487187891644],[5.006052927727788,52.38374665702412],[4.992099719546314,52.38370093191648]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00476000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00476000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00476000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00476000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00483000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00483000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00483000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00483000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5754 4488 4.852186 52.376749 \
-gcp 285 4764 4.8387 52.37635 \
-gcp 5437 754 4.851403 52.382401 \
   ../output/publieke-werken/downloads/DUIZ00483000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00483000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.838700293094798,52.37634901113428],[4.838616915830047,52.38308942232453],[4.852569687808244,52.383153236155735],[4.852650944030937,52.37641281243913],[4.838700293094798,52.37634901113428]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00483000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00483000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00483000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00483000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00493000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00493000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00493000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00493000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1609 856 4.855925 52.382263 \
-gcp 4331 4473 4.862695 52.376873 \
-gcp 1128 4400 4.854814 52.376925 \
   ../output/publieke-werken/downloads/DUIZ00493000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00493000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.852650944030937,52.37641281243913],[4.852569687808244,52.383153236155735],[4.866522505392917,52.383215405608176],[4.866601640550044,52.376474969687905],[4.852650944030937,52.37641281243913]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00493000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00493000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00493000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00493000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00507000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00507000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00507000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00507000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1834 4566 4.87043 52.376785 \
-gcp 5691 4696 4.879995 52.376598 \
-gcp 5744 635 4.880016 52.382751 \
-gcp 1051 1011 4.86844 52.38209 \
   ../output/publieke-werken/downloads/DUIZ00507000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00507000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866601640550044,52.376474969687905],[4.866522505392917,52.383215405608176],[4.880475367393809,52.38327593067091],[4.880552381462476,52.376535482869734],[4.866601640550044,52.376474969687905]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00507000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00507000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00507000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00507000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00523000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00523000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00523000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00523000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 836 4460 4.881926 52.376929 \
-gcp 5497 4619 4.893503 52.376733 \
-gcp 5755 2179 4.894093 52.380433 \
-gcp 699 290 4.881535 52.383242 \
   ../output/publieke-werken/downloads/DUIZ00523000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00523000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880552381462476,52.376535482869734],[4.880475367393809,52.38327593067091],[4.894428272620641,52.3833348113331],[4.894503165578564,52.37659435197376],[4.880552381462476,52.376535482869734]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00523000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00523000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00523000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00523000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00537000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00537000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00537000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00537000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5796 808 4.908067 52.382512 \
-gcp 1117 1021 4.896555 52.382188 \
-gcp 315 4713 4.894624 52.376618 \
-gcp 5880 4272 4.908378 52.377305 \
   ../output/publieke-werken/downloads/DUIZ00537000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00537000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894503165578564,52.37659435197376],[4.894428272620641,52.3833348113331],[4.908381219883111,52.38339204758446],[4.908453991708622,52.376651576989644],[4.894503165578564,52.37659435197376]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00537000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00537000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00537000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00537000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00551000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00551000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00551000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00551000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 2020 357 4.912729 52.383249 \
-gcp 4888 1224 4.919815 52.381978 \
-gcp 1779 3837 4.912181 52.378003 \
   ../output/publieke-werken/downloads/DUIZ00551000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00551000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908453991708622,52.376651576989644],[4.908381219883111,52.38339204758446],[4.922334207990888,52.3834476394148],[4.922404858662931,52.37670715790718],[4.908453991708622,52.376651576989644]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00551000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00551000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00551000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00551000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00561000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00561000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00561000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00561000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 264 248 4.922334 52.383448 \
-gcp 5860 276 4.936287 52.383502 \
-gcp 5854 4688 4.936355 52.376762 \
   ../output/publieke-werken/downloads/DUIZ00561000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00561000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922404858662931,52.37670715790718],[4.922334207990888,52.3834476394148],[4.936287235753624,52.38350158681422],[4.936355765251757,52.376761094716606],[4.922404858662931,52.37670715790718]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00561000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00561000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00561000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00561000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00567000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00567000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00567000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00567000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 311 4735 4.936355 52.376762 \
-gcp 264 308 4.936287 52.383502 \
-gcp 5910 4678 4.950306 52.376814 \
   ../output/publieke-werken/downloads/DUIZ00567000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00567000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936355765251757,52.376761094716606],[4.936287235753624,52.38350158681422],[4.950240301980939,52.38355388977322],[4.950306710285336,52.37681338740837],[4.936355765251757,52.376761094716606]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00567000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00567000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00567000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00567000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00572000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00572000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00572000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00572000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 264 267 4.95024 52.383555 \
-gcp 261 4730 4.950306 52.376814 \
-gcp 5902 4732 4.964257 52.376865 \
   ../output/publieke-werken/downloads/DUIZ00572000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00572000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.950306710285336,52.37681338740837],[4.950240301980939,52.38355388977322],[4.964193405482441,52.38360454828254],[4.964257692573884,52.37686403597314],[4.950306710285336,52.37681338740837]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00572000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00572000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00572000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00572000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00580000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00580000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00580000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00580000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 2011 1243 4.968572 52.382112 \
-gcp 1344 1468 4.966931 52.381759 \
-gcp 3987 375 4.973416 52.383445 \
-gcp 5422 3904 4.977075 52.378026 \
-gcp 5438 2944 4.977021 52.379562 \
-gcp 3932 716 4.973277 52.382928 \
-gcp 738 286 4.965391 52.38354 \
   ../output/publieke-werken/downloads/DUIZ00580000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00580000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.964257692573884,52.37686403597314],[4.964193405482441,52.38360454828254],[4.978146545067712,52.38365356233319],[4.9782087109276,52.376913040402066],[4.964257692573884,52.37686403597314]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00580000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00580000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00580000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00580000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00588000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00588000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00588000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00588000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5558 4475 4.991333 52.377282 \
-gcp 5428 4105 4.991012 52.377846 \
-gcp 5832 3835 4.992009 52.378255 \
-gcp 5044 4130 4.990057 52.37781 \
-gcp 4270 3780 4.988142 52.378343 \
-gcp 2068 2548 4.982536 52.380079 \
-gcp 3164 436 4.985186 52.383491 \
-gcp 300 3580 4.978341 52.378599 \
-gcp 1393 4269 4.981034 52.377551 \
   ../output/publieke-werken/downloads/DUIZ00588000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00588000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.9782087109276,52.376913040402066],[4.978146545067712,52.38365356233319],[4.992099719546314,52.38370093191648],[4.99215976415666,52.37696040068631],[4.9782087109276,52.376913040402066]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00588000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00588000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00588000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00588000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00592000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00592000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00592000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00592000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5178 1515 5.004219 52.381806 \
-gcp 1072 3216 4.994187 52.379186 \
-gcp 5184 3979 5.004358 52.378009 \
   ../output/publieke-werken/downloads/DUIZ00592000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00592000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.99215976415666,52.37696040068631],[4.992099719546314,52.38370093191648],[5.006052927727788,52.38374665702412],[5.006110851071218,52.37700611681764],[4.99215976415666,52.37696040068631]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00592000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00592000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00592000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00592000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00598000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00598000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00598000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00598000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4788 364 4.850019 52.376326 \
-gcp 5732 2168 4.852309 52.373605 \
-gcp 5874 4334 4.852685 52.370287 \
-gcp 3824 2938 4.847594 52.372406 \
   ../output/publieke-werken/downloads/DUIZ00598000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00598000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.838783641207661,52.36960859061196],[4.838700293094798,52.37634901113428],[4.852650944030937,52.37641281243913],[4.852732171843194,52.36967237939424],[4.838783641207661,52.36960859061196]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00598000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00598000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00598000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00598000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00612000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00612000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00612000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00612000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5834 4542 4.866536 52.369966 \
-gcp 280 4625 4.852744 52.369809 \
-gcp 2081 316 4.857191 52.376362 \
   ../output/publieke-werken/downloads/DUIZ00612000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00612000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.852732171843194,52.36967237939424],[4.852650944030937,52.37641281243913],[4.866601640550044,52.376474969687905],[4.866680748038203,52.36973452444315],[4.852732171843194,52.36967237939424]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00612000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00612000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00612000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00612000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00631000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00631000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00631000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00631000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 3554 2223 4.874856 52.373538 \
-gcp 2472 313 4.872168 52.37643 \
-gcp 1256 4593 4.869105 52.369939 \
-gcp 5672 4337 4.880156 52.370312 \
   ../output/publieke-werken/downloads/DUIZ00631000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00631000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866680748038203,52.36973452444315],[4.866601640550044,52.376474969687905],[4.880552381462476,52.376535482869734],[4.880629368603654,52.36979502574763],[4.866680748038203,52.36973452444315]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00631000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00631000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00631000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00631000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00649000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00649000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00649000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00649000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5545 539 4.893824 52.376172 \
-gcp 1225 4277 4.883085 52.370457 \
-gcp 1002 583 4.882463 52.376064 \
-gcp 4957 4193 4.892387 52.370598 \
   ../output/publieke-werken/downloads/DUIZ00649000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00649000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880629368603654,52.36979502574763],[4.880552381462476,52.376535482869734],[4.894503165578564,52.37659435197376],[4.894578032350497,52.36985388329698],[4.880629368603654,52.36979502574763]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00649000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00649000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00649000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00649000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00669000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00669000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00669000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00669000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 722 573 4.895638 52.376133 \
-gcp 5500 3875 4.9076 52.371168 \
-gcp 908 3408 4.896174 52.371826 \
   ../output/publieke-werken/downloads/DUIZ00669000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00669000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894578032350497,52.36985388329698],[4.894503165578564,52.37659435197376],[4.908453991708622,52.376651576989644],[4.908526738089654,52.369911097080795],[4.894578032350497,52.36985388329698]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00669000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00669000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00669000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00669000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00687000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00687000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00687000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00687000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1388 869 4.911173 52.376018 \
-gcp 5538 1590 4.92166 52.374663 \
-gcp 3984 4295 4.917771 52.370559 \
-gcp 2706 3779 4.914574 52.371338 \
   ../output/publieke-werken/downloads/DUIZ00687000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00687000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908526738089654,52.369911097080795],[4.908453991708622,52.376651576989644],[4.922404858662931,52.37670715790718],[4.922475484632021,52.369966667088896],[4.908526738089654,52.369911097080795]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00687000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00687000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00687000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00687000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00699000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00699000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00699000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00699000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 849 4244 4.923924 52.370631 \
-gcp 5666 1970 4.935871 52.374125 \
-gcp 2094 788 4.927003 52.375914 \
   ../output/publieke-werken/downloads/DUIZ00699000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00699000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922475484632021,52.369966667088896],[4.922404858662931,52.37670715790718],[4.936355765251757,52.376761094716606],[4.936424270788476,52.370020593311544],[4.922475484632021,52.369966667088896]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00699000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00699000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00699000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00699000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00709000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00709000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00709000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00709000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 272 256 4.936355 52.376762 \
-gcp 257 4691 4.936424 52.370021 \
-gcp 5850 4692 4.950373 52.370074 \
   ../output/publieke-werken/downloads/DUIZ00709000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00709000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936424270788476,52.370020593311544],[4.936355765251757,52.376761094716606],[4.950306710285336,52.37681338740837],[4.950373095369869,52.37007287573915],[4.936424270788476,52.370020593311544]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00709000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00709000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00709000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00709000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00716000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00716000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00716000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00716000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 296 4729 4.950373 52.370074 \
-gcp 5902 4682 4.964321 52.370124 \
-gcp 259 300 4.950306 52.376814 \
   ../output/publieke-werken/downloads/DUIZ00716000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00716000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.950373095369869,52.37007287573915],[4.950306710285336,52.37681338740837],[4.964257692573884,52.37686403597314],[4.964321957187033,52.37012351436243],[4.950373095369869,52.37007287573915]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00716000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00716000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00716000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00716000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00725000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00725000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00725000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00725000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 3848 551 4.987189 52.37648 \
-gcp 2910 1317 4.984856 52.375301 \
-gcp 628 820 4.979215 52.376031 \
   ../output/publieke-werken/downloads/DUIZ00725000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00725000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.978270855050775,52.37017250917245],[4.9782087109276,52.376913040402066],[4.99215976415666,52.37696040068631],[4.992219787771885,52.37021986016053],[4.978270855050775,52.37017250917245]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00725000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00725000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00725000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00725000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00732000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00732000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00732000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00732000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5795 466 4.852561 52.369403 \
-gcp 5833 3948 4.852771 52.364113 \
-gcp 4216 312 4.848629 52.369606 \
   ../output/publieke-werken/downloads/DUIZ00732000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00732000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.838866960183662,52.36286816080361],[4.838783641207661,52.36960859061196],[4.852732171843194,52.36967237939424],[4.852813371259659,52.362931937067145],[4.838866960183662,52.36286816080361]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00732000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00732000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00732000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00732000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00746000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00746000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00746000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00746000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5168 345 4.864928 52.369581 \
-gcp 5882 4295 4.866811 52.363626 \
-gcp 622 4438 4.853661 52.363369 \
-gcp 549 950 4.853468 52.368679 \
   ../output/publieke-werken/downloads/DUIZ00746000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00746000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.852813371259659,52.362931937067145],[4.852732171843194,52.36967237939424],[4.866680748038203,52.36973452444315],[4.866759827871651,52.36299406991982],[4.852813371259659,52.362931937067145]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00746000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00746000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00746000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00746000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00764000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00764000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00764000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00764000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5247 3929 4.879185 52.364155 \
-gcp 3116 362 4.873831 52.369557 \
-gcp 1025 3696 4.868655 52.364509 \
   ../output/publieke-werken/downloads/DUIZ00764000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00764000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866759827871651,52.36299406991982],[4.866680748038203,52.36973452444315],[4.880629368603654,52.36979502574763],[4.880706328831223,52.363054559350616],[4.866759827871651,52.36299406991982]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00764000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00764000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00764000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00764000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00782000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00782000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00782000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00782000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 522 563 4.882404 52.370332 \
-gcp 5172 385 4.894039 52.370413 \
-gcp 5118 4665 4.893647 52.363912 \
-gcp 1052 4660 4.883471 52.364062 \
   ../output/publieke-werken/downloads/DUIZ00782000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00782000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880706328831223,52.363054559350616],[4.880629368603654,52.36979502574763],[4.894578032350497,52.36985388329698],[4.894652872949933,52.36311340534883],[4.880706328831223,52.363054559350616]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00782000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00782000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00782000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00782000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00805000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00805000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00805000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00805000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5452 1351 4.907783 52.36814 \
-gcp 5624 4322 4.908223 52.363594 \
-gcp 518 4572 4.895407 52.363207 \
-gcp 1224 289 4.897161 52.369758 \
   ../output/publieke-werken/downloads/DUIZ00805000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00805000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894652872949933,52.36311340534883],[4.894578032350497,52.36985388329698],[4.908526738089654,52.369911097080795],[4.908599459039319,52.36317060790397],[4.894652872949933,52.36311340534883]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00805000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00805000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00805000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00805000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00067000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00067000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00067000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00067000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 2860 824 4.85527 52.415044 \
-gcp 4816 1808 4.860399 52.413578 \
-gcp 2712 3820 4.855185 52.410456 \
   ../output/publieke-werken/downloads/DUIZ00067000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00067000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.838283114951327,52.41005097284346],[4.838199591701414,52.41679133668233],[4.852162980025028,52.416855213202396],[4.852244378519897,52.41011483681815],[4.838283114951327,52.41005097284346]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00067000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00067000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00067000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00067000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00073000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00073000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00073000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00073000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 192 215 4.852162 52.416856 \
-gcp 202 4606 4.852244 52.410115 \
-gcp 5779 4597 4.866205 52.410178 \
   ../output/publieke-werken/downloads/DUIZ00073000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00073000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.852244378519897,52.41011483681815],[4.852162980025028,52.416855213202396],[4.866126414072907,52.41691744372869],[4.86620568778914,52.41017705512224],[4.852244378519897,52.41011483681815]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00073000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00073000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00073000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00073000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00081000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00081000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00081000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00081000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 179 4601 4.866205 52.410178 \
-gcp 5768 4600 4.880166 52.410238 \
-gcp 180 198 4.866126 52.416918 \
   ../output/publieke-werken/downloads/DUIZ00081000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00081000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.86620568778914,52.41017705512224],[4.866126414072907,52.41691744372869],[4.880089892651725,52.41697802825022],[4.880167041566348,52.410237627744756],[4.86620568778914,52.41017705512224]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00081000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00081000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00081000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00081000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00094000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00094000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00094000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00094000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 282 906 4.894323 52.41598 \
-gcp 5150 408 4.906425 52.416794 \
-gcp 5520 4584 4.907445 52.410414 \
-gcp 2754 2124 4.900492 52.414141 \
   ../output/publieke-werken/downloads/DUIZ00094000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00094000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894128438658778,52.41029655467496],[4.894053414568123,52.417036966756214],[4.90801697862873,52.417094259236194],[4.908089877873669,52.41035383590237],[4.894128438658778,52.41029655467496]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00094000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00094000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00094000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00094000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00825000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00825000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00825000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00825000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 726 421 4.909939 52.369593 \
-gcp 5031 630 4.920732 52.369301 \
-gcp 5491 4188 4.921902 52.363874 \
-gcp 991 4057 4.910685 52.364034 \
   ../output/publieke-werken/downloads/DUIZ00825000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00825000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908599459039319,52.36317060790397],[4.908526738089654,52.369911097080795],[4.922475484632021,52.369966667088896],[4.92254608591089,52.363226167005976],[4.908599459039319,52.36317060790397]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00825000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00825000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00825000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00825000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00840000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00840000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00840000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00840000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 629 289 4.923506 52.369828 \
-gcp 5330 1094 4.935232 52.368662 \
-gcp 5382 4391 4.93542 52.363621 \
-gcp 611 4349 4.92357 52.363628 \
   ../output/publieke-werken/downloads/DUIZ00840000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00840000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.92254608591089,52.363226167005976],[4.922475484632021,52.369966667088896],[4.936424270788476,52.370020593311544],[4.936492752376134,52.36328008264504],[4.92254608591089,52.363226167005976]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00840000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00840000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00840000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00840000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00856000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00856000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00856000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00856000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 463 1533 4.937083 52.367942 \
-gcp 943 4365 4.938344 52.363628 \
-gcp 3938 3749 4.945816 52.364627 \
   ../output/publieke-werken/downloads/DUIZ00856000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00856000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936492752376134,52.36328008264504],[4.936424270788476,52.370020593311544],[4.950373095369869,52.37007287573915],[4.950439457246515,52.363332354811625],[4.936492752376134,52.36328008264504]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00856000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00856000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00856000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00856000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00865000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00865000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00865000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00865000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 202 4610 4.950439 52.363333 \
-gcp 209 202 4.950373 52.370074 \
-gcp 5787 4614 4.964386 52.363384 \
   ../output/publieke-werken/downloads/DUIZ00865000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00865000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.950439457246515,52.363332354811625],[4.950373095369869,52.37007287573915],[4.964321957187033,52.37012351436243],[4.964386199333477,52.36338298349643],[4.950439457246515,52.363332354811625]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00865000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00865000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00865000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00865000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00885000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00885000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00885000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00885000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4679 242 4.850147 52.362838 \
-gcp 5478 716 4.852148 52.362114 \
-gcp 5707 4515 4.852781 52.356296 \
-gcp 4438 4526 4.849552 52.356276 \
   ../output/publieke-werken/downloads/DUIZ00885000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00885000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.838950250037817,52.356127721755314],[4.838866960183662,52.36286816080361],[4.852813371259659,52.362931937067145],[4.85289454229496,52.35619148550395],[4.838950250037817,52.356127721755314]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00885000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00885000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00885000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00885000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00898000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00898000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00898000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00898000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 496 302 4.853532 52.362786 \
-gcp 602 4000 4.853913 52.357115 \
-gcp 4807 535 4.86432 52.362491 \
-gcp 5379 2902 4.865806 52.358865 \
   ../output/publieke-werken/downloads/DUIZ00898000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00898000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.85289454229496,52.35619148550395],[4.852813371259659,52.362931937067145],[4.866759827871651,52.36299406991982],[4.866838880064639,52.35625360616411],[4.85289454229496,52.35619148550395]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00898000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00898000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00898000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00898000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00917000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00917000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00917000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00917000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5050 368 4.878831 52.362825 \
-gcp 484 528 4.867426 52.362501 \
-gcp 1480 4512 4.870044 52.356437 \
-gcp 5042 4384 4.878927 52.356683 \
   ../output/publieke-werken/downloads/DUIZ00917000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00917000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866838880064639,52.35625360616411],[4.866759827871651,52.36299406991982],[4.880706328831223,52.363054559350616],[4.880783262159048,52.35631408372479],[4.866838880064639,52.35625360616411]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00917000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00917000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00917000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00917000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00934000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00934000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00934000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00934000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 709 240 4.881964 52.362957 \
-gcp 5355 484 4.89354 52.362681 \
-gcp 3308 4588 4.888567 52.356382 \
   ../output/publieke-werken/downloads/DUIZ00934000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00934000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880783262159048,52.35631408372479],[4.880706328831223,52.363054559350616],[4.894652872949933,52.36311340534883],[4.894727687390359,52.356372918175296],[4.880783262159048,52.35631408372479]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00934000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00934000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00934000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00934000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00953000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00953000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00953000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00953000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 3818 2797 4.90369 52.359218 \
-gcp 3085 398 4.901844 52.362855 \
-gcp 903 1944 4.896421 52.360496 \
   ../output/publieke-werken/downloads/DUIZ00953000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00953000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894727687390359,52.356372918175296],[4.894652872949933,52.36311340534883],[4.908599459039319,52.36317060790397],[4.908672154570724,52.35643010950521],[4.894727687390359,52.356372918175296]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00953000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00953000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00953000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00953000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00969000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00969000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00969000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00969000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5468 3753 4.921907 52.357813 \
-gcp 2929 1368 4.915507 52.361413 \
-gcp 2040 3352 4.913319 52.358383 \
   ../output/publieke-werken/downloads/DUIZ00969000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00969000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908672154570724,52.35643010950521],[4.908599459039319,52.36317060790397],[4.92254608591089,52.363226167005976],[4.922616662512259,52.35648565770449],[4.908672154570724,52.35643010950521]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00969000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00969000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00969000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00969000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00983000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00983000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00983000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00983000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 283 644 4.922755 52.362536 \
-gcp 5531 242 4.935881 52.36322 \
-gcp 5318 4531 4.935426 52.356663 \
-gcp 766 4511 4.924048 52.356639 \
   ../output/publieke-werken/downloads/DUIZ00983000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00983000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922616662512259,52.35648565770449],[4.92254608591089,52.363226167005976],[4.936492752376134,52.36328008264504],[4.93656121002707,52.35653956276317],[4.922616662512259,52.35648565770449]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00983000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00983000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00983000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00983000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00994000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00994000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00994000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00994000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 268 4331 4.936675 52.356994 \
-gcp 501 346 4.937223 52.363078 \
-gcp 3344 538 4.944352 52.362812 \
-gcp 3141 3207 4.94388 52.358734 \
   ../output/publieke-werken/downloads/DUIZ00994000001.jpg \
   ../output/publieke-werken/1950/28992/warped/DUIZ00994000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.93656121002707,52.35653956276317],[4.936492752376134,52.36328008264504],[4.950439457246515,52.363332354811625],[4.950505795927228,52.35659182467182],[4.93656121002707,52.35653956276317]]]}' > ../output/publieke-werken/1950/28992/warped/DUIZ00994000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1950/28992/warped/DUIZ00994000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1950/28992/warped/DUIZ00994000001.vrt \
  ../output/publieke-werken/1950/28992/warped/DUIZ00994000001-warped.tif
    

# =============================================================================================
# Add overviews and create index:
# =============================================================================================

mkdir -p ../output/publieke-werken/1950/28992/index

for j in ../output/publieke-werken/1950/28992/warped/*.tif; do
  gdaladdo -r cubic \
    --config COMPRESS_OVERVIEW JPEG \
    --config PHOTOMETRIC_OVERVIEW YCBCR \
    --config INTERLEAVE_OVERVIEW PIXEL \
    $j 2 4 8 16 32 64 128
done

# Create tile indices
cd ../output/publieke-werken/1950/28992/index
gdaltindex index.shp ../warped/*.tif
ogrinfo -sql "CREATE SPATIAL INDEX ON index" index.shp
    
