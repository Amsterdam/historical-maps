#!/bin/bash

# Create the directory that will contain the warped TIFFs:
mkdir -p ../output/publieke-werken-2500/downloads
mkdir -p ../output/publieke-werken-2500/1943/28992/warped
  

# =============================================================================================
# Name: B00000025351 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken-2500/downloads/B00000025351.jpg ]; then
  wget -O ../output/publieke-werken-2500/downloads/B00000025351.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=B00000025351"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 458 322 4.783265292704551 52.34911584113113 \
-gcp 12908 377 4.818120337406193 52.34928856649503 \
-gcp 12846 10192 4.818336299857354 52.33243745437071 \
-gcp 427 10153 4.783494484552955 52.332264813703226 \
   ../output/publieke-werken-2500/downloads/B00000025351.jpg \
   ../output/publieke-werken-2500/1943/28992/warped/B00000025351.vrt

echo '{"type":"Polygon","coordinates":[[[4.783265292704551,52.34911584113113],[4.818120337406193,52.34928856649503],[4.818336299857354,52.33243745437071],[4.783494484552955,52.332264813703226],[4.783265292704551,52.34911584113113]]]}' > ../output/publieke-werken-2500/1943/28992/warped/B00000025351.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken-2500/1943/28992/warped/B00000025351.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025351.vrt \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025351-warped.tif
    

# =============================================================================================
# Name: B00000025331 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken-2500/downloads/B00000025331.jpg ]; then
  wget -O ../output/publieke-werken-2500/downloads/B00000025331.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=B00000025331"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 457 378 4.7830359005350385 52.36596681128434 \
-gcp 12862 376 4.817904186194359 52.36613962140887 \
-gcp 12856 10193 4.818120337406193 52.34928856649503 \
-gcp 460 10207 4.783265292704551 52.34911584113113 \
   ../output/publieke-werken-2500/downloads/B00000025331.jpg \
   ../output/publieke-werken-2500/1943/28992/warped/B00000025331.vrt

echo '{"type":"Polygon","coordinates":[[[4.7830359005350385,52.36596681128434],[4.817904186194359,52.36613962140887],[4.818120337406193,52.34928856649503],[4.783265292704551,52.34911584113113],[4.7830359005350385,52.36596681128434]]]}' > ../output/publieke-werken-2500/1943/28992/warped/B00000025331.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken-2500/1943/28992/warped/B00000025331.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025331.vrt \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025331-warped.tif
    

# =============================================================================================
# Name: B00000025354 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken-2500/downloads/B00000025354.jpg ]; then
  wget -O ../output/publieke-werken-2500/downloads/B00000025354.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=B00000025354"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 471 480 4.818120337406193 52.34928856649503 \
-gcp 12884 500 4.852975684963722 52.34945102475066 \
-gcp 12879 10303 4.8531784176278885 52.33259983296335 \
-gcp 464 10294 4.818336299857354 52.33243745437071 \
   ../output/publieke-werken-2500/downloads/B00000025354.jpg \
   ../output/publieke-werken-2500/1943/28992/warped/B00000025354.vrt

echo '{"type":"Polygon","coordinates":[[[4.818120337406193,52.34928856649503],[4.852975684963722,52.34945102475066],[4.8531784176278885,52.33259983296335],[4.818336299857354,52.33243745437071],[4.818120337406193,52.34928856649503]]]}' > ../output/publieke-werken-2500/1943/28992/warped/B00000025354.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken-2500/1943/28992/warped/B00000025354.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025354.vrt \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025354-warped.tif
    

# =============================================================================================
# Name: B00000025267 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken-2500/downloads/B00000025267.jpg ]; then
  wget -O ../output/publieke-werken-2500/downloads/B00000025267.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=B00000025267"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 556 523 4.817254597559333 52.41669243568876 \
-gcp 13000 548 4.852162980025028 52.41685521320238 \
-gcp 12986 10360 4.852366422859665 52.4000042543337 \
-gcp 540 10348 4.817471316514894 52.39984155672564 \
   ../output/publieke-werken-2500/downloads/B00000025267.jpg \
   ../output/publieke-werken-2500/1943/28992/warped/B00000025267.vrt

echo '{"type":"Polygon","coordinates":[[[4.817254597559333,52.41669243568876],[4.852162980025028,52.41685521320238],[4.852366422859665,52.4000042543337],[4.817471316514894,52.39984155672564],[4.817254597559333,52.41669243568876]]]}' > ../output/publieke-werken-2500/1943/28992/warped/B00000025267.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken-2500/1943/28992/warped/B00000025267.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025267.vrt \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025267-warped.tif
    

# =============================================================================================
# Name: B00000025269 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken-2500/downloads/B00000025269.jpg ]; then
  wget -O ../output/publieke-werken-2500/downloads/B00000025269.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=B00000025269"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 404 390 4.852162980025028 52.41685521320238 \
-gcp 12799 352 4.8870716482673116 52.4170077032558 \
-gcp 12848 10159 4.887261814612612 52.400156669530496 \
-gcp 448 10219 4.852366422859665 52.4000042543337 \
   ../output/publieke-werken-2500/downloads/B00000025269.jpg \
   ../output/publieke-werken-2500/1943/28992/warped/B00000025269.vrt

echo '{"type":"Polygon","coordinates":[[[4.852162980025028,52.41685521320238],[4.8870716482673116,52.4170077032558],[4.887261814612612,52.400156669530496],[4.852366422859665,52.4000042543337],[4.852162980025028,52.41685521320238]]]}' > ../output/publieke-werken-2500/1943/28992/warped/B00000025269.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken-2500/1943/28992/warped/B00000025269.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025269.vrt \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025269-warped.tif
    

# =============================================================================================
# Name: B00000025290 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken-2500/downloads/B00000025290.jpg ]; then
  wget -O ../output/publieke-werken-2500/downloads/B00000025290.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=B00000025290"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 443 465 4.817471316514894 52.39984155672564 \
-gcp 12862 484 4.852366422859665 52.4000042543337 \
-gcp 12851 10280 4.852569687808245 52.38315323615572 \
-gcp 440 10279 4.8176878459785115 52.38299061839243 \
   ../output/publieke-werken-2500/downloads/B00000025290.jpg \
   ../output/publieke-werken-2500/1943/28992/warped/B00000025290.vrt

echo '{"type":"Polygon","coordinates":[[[4.817471316514894,52.39984155672564],[4.852366422859665,52.4000042543337],[4.852569687808245,52.38315323615572],[4.8176878459785115,52.38299061839243],[4.817471316514894,52.39984155672564]]]}' > ../output/publieke-werken-2500/1943/28992/warped/B00000025290.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken-2500/1943/28992/warped/B00000025290.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025290.vrt \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025290-warped.tif
    

# =============================================================================================
# Name: B00000025388 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken-2500/downloads/B00000025388.jpg ]; then
  wget -O ../output/publieke-werken-2500/downloads/B00000025388.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=B00000025388"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 441 430 4.8531784176278885 52.33259983296335 \
-gcp 11641 429 4.888020819339283 52.3327519493017 \
-gcp 11645 9243 4.888210156425903 52.315900626511514 \
-gcp 451 9261 4.853380973320528 52.31574858474603 \
   ../output/publieke-werken-2500/downloads/B00000025388.jpg \
   ../output/publieke-werken-2500/1943/28992/warped/B00000025388.vrt

echo '{"type":"Polygon","coordinates":[[[4.8531784176278885,52.33259983296335],[4.888020819339283,52.3327519493017],[4.888210156425903,52.315900626511514],[4.853380973320528,52.31574858474603],[4.8531784176278885,52.33259983296335]]]}' > ../output/publieke-werken-2500/1943/28992/warped/B00000025388.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken-2500/1943/28992/warped/B00000025388.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025388.vrt \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025388-warped.tif
    

# =============================================================================================
# Name: B00000025292 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken-2500/downloads/B00000025292.jpg ]; then
  wget -O ../output/publieke-werken-2500/downloads/B00000025292.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=B00000025292"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 438 398 4.852366422859665 52.4000042543337 \
-gcp 12871 390 4.887261814612612 52.400156669530496 \
-gcp 12882 10153 4.887451814678376 52.38330557655269 \
-gcp 452 10168 4.852569687808245 52.38315323615572 \
   ../output/publieke-werken-2500/downloads/B00000025292.jpg \
   ../output/publieke-werken-2500/1943/28992/warped/B00000025292.vrt

echo '{"type":"Polygon","coordinates":[[[4.852366422859665,52.4000042543337],[4.887261814612612,52.400156669530496],[4.887451814678376,52.38330557655269],[4.852569687808245,52.38315323615572],[4.852366422859665,52.4000042543337]]]}' > ../output/publieke-werken-2500/1943/28992/warped/B00000025292.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken-2500/1943/28992/warped/B00000025292.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025292.vrt \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025292-warped.tif
    

# =============================================================================================
# Name: B00000025275 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken-2500/downloads/B00000025275.jpg ]; then
  wget -O ../output/publieke-werken-2500/downloads/B00000025275.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=B00000025275"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 402 403 4.8870716482673116 52.4170077032558 \
-gcp 12799 338 4.9219805836401385 52.41714990568 \
-gcp 12848 10150 4.922157473151727 52.400298802147056 \
-gcp 453 10225 4.887261814612612 52.400156669530496 \
   ../output/publieke-werken-2500/downloads/B00000025275.jpg \
   ../output/publieke-werken-2500/1943/28992/warped/B00000025275.vrt

echo '{"type":"Polygon","coordinates":[[[4.8870716482673116,52.4170077032558],[4.9219805836401385,52.41714990568],[4.922157473151727,52.400298802147056],[4.887261814612612,52.400156669530496],[4.8870716482673116,52.4170077032558]]]}' > ../output/publieke-werken-2500/1943/28992/warped/B00000025275.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken-2500/1943/28992/warped/B00000025275.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025275.vrt \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025275-warped.tif
    

# =============================================================================================
# Name: B00000025298 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken-2500/downloads/B00000025298.jpg ]; then
  wget -O ../output/publieke-werken-2500/downloads/B00000025298.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=B00000025298"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 429 392 4.887261814612612 52.400156669530496 \
-gcp 12869 379 4.922157473151727 52.400298802147056 \
-gcp 12894 10147 4.922334207990887 52.38344763941474 \
-gcp 452 10165 4.887451814678376 52.38330557655269 \
   ../output/publieke-werken-2500/downloads/B00000025298.jpg \
   ../output/publieke-werken-2500/1943/28992/warped/B00000025298.vrt

echo '{"type":"Polygon","coordinates":[[[4.887261814612612,52.400156669530496],[4.922157473151727,52.400298802147056],[4.922334207990887,52.38344763941474],[4.887451814678376,52.38330557655269],[4.887261814612612,52.400156669530496]]]}' > ../output/publieke-werken-2500/1943/28992/warped/B00000025298.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken-2500/1943/28992/warped/B00000025298.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025298.vrt \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025298-warped.tif
    

# =============================================================================================
# Name: B00000025287 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken-2500/downloads/B00000025287.jpg ]; then
  wget -O ../output/publieke-werken-2500/downloads/B00000025287.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=B00000025287"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 448 394 4.782576514199293 52.399668576886434 \
-gcp 12860 407 4.817471316514894 52.39984155672564 \
-gcp 12852 10212 4.8176878459785115 52.38299061839243 \
-gcp 446 10213 4.782806307786179 52.38281772344274 \
   ../output/publieke-werken-2500/downloads/B00000025287.jpg \
   ../output/publieke-werken-2500/1943/28992/warped/B00000025287.vrt

echo '{"type":"Polygon","coordinates":[[[4.782576514199293,52.399668576886434],[4.817471316514894,52.39984155672564],[4.8176878459785115,52.38299061839243],[4.782806307786179,52.38281772344274],[4.782576514199293,52.399668576886434]]]}' > ../output/publieke-werken-2500/1943/28992/warped/B00000025287.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken-2500/1943/28992/warped/B00000025287.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025287.vrt \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025287-warped.tif
    

# =============================================================================================
# Name: B00000025306 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken-2500/downloads/B00000025306.jpg ]; then
  wget -O ../output/publieke-werken-2500/downloads/B00000025306.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=B00000025306"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 457 459 4.957053379854047 52.40043065202611 \
-gcp 12884 440 4.991949516095731 52.40055221902153 \
-gcp 12896 10253 4.992099719546312 52.38370093191646 \
-gcp 471 10279 4.957216849146817 52.38357942458462 \
   ../output/publieke-werken-2500/downloads/B00000025306.jpg \
   ../output/publieke-werken-2500/1943/28992/warped/B00000025306.vrt

echo '{"type":"Polygon","coordinates":[[[4.957053379854047,52.40043065202611],[4.991949516095731,52.40055221902153],[4.992099719546312,52.38370093191646],[4.957216849146817,52.38357942458462],[4.957053379854047,52.40043065202611]]]}' > ../output/publieke-werken-2500/1943/28992/warped/B00000025306.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken-2500/1943/28992/warped/B00000025306.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025306.vrt \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025306-warped.tif
    

# =============================================================================================
# Name: B00000025261 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken-2500/downloads/B00000025261.jpg ]; then
  wget -O ../output/publieke-werken-2500/downloads/B00000025261.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=B00000025261"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 421 352 4.782346519515247 52.416519370895365 \
-gcp 12829 371 4.817254597559333 52.41669243568876 \
-gcp 12815 10175 4.817471316514894 52.39984155672564 \
-gcp 422 10171 4.782576514199293 52.399668576886434 \
   ../output/publieke-werken-2500/downloads/B00000025261.jpg \
   ../output/publieke-werken-2500/1943/28992/warped/B00000025261.vrt

echo '{"type":"Polygon","coordinates":[[[4.782346519515247,52.416519370895365],[4.817254597559333,52.41669243568876],[4.817471316514894,52.39984155672564],[4.782576514199293,52.399668576886434],[4.782346519515247,52.416519370895365]]]}' > ../output/publieke-werken-2500/1943/28992/warped/B00000025261.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken-2500/1943/28992/warped/B00000025261.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025261.vrt \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025261-warped.tif
    

# =============================================================================================
# Name: B00000025310 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken-2500/downloads/B00000025310.jpg ]; then
  wget -O ../output/publieke-werken-2500/downloads/B00000025310.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=B00000025310"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 459 451 4.782806307786179 52.38281772344274 \
-gcp 12855 461 4.8176878459785115 52.38299061839243 \
-gcp 12841 10273 4.817904186194359 52.36613962140887 \
-gcp 458 10279 4.7830359005350385 52.36596681128434 \
   ../output/publieke-werken-2500/downloads/B00000025310.jpg \
   ../output/publieke-werken-2500/1943/28992/warped/B00000025310.vrt

echo '{"type":"Polygon","coordinates":[[[4.782806307786179,52.38281772344274],[4.8176878459785115,52.38299061839243],[4.817904186194359,52.36613962140887],[4.7830359005350385,52.36596681128434],[4.782806307786179,52.38281772344274]]]}' > ../output/publieke-werken-2500/1943/28992/warped/B00000025310.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken-2500/1943/28992/warped/B00000025310.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025310.vrt \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025310-warped.tif
    

# =============================================================================================
# Name: B00000025301 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken-2500/downloads/B00000025301.jpg ]; then
  wget -O ../output/publieke-werken-2500/downloads/B00000025301.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=B00000025301"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 547 371 4.922157473151727 52.400298802147056 \
-gcp 12989 381 4.957053379854047 52.40043065202611 \
-gcp 12975 10197 4.957216849146817 52.38357942458462 \
-gcp 544 10198 4.922334207990887 52.38344763941474 \
   ../output/publieke-werken-2500/downloads/B00000025301.jpg \
   ../output/publieke-werken-2500/1943/28992/warped/B00000025301.vrt

echo '{"type":"Polygon","coordinates":[[[4.922157473151727,52.400298802147056],[4.957053379854047,52.40043065202611],[4.957216849146817,52.38357942458462],[4.922334207990887,52.38344763941474],[4.922157473151727,52.400298802147056]]]}' > ../output/publieke-werken-2500/1943/28992/warped/B00000025301.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken-2500/1943/28992/warped/B00000025301.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025301.vrt \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025301-warped.tif
    

# =============================================================================================
# Name: B00000025312 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken-2500/downloads/B00000025312.jpg ]; then
  wget -O ../output/publieke-werken-2500/downloads/B00000025312.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=B00000025312"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 433 464 4.8176878459785115 52.38299061839243 \
-gcp 12860 473 4.852569687808245 52.38315323615572 \
-gcp 12854 10281 4.852772775099985 52.36630215938807 \
-gcp 424 10280 4.817904186194359 52.36613962140887 \
   ../output/publieke-werken-2500/downloads/B00000025312.jpg \
   ../output/publieke-werken-2500/1943/28992/warped/B00000025312.vrt

echo '{"type":"Polygon","coordinates":[[[4.8176878459785115,52.38299061839243],[4.852569687808245,52.38315323615572],[4.852772775099985,52.36630215938807],[4.817904186194359,52.36613962140887],[4.8176878459785115,52.38299061839243]]]}' > ../output/publieke-werken-2500/1943/28992/warped/B00000025312.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken-2500/1943/28992/warped/B00000025312.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025312.vrt \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025312-warped.tif
    

# =============================================================================================
# Name: B00000025348 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken-2500/downloads/B00000025348.jpg ]; then
  wget -O ../output/publieke-werken-2500/downloads/B00000025348.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=B00000025348"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 463 402 4.957380175559184 52.36672813871252 \
-gcp 12856 411 4.9922497917097095 52.36684958642615 \
-gcp 12857 10226 4.992399732755033 52.349998183270124 \
-gcp 473 10227 4.957543359275188 52.34987679512946 \
   ../output/publieke-werken-2500/downloads/B00000025348.jpg \
   ../output/publieke-werken-2500/1943/28992/warped/B00000025348.vrt

echo '{"type":"Polygon","coordinates":[[[4.957380175559184,52.36672813871252],[4.9922497917097095,52.36684958642615],[4.992399732755033,52.349998183270124],[4.957543359275188,52.34987679512946],[4.957380175559184,52.36672813871252]]]}' > ../output/publieke-werken-2500/1943/28992/warped/B00000025348.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken-2500/1943/28992/warped/B00000025348.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025348.vrt \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025348-warped.tif
    

# =============================================================================================
# Name: B00000025361 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken-2500/downloads/B00000025361.jpg ]; then
  wget -O ../output/publieke-werken-2500/downloads/B00000025361.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=B00000025361"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 517 508 4.852975684963722 52.34945102475066 \
-gcp 12978 523 4.887831316827991 52.34960321571853 \
-gcp 12973 10341 4.888020819339283 52.3327519493017 \
-gcp 510 10340 4.8531784176278885 52.33259983296335 \
   ../output/publieke-werken-2500/downloads/B00000025361.jpg \
   ../output/publieke-werken-2500/1943/28992/warped/B00000025361.vrt

echo '{"type":"Polygon","coordinates":[[[4.852975684963722,52.34945102475066],[4.887831316827991,52.34960321571853],[4.888020819339283,52.3327519493017],[4.8531784176278885,52.33259983296335],[4.852975684963722,52.34945102475066]]]}' > ../output/publieke-werken-2500/1943/28992/warped/B00000025361.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken-2500/1943/28992/warped/B00000025361.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025361.vrt \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025361-warped.tif
    

# =============================================================================================
# Name: B00000025368 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken-2500/downloads/B00000025368.jpg ]; then
  wget -O ../output/publieke-werken-2500/downloads/B00000025368.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=B00000025368"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 439 395 4.887831316827991 52.34960321571853 \
-gcp 11659 382 4.922687214448846 52.34974513923041 \
-gcp 11685 9212 4.922863486465245 52.332893803217864 \
-gcp 469 9236 4.888020819339283 52.3327519493017 \
   ../output/publieke-werken-2500/downloads/B00000025368.jpg \
   ../output/publieke-werken-2500/1943/28992/warped/B00000025368.vrt

echo '{"type":"Polygon","coordinates":[[[4.887831316827991,52.34960321571853],[4.922687214448846,52.34974513923041],[4.922863486465245,52.332893803217864],[4.888020819339283,52.3327519493017],[4.887831316827991,52.34960321571853]]]}' > ../output/publieke-werken-2500/1943/28992/warped/B00000025368.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken-2500/1943/28992/warped/B00000025368.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025368.vrt \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025368-warped.tif
    

# =============================================================================================
# Name: B00000025281 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken-2500/downloads/B00000025281.jpg ]; then
  wget -O ../output/publieke-werken-2500/downloads/B00000025281.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=B00000025281"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 444 397 4.9219805836401385 52.41714990568 \
-gcp 12885 409 4.9568897674965156 52.41728182031738 \
-gcp 12870 10223 4.957053379854047 52.40043065202611 \
-gcp 446 10224 4.922157473151727 52.400298802147056 \
   ../output/publieke-werken-2500/downloads/B00000025281.jpg \
   ../output/publieke-werken-2500/1943/28992/warped/B00000025281.vrt

echo '{"type":"Polygon","coordinates":[[[4.9219805836401385,52.41714990568],[4.9568897674965156,52.41728182031738],[4.957053379854047,52.40043065202611],[4.922157473151727,52.400298802147056],[4.9219805836401385,52.41714990568]]]}' > ../output/publieke-werken-2500/1943/28992/warped/B00000025281.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken-2500/1943/28992/warped/B00000025281.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025281.vrt \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025281-warped.tif
    

# =============================================================================================
# Name: B00000025285 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken-2500/downloads/B00000025285.jpg ]; then
  wget -O ../output/publieke-werken-2500/downloads/B00000025285.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=B00000025285"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 439 439 4.9568897674965156 52.41728182031738 \
-gcp 12852 437 4.991799181188555 52.41740344702171 \
-gcp 12855 10247 4.991949516095731 52.40055221902153 \
-gcp 440 10252 4.957053379854047 52.40043065202611 \
   ../output/publieke-werken-2500/downloads/B00000025285.jpg \
   ../output/publieke-werken-2500/1943/28992/warped/B00000025285.vrt

echo '{"type":"Polygon","coordinates":[[[4.9568897674965156,52.41728182031738],[4.991799181188555,52.41740344702171],[4.991949516095731,52.40055221902153],[4.957053379854047,52.40043065202611],[4.9568897674965156,52.41728182031738]]]}' > ../output/publieke-werken-2500/1943/28992/warped/B00000025285.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken-2500/1943/28992/warped/B00000025285.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025285.vrt \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025285-warped.tif
    

# =============================================================================================
# Name: B00000025344 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken-2500/downloads/B00000025344.jpg ]; then
  wget -O ../output/publieke-werken-2500/downloads/B00000025344.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=B00000025344"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 504 410 4.922510788356937 52.36659641820261 \
-gcp 12934 416 4.957380175559184 52.36672813871252 \
-gcp 12951 10176 4.957543359275188 52.34987679512946 \
-gcp 512 10182 4.922687214448846 52.34974513923041 \
   ../output/publieke-werken-2500/downloads/B00000025344.jpg \
   ../output/publieke-werken-2500/1943/28992/warped/B00000025344.vrt

echo '{"type":"Polygon","coordinates":[[[4.922510788356937,52.36659641820261],[4.957380175559184,52.36672813871252],[4.957543359275188,52.34987679512946],[4.922687214448846,52.34974513923041],[4.922510788356937,52.36659641820261]]]}' > ../output/publieke-werken-2500/1943/28992/warped/B00000025344.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken-2500/1943/28992/warped/B00000025344.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025344.vrt \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025344-warped.tif
    

# =============================================================================================
# Name: B00000025378 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken-2500/downloads/B00000025378.jpg ]; then
  wget -O ../output/publieke-werken-2500/downloads/B00000025378.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=B00000025378"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 398 391 4.818336299857354 52.33243745437071 \
-gcp 11592 436 4.8531784176278885 52.33259983296335 \
-gcp 11539 9248 4.853380973320528 52.31574858474603 \
-gcp 366 9219 4.818552073790755 52.31558628575603 \
   ../output/publieke-werken-2500/downloads/B00000025378.jpg \
   ../output/publieke-werken-2500/1943/28992/warped/B00000025378.vrt

echo '{"type":"Polygon","coordinates":[[[4.818336299857354,52.33243745437071],[4.8531784176278885,52.33259983296335],[4.853380973320528,52.31574858474603],[4.818552073790755,52.31558628575603],[4.818336299857354,52.33243745437071]]]}' > ../output/publieke-werken-2500/1943/28992/warped/B00000025378.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken-2500/1943/28992/warped/B00000025378.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025378.vrt \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025378-warped.tif
    

# =============================================================================================
# Name: B00000025405 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken-2500/downloads/B00000025405.jpg ]; then
  wget -O ../output/publieke-werken-2500/downloads/B00000025405.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=B00000025405"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 474 414 4.748895199462763 52.31523091683035 \
-gcp 11685 432 4.783723476338039 52.315413729720625 \
-gcp 11687 9263 4.78395226831716 52.29856258990348 \
-gcp 474 9258 4.749137197350658 52.2983798666066 \
   ../output/publieke-werken-2500/downloads/B00000025405.jpg \
   ../output/publieke-werken-2500/1943/28992/warped/B00000025405.vrt

echo '{"type":"Polygon","coordinates":[[[4.748895199462763,52.31523091683035],[4.783723476338039,52.315413729720625],[4.78395226831716,52.29856258990348],[4.749137197350658,52.2983798666066],[4.748895199462763,52.31523091683035]]]}' > ../output/publieke-werken-2500/1943/28992/warped/B00000025405.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken-2500/1943/28992/warped/B00000025405.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025405.vrt \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025405-warped.tif
    

# =============================================================================================
# Name: B00000025407 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken-2500/downloads/B00000025407.jpg ]; then
  wget -O ../output/publieke-werken-2500/downloads/B00000025407.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=B00000025407"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 418 330 4.783723476338039 52.315413729720625 \
-gcp 11624 329 4.818552073790755 52.31558628575603 \
-gcp 11635 9169 4.818767659448903 52.29873506137089 \
-gcp 429 9173 4.78395226831716 52.29856258990348 \
   ../output/publieke-werken-2500/downloads/B00000025407.jpg \
   ../output/publieke-werken-2500/1943/28992/warped/B00000025407.vrt

echo '{"type":"Polygon","coordinates":[[[4.783723476338039,52.315413729720625],[4.818552073790755,52.31558628575603],[4.818767659448903,52.29873506137089],[4.78395226831716,52.29856258990348],[4.783723476338039,52.315413729720625]]]}' > ../output/publieke-werken-2500/1943/28992/warped/B00000025407.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken-2500/1943/28992/warped/B00000025407.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025407.vrt \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025407-warped.tif
    

# =============================================================================================
# Name: B00000025411 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken-2500/downloads/B00000025411.jpg ]; then
  wget -O ../output/publieke-werken-2500/downloads/B00000025411.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=B00000025411"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 313 348 4.818552073790755 52.31558628575603 \
-gcp 11518 335 4.853380973320528 52.31574858474603 \
-gcp 11523 9171 4.853583352269291 52.29889728081865 \
-gcp 312 9198 4.818767659448903 52.29873506137089 \
   ../output/publieke-werken-2500/downloads/B00000025411.jpg \
   ../output/publieke-werken-2500/1943/28992/warped/B00000025411.vrt

echo '{"type":"Polygon","coordinates":[[[4.818552073790755,52.31558628575603],[4.853380973320528,52.31574858474603],[4.853583352269291,52.29889728081865],[4.818767659448903,52.29873506137089],[4.818552073790755,52.31558628575603]]]}' > ../output/publieke-werken-2500/1943/28992/warped/B00000025411.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken-2500/1943/28992/warped/B00000025411.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025411.vrt \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025411-warped.tif
    

# =============================================================================================
# Name: B00000025420 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken-2500/downloads/B00000025420.jpg ]; then
  wget -O ../output/publieke-werken-2500/downloads/B00000025420.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=B00000025420"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 353 315 4.818767659448903 52.29873506137089 \
-gcp 11563 326 4.853583352269291 52.29889728081865 \
-gcp 11567 9164 4.853785554701443 52.2820459219011 \
-gcp 358 9167 4.818983057073879 52.28188378193537 \
   ../output/publieke-werken-2500/downloads/B00000025420.jpg \
   ../output/publieke-werken-2500/1943/28992/warped/B00000025420.vrt

echo '{"type":"Polygon","coordinates":[[[4.818767659448903,52.29873506137089],[4.853583352269291,52.29889728081865],[4.853785554701443,52.2820459219011],[4.818983057073879,52.28188378193537],[4.818767659448903,52.29873506137089]]]}' > ../output/publieke-werken-2500/1943/28992/warped/B00000025420.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken-2500/1943/28992/warped/B00000025420.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025420.vrt \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025420-warped.tif
    

# =============================================================================================
# Name: B00000025394 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken-2500/downloads/B00000025394.jpg ]; then
  wget -O ../output/publieke-werken-2500/downloads/B00000025394.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=B00000025394"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 435 396 4.888020819339283 52.3327519493017 \
-gcp 11630 386 4.922863486465245 52.332893803217864 \
-gcp 11642 9208 4.923039604604426 52.31604241088467 \
-gcp 450 9235 4.888210156425903 52.315900626511514 \
   ../output/publieke-werken-2500/downloads/B00000025394.jpg \
   ../output/publieke-werken-2500/1943/28992/warped/B00000025394.vrt

echo '{"type":"Polygon","coordinates":[[[4.888020819339283,52.3327519493017],[4.922863486465245,52.332893803217864],[4.923039604604426,52.31604241088467],[4.888210156425903,52.315900626511514],[4.888020819339283,52.3327519493017]]]}' > ../output/publieke-werken-2500/1943/28992/warped/B00000025394.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken-2500/1943/28992/warped/B00000025394.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025394.vrt \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025394-warped.tif
    

# =============================================================================================
# Name: B00000025325 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken-2500/downloads/B00000025325.jpg ]; then
  wget -O ../output/publieke-werken-2500/downloads/B00000025325.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=B00000025325"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 505 506 4.922334207990887 52.38344763941474 \
-gcp 12980 498 4.957216849146817 52.38357942458462 \
-gcp 12989 10316 4.957380175559184 52.36672813871252 \
-gcp 515 10338 4.922510788356937 52.36659641820261 \
   ../output/publieke-werken-2500/downloads/B00000025325.jpg \
   ../output/publieke-werken-2500/1943/28992/warped/B00000025325.vrt

echo '{"type":"Polygon","coordinates":[[[4.922334207990887,52.38344763941474],[4.957216849146817,52.38357942458462],[4.957380175559184,52.36672813871252],[4.922510788356937,52.36659641820261],[4.922334207990887,52.38344763941474]]]}' > ../output/publieke-werken-2500/1943/28992/warped/B00000025325.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken-2500/1943/28992/warped/B00000025325.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025325.vrt \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025325-warped.tif
    

# =============================================================================================
# Name: B00000025319 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken-2500/downloads/B00000025319.jpg ]; then
  wget -O ../output/publieke-werken-2500/downloads/B00000025319.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=B00000025319"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 448 459 4.887451814678376 52.38330557655269 \
-gcp 12939 482 4.922334207990887 52.38344763941474 \
-gcp 12919 10282 4.922510788356937 52.36659641820261 \
-gcp 454 10281 4.8876416486788665 52.36645442504211 \
   ../output/publieke-werken-2500/downloads/B00000025319.jpg \
   ../output/publieke-werken-2500/1943/28992/warped/B00000025319.vrt

echo '{"type":"Polygon","coordinates":[[[4.887451814678376,52.38330557655269],[4.922334207990887,52.38344763941474],[4.922510788356937,52.36659641820261],[4.8876416486788665,52.36645442504211],[4.887451814678376,52.38330557655269]]]}' > ../output/publieke-werken-2500/1943/28992/warped/B00000025319.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken-2500/1943/28992/warped/B00000025319.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025319.vrt \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025319-warped.tif
    

# =============================================================================================
# Name: B00000025327 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken-2500/downloads/B00000025327.jpg ]; then
  wget -O ../output/publieke-werken-2500/downloads/B00000025327.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=B00000025327"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 448 445 4.957216849146817 52.38357942458462 \
-gcp 12828 460 4.992099719546312 52.38370093191646 \
-gcp 12825 10263 4.9922497917097095 52.36684958642615 \
-gcp 443 10265 4.957380175559184 52.36672813871252 \
   ../output/publieke-werken-2500/downloads/B00000025327.jpg \
   ../output/publieke-werken-2500/1943/28992/warped/B00000025327.vrt

echo '{"type":"Polygon","coordinates":[[[4.957216849146817,52.38357942458462],[4.992099719546312,52.38370093191646],[4.9922497917097095,52.36684958642615],[4.957380175559184,52.36672813871252],[4.957216849146817,52.38357942458462]]]}' > ../output/publieke-werken-2500/1943/28992/warped/B00000025327.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken-2500/1943/28992/warped/B00000025327.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025327.vrt \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025327-warped.tif
    

# =============================================================================================
# Name: B00000025372 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken-2500/downloads/B00000025372.jpg ]; then
  wget -O ../output/publieke-werken-2500/downloads/B00000025372.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=B00000025372"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 433 452 4.922687214448846 52.34974513923041 \
-gcp 11579 459 4.957543359275188 52.34987679512946 \
-gcp 11569 9278 4.957706400478553 52.333025394555 \
-gcp 426 9281 4.922863486465245 52.332893803217864 \
   ../output/publieke-werken-2500/downloads/B00000025372.jpg \
   ../output/publieke-werken-2500/1943/28992/warped/B00000025372.vrt

echo '{"type":"Polygon","coordinates":[[[4.922687214448846,52.34974513923041],[4.957543359275188,52.34987679512946],[4.957706400478553,52.333025394555],[4.922863486465245,52.332893803217864],[4.922687214448846,52.34974513923041]]]}' > ../output/publieke-werken-2500/1943/28992/warped/B00000025372.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken-2500/1943/28992/warped/B00000025372.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025372.vrt \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025372-warped.tif
    

# =============================================================================================
# Name: B00000025374 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken-2500/downloads/B00000025374.jpg ]; then
  wget -O ../output/publieke-werken-2500/downloads/B00000025374.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=B00000025374"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 440 387 4.957543359275188 52.34987679512946 \
-gcp 11594 380 4.992399732755033 52.349998183270124 \
-gcp 11604 9205 4.992549542851094 52.33314672316789 \
-gcp 453 9226 4.957706400478553 52.333025394555 \
   ../output/publieke-werken-2500/downloads/B00000025374.jpg \
   ../output/publieke-werken-2500/1943/28992/warped/B00000025374.vrt

echo '{"type":"Polygon","coordinates":[[[4.957543359275188,52.34987679512946],[4.992399732755033,52.349998183270124],[4.992549542851094,52.33314672316789],[4.957706400478553,52.333025394555],[4.957543359275188,52.34987679512946]]]}' > ../output/publieke-werken-2500/1943/28992/warped/B00000025374.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken-2500/1943/28992/warped/B00000025374.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025374.vrt \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025374-warped.tif
    

# =============================================================================================
# Name: B00000025396 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken-2500/downloads/B00000025396.jpg ]; then
  wget -O ../output/publieke-werken-2500/downloads/B00000025396.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=B00000025396"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 464 386 4.922863486465245 52.332893803217864 \
-gcp 11617 383 4.957706400478553 52.333025394555 \
-gcp 11625 9201 4.957869299352694 52.31617393770895 \
-gcp 479 9223 4.923039604604426 52.31604241088467 \
   ../output/publieke-werken-2500/downloads/B00000025396.jpg \
   ../output/publieke-werken-2500/1943/28992/warped/B00000025396.vrt

echo '{"type":"Polygon","coordinates":[[[4.922863486465245,52.332893803217864],[4.957706400478553,52.333025394555],[4.957869299352694,52.31617393770895],[4.923039604604426,52.31604241088467],[4.922863486465245,52.332893803217864]]]}' > ../output/publieke-werken-2500/1943/28992/warped/B00000025396.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken-2500/1943/28992/warped/B00000025396.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025396.vrt \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025396-warped.tif
    

# =============================================================================================
# Name: B00000008520 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken-2500/downloads/B00000008520.jpg ]; then
  wget -O ../output/publieke-werken-2500/downloads/B00000008520.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=B00000008520"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 368 511 4.852772775099985 52.36630215938807 \
-gcp 11443 508 4.8876416486788665 52.36645442504211 \
-gcp 11420 9278 4.887831316827991 52.34960321571853 \
-gcp 369 9280 4.852975684963722 52.34945102475066 \
   ../output/publieke-werken-2500/downloads/B00000008520.jpg \
   ../output/publieke-werken-2500/1943/28992/warped/B00000008520.vrt

echo '{"type":"Polygon","coordinates":[[[4.852772775099985,52.36630215938807],[4.8876416486788665,52.36645442504211],[4.887831316827991,52.34960321571853],[4.852975684963722,52.34945102475066],[4.852772775099985,52.36630215938807]]]}' > ../output/publieke-werken-2500/1943/28992/warped/B00000008520.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken-2500/1943/28992/warped/B00000008520.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken-2500/1943/28992/warped/B00000008520.vrt \
  ../output/publieke-werken-2500/1943/28992/warped/B00000008520-warped.tif
    

# =============================================================================================
# Name: B00000025417 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken-2500/downloads/B00000025417.jpg ]; then
  wget -O ../output/publieke-werken-2500/downloads/B00000025417.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=B00000025417"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 370 333 4.78395226831716 52.29856258990348 \
-gcp 11563 366 4.818767659448903 52.29873506137089 \
-gcp 11549 9198 4.818983057073879 52.28188378193537 \
-gcp 354 9177 4.784180860747217 52.281711394971836 \
   ../output/publieke-werken-2500/downloads/B00000025417.jpg \
   ../output/publieke-werken-2500/1943/28992/warped/B00000025417.vrt

echo '{"type":"Polygon","coordinates":[[[4.78395226831716,52.29856258990348],[4.818767659448903,52.29873506137089],[4.818983057073879,52.28188378193537],[4.784180860747217,52.281711394971836],[4.78395226831716,52.29856258990348]]]}' > ../output/publieke-werken-2500/1943/28992/warped/B00000025417.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken-2500/1943/28992/warped/B00000025417.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025417.vrt \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025417-warped.tif
    

# =============================================================================================
# Name: B00000025313 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken-2500/downloads/B00000025313.jpg ]; then
  wget -O ../output/publieke-werken-2500/downloads/B00000025313.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=B00000025313"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 443 397 4.852569687808245 52.38315323615572 \
-gcp 12879 343 4.887451814678376 52.38330557655269 \
-gcp 12923 10158 4.8876416486788665 52.36645442504211 \
-gcp 492 10222 4.852772775099985 52.36630215938807 \
   ../output/publieke-werken-2500/downloads/B00000025313.jpg \
   ../output/publieke-werken-2500/1943/28992/warped/B00000025313.vrt

echo '{"type":"Polygon","coordinates":[[[4.852569687808245,52.38315323615572],[4.887451814678376,52.38330557655269],[4.8876416486788665,52.36645442504211],[4.852772775099985,52.36630215938807],[4.852569687808245,52.38315323615572]]]}' > ../output/publieke-werken-2500/1943/28992/warped/B00000025313.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken-2500/1943/28992/warped/B00000025313.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025313.vrt \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025313-warped.tif
    

# =============================================================================================
# Name: B00000025340 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken-2500/downloads/B00000025340.jpg ]; then
  wget -O ../output/publieke-werken-2500/downloads/B00000025340.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=B00000025340"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 422 459 4.8876416486788665 52.36645442504211 \
-gcp 12851 431 4.922510788356937 52.36659641820261 \
-gcp 12856 10232 4.922687214448846 52.34974513923041 \
-gcp 449 10261 4.887831316827991 52.34960321571853 \
   ../output/publieke-werken-2500/downloads/B00000025340.jpg \
   ../output/publieke-werken-2500/1943/28992/warped/B00000025340.vrt

echo '{"type":"Polygon","coordinates":[[[4.8876416486788665,52.36645442504211],[4.922510788356937,52.36659641820261],[4.922687214448846,52.34974513923041],[4.887831316827991,52.34960321571853],[4.8876416486788665,52.36645442504211]]]}' > ../output/publieke-werken-2500/1943/28992/warped/B00000025340.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken-2500/1943/28992/warped/B00000025340.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025340.vrt \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025340-warped.tif
    

# =============================================================================================
# Name: B00000025376 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken-2500/downloads/B00000025376.jpg ]; then
  wget -O ../output/publieke-werken-2500/downloads/B00000025376.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=B00000025376"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 389 348 4.783494484552955 52.332264813703226 \
-gcp 11578 338 4.818336299857354 52.33243745437071 \
-gcp 11592 9167 4.818552073790755 52.31558628575603 \
-gcp 399 9191 4.783723476338039 52.315413729720625 \
   ../output/publieke-werken-2500/downloads/B00000025376.jpg \
   ../output/publieke-werken-2500/1943/28992/warped/B00000025376.vrt

echo '{"type":"Polygon","coordinates":[[[4.783494484552955,52.332264813703226],[4.818336299857354,52.33243745437071],[4.818552073790755,52.31558628575603],[4.783723476338039,52.315413729720625],[4.783494484552955,52.332264813703226]]]}' > ../output/publieke-werken-2500/1943/28992/warped/B00000025376.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken-2500/1943/28992/warped/B00000025376.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025376.vrt \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025376-warped.tif
    

# =============================================================================================
# Name: B00000025399 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken-2500/downloads/B00000025399.jpg ]; then
  wget -O ../output/publieke-werken-2500/downloads/B00000025399.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=B00000025399"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 461 380 4.957706400478553 52.333025394555 \
-gcp 11605 384 4.992549542851094 52.33314672316789 \
-gcp 11601 9206 4.992699222166431 52.31629520683925 \
-gcp 458 9214 4.957869299352694 52.31617393770895 \
   ../output/publieke-werken-2500/downloads/B00000025399.jpg \
   ../output/publieke-werken-2500/1943/28992/warped/B00000025399.vrt

echo '{"type":"Polygon","coordinates":[[[4.957706400478553,52.333025394555],[4.992549542851094,52.33314672316789],[4.992699222166431,52.31629520683925],[4.957869299352694,52.31617393770895],[4.957706400478553,52.333025394555]]]}' > ../output/publieke-werken-2500/1943/28992/warped/B00000025399.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken-2500/1943/28992/warped/B00000025399.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025399.vrt \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025399-warped.tif
    

# =============================================================================================
# Name: B00000025333 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken-2500/downloads/B00000025333.jpg ]; then
  wget -O ../output/publieke-werken-2500/downloads/B00000025333.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=B00000025333"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 441 399 4.817904186194359 52.36613962140887 \
-gcp 12864 430 4.852772775099985 52.36630215938807 \
-gcp 12863 10238 4.852975684963722 52.34945102475066 \
-gcp 431 10223 4.818120337406193 52.34928856649503 \
   ../output/publieke-werken-2500/downloads/B00000025333.jpg \
   ../output/publieke-werken-2500/1943/28992/warped/B00000025333.vrt

echo '{"type":"Polygon","coordinates":[[[4.817904186194359,52.36613962140887],[4.852772775099985,52.36630215938807],[4.852975684963722,52.34945102475066],[4.818120337406193,52.34928856649503],[4.817904186194359,52.36613962140887]]]}' > ../output/publieke-werken-2500/1943/28992/warped/B00000025333.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken-2500/1943/28992/warped/B00000025333.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025333.vrt \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025333-warped.tif
    

# =============================================================================================
# Name: B00000025402 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken-2500/downloads/B00000025402.jpg ]; then
  wget -O ../output/publieke-werken-2500/downloads/B00000025402.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=B00000025402"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 446 461 4.728731614012162 52.31512038983119 \
-gcp 11635 441 4.748895199462763 52.31523091683035 \
-gcp 11647 9272 4.749137197350658 52.2983798666066 \
-gcp 471 9299 4.72898125722845 52.29826939377418 \
   ../output/publieke-werken-2500/downloads/B00000025402.jpg \
   ../output/publieke-werken-2500/1943/28992/warped/B00000025402.vrt

echo '{"type":"Polygon","coordinates":[[[4.728731614012162,52.31512038983119],[4.748895199462763,52.31523091683035],[4.749137197350658,52.2983798666066],[4.72898125722845,52.29826939377418],[4.728731614012162,52.31512038983119]]]}' > ../output/publieke-werken-2500/1943/28992/warped/B00000025402.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken-2500/1943/28992/warped/B00000025402.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025402.vrt \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025402-warped.tif
    

# =============================================================================================
# Name: B00000025414 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken-2500/downloads/B00000025414.jpg ]; then
  wget -O ../output/publieke-werken-2500/downloads/B00000025414.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=B00000025414"
fi

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 389 358 4.749137197350658 52.2983798666066 \
-gcp 11600 376 4.78395226831716 52.29856258990348 \
-gcp 11593 9213 4.784180860747217 52.281711394971836 \
-gcp 386 9213 4.749378984174313 52.281528761200505 \
   ../output/publieke-werken-2500/downloads/B00000025414.jpg \
   ../output/publieke-werken-2500/1943/28992/warped/B00000025414.vrt

echo '{"type":"Polygon","coordinates":[[[4.749137197350658,52.2983798666066],[4.78395226831716,52.29856258990348],[4.784180860747217,52.281711394971836],[4.749378984174313,52.281528761200505],[4.749137197350658,52.2983798666066]]]}' > ../output/publieke-werken-2500/1943/28992/warped/B00000025414.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken-2500/1943/28992/warped/B00000025414.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025414.vrt \
  ../output/publieke-werken-2500/1943/28992/warped/B00000025414-warped.tif
    

# =============================================================================================
# Add overviews and create index:
# =============================================================================================

mkdir -p ../output/publieke-werken-2500/1943/28992

for j in ../output/publieke-werken-2500/1943/28992/warped/*.tif; do
  gdaladdo -r cubic \
    --config COMPRESS_OVERVIEW JPEG \
    --config PHOTOMETRIC_OVERVIEW YCBCR \
    --config INTERLEAVE_OVERVIEW PIXEL \
    $j 2 4 8 16 32 64 128
done

# Create tile indices
cd ../output/publieke-werken-2500/1943/28992
gdaltindex index.shp warped/*.tif
ogrinfo -sql "CREATE SPATIAL INDEX ON index" index.shp
    
