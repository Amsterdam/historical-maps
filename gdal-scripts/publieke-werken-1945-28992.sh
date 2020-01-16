#!/bin/bash

# Create the directory that will contain the warped TIFFs:
mkdir -p ../output/publieke-werken/downloads
mkdir -p ../output/publieke-werken/1945/28992/warped
  

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
   ../output/publieke-werken/1945/28992/warped/DUIZ01016000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.839033510785127,52.349387273513166],[4.838950250037817,52.356127721755314],[4.85289454229496,52.35619148550395],[4.852975684963722,52.34945102475071],[4.839033510785127,52.349387273513166]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ01016000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ01016000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ01016000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ01016000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01041000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01041000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01041000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01041000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4862 600 4.878847 52.356765 \
-gcp 884 1892 4.868885 52.354927 \
-gcp 2924 4000 4.873815 52.351643 \
   ../output/publieke-werken/downloads/DUIZ01041000001.jpg \
   ../output/publieke-werken/1945/28992/warped/DUIZ01041000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866917904631408,52.34951313322205],[4.866838880064639,52.35625360616411],[4.880783262159048,52.35631408372479],[4.880860168600993,52.34957359891624],[4.866917904631408,52.34951313322205]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ01041000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ01041000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ01041000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ01041000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01068000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01068000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01068000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01068000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 993 446 4.897113 52.356693 \
-gcp 5427 301 4.908196 52.356761 \
-gcp 5660 3845 4.908555 52.351309 \
-gcp 1808 3680 4.898964 52.351709 \
   ../output/publieke-werken/downloads/DUIZ01068000001.jpg \
   ../output/publieke-werken/1945/28992/warped/DUIZ01068000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894802475685259,52.34963242182259],[4.894727687390359,52.356372918175296],[4.908672154570724,52.35643010950521],[4.908744824696965,52.3496896019307],[4.894802475685259,52.34963242182259]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ01068000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ01068000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ01068000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ01068000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01081000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01081000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01081000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01081000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1325 3843 4.911726 52.35124 \
-gcp 2292 4260 4.914054 52.350579 \
-gcp 3677 4167 4.91753 52.350651 \
-gcp 5252 2954 4.921489 52.35244 \
-gcp 5714 376 4.922894 52.356371 \
-gcp 4042 420 4.918635 52.356358 \
-gcp 916 500 4.91091 52.356378 \
-gcp 358 2172 4.909387 52.353829 \
   ../output/publieke-werken/downloads/DUIZ01081000001.jpg \
   ../output/publieke-werken/1945/28992/warped/DUIZ01081000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908744824696965,52.3496896019307],[4.908672154570724,52.35643010950521],[4.922616662512259,52.35648565770449],[4.922687214448847,52.34974513923046],[4.908744824696965,52.3496896019307]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ01081000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ01081000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ01081000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ01081000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ00101000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922051358018237,52.410409471416834],[4.921980583640138,52.41714990568002],[4.935944228408925,52.41720390607779],[4.936012877899669,52.41046346120851],[4.922051358018237,52.410409471416834]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00101000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00101000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00101000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00101000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ00107000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936012877899669,52.41046346120851],[4.935944228408925,52.41720390607779],[4.949907911741644,52.41725626042006],[4.949974436325135,52.410515805267856],[4.936012877899669,52.41046346120851]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00107000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00107000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00107000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00107000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ00113000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.949974436325135,52.410515805267856],[4.949907911741644,52.41725626042006],[4.963871632444818,52.417306968697375],[4.963936032101777,52.41056650358553],[4.949974436325135,52.410515805267856]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00113000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00113000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00113000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00113000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00124000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00124000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00124000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00124000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 3808 3816 4.847245 52.404435 \
-gcp 1408 1752 4.841537 52.407681 \
-gcp 5656 544 4.852202 52.409291 \
   ../output/publieke-werken/downloads/DUIZ00124000001.jpg \
   ../output/publieke-werken/1945/28992/warped/DUIZ00124000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.838366608974079,52.403310599442186],[4.838283114951327,52.41005097284346],[4.852244378519897,52.41011483681815],[4.852325748530966,52.40337445087526],[4.838366608974079,52.403310599442186]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00124000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00124000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00124000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00124000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00135000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00135000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00135000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00135000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1164 260 4.854712 52.410038 \
-gcp 2408 208 4.857888 52.410116 \
-gcp 3656 2856 4.861021 52.405849 \
   ../output/publieke-werken/downloads/DUIZ00135000001.jpg \
   ../output/publieke-werken/1945/28992/warped/DUIZ00135000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.852325748530966,52.40337445087526],[4.852244378519897,52.41011483681815],[4.86620568778914,52.41017705512224],[4.866284933764953,52.403436656960906],[4.852325748530966,52.40337445087526]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00135000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00135000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00135000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00135000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ00145000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866284933764953,52.403436656960906],[4.86620568778914,52.41017705512224],[4.880167041566348,52.410237627744756],[4.880244163483944,52.40349721768803],[4.866284933764953,52.403436656960906]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00145000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00145000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00145000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00145000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ00156000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894203436495817,52.403556133045946],[4.894128438658778,52.41029655467496],[4.908089877873669,52.41035383590237],[4.908162751608423,52.40361340302422],[4.894203436495817,52.403556133045946]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00156000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00156000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00156000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00156000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ00162000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908162751608423,52.40361340302422],[4.908089877873669,52.41035383590237],[4.922051358018237,52.410409471416834],[4.92212210762959,52.4036690276127],[4.908162751608423,52.40361340302422]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00162000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00162000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00162000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00162000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ00168000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.92212210762959,52.4036690276127],[4.922051358018237,52.410409471416834],[4.936012877899669,52.41046346120851],[4.936081503367124,52.403723006801485],[4.92212210762959,52.4036690276127]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00168000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00168000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00168000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00168000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ00174000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936081503367124,52.403723006801485],[4.936012877899669,52.41046346120851],[4.949974436325135,52.410515805267856],[4.950040937628804,52.403775340581014],[4.936081503367124,52.403723006801485]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00174000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00174000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00174000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00174000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ00180000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.950040937628804,52.403775340581014],[4.949974436325135,52.410515805267856],[4.963936032101777,52.41056650358553],[4.964000409222397,52.40382602894209],[4.950040937628804,52.403775340581014]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00180000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00180000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00180000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00180000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ00195000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.838450073784739,52.39657021652458],[4.838366608974079,52.403310599442186],[4.852325748530966,52.40337445087526],[4.852407090072926,52.39663405541986],[4.838450073784739,52.39657021652458]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00195000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00195000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00195000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00195000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ01128000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.839116742440587,52.34264681612326],[4.839033510785127,52.349387273513166],[4.852975684963722,52.34945102475071],[4.853056799280559,52.34271055485344],[4.839116742440587,52.34264681612326]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ01128000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ01128000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ01128000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ01128000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01164000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01164000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01164000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01164000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 601 301 4.881797 52.350421 \
-gcp 4392 734 4.89125 52.349645 \
-gcp 5775 4409 4.894511 52.343975 \
-gcp 1185 3739 4.883085 52.345145 \
   ../output/publieke-werken/downloads/DUIZ01164000001.jpg \
   ../output/publieke-werken/1945/28992/warped/DUIZ01164000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880937048170904,52.342833104971],[4.880860168600993,52.34957359891624],[4.894802475685259,52.34963242182259],[4.894877237848093,52.34289191633672],[4.880937048170904,52.342833104971]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ01164000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ01164000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ01164000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ01164000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ01231000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.83919994501918,52.335906349631614],[4.839116742440587,52.34264681612326],[4.853056799280559,52.34271055485344],[4.85313788526007,52.3359700758583],[4.83919994501918,52.335906349631614]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ01231000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ01231000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ01231000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ01231000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ01245000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.85313788526007,52.3359700758583],[4.853056799280559,52.34271055485344],[4.866996901586189,52.34277265113968],[4.867075870943207,52.33603215996313],[4.85313788526007,52.3359700758583]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ01245000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ01245000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ01245000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ01245000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ01283000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908890088786293,52.33620855943839],[4.908817469431128,52.34294908522637],[4.922757741733357,52.343004611629944],[4.922828244378485,52.33626407494904],[4.908890088786293,52.33620855943839]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ01283000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ01283000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ01283000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ01283000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ01327000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.853218942916848,52.32922958781129],[4.85313788526007,52.3359700758583],[4.867075870943207,52.33603215996313],[4.867154812716668,52.32929165973841],[4.853218942916848,52.32922958781129]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ01327000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ01327000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ01327000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ01327000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ01379000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.853299972265478,52.322489090758516],[4.853218942916848,52.32922958781129],[4.867154812716668,52.32929165973841],[4.867233726920776,52.32255115051162],[4.853299972265478,52.322489090758516]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ01379000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ01379000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ01379000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ01379000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ01667000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.824407516286362,52.403245102673026],[4.82432189827612,52.409985463209566],[4.838283114951327,52.41005097284346],[4.838366608974079,52.403310599442186],[4.824407516286362,52.403245102673026]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ01667000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ01667000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ01667000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ01667000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ01693000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.824493104341551,52.39650473261617],[4.824407516286362,52.403245102673026],[4.838366608974079,52.403310599442186],[4.838450073784739,52.39657021652458],[4.824493104341551,52.39650473261617]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ01693000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ01693000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ01693000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ01693000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ01699000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.810536182934792,52.396437603706175],[4.810448471659863,52.403177960579235],[4.824407516286362,52.403245102673026],[4.824493104341551,52.39650473261617],[4.810536182934792,52.396437603706175]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ01699000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ01699000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ01699000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ01699000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ01722000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.824578662457137,52.38976435308513],[4.824493104341551,52.39650473261617],[4.838450073784739,52.39657021652458],[4.838533509398378,52.38982982413669],[4.824578662457137,52.38976435308513]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ01722000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ01722000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ01722000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ01722000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ01729000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.810623863527553,52.38969723735488],[4.810536182934792,52.396437603706175],[4.824493104341551,52.39650473261617],[4.824578662457137,52.38976435308513],[4.810623863527553,52.38969723735488]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ01729000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ01729000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ01729000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ01729000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ01735000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.796669113800418,52.38962847695788],[4.796579310755865,52.39636882980655],[4.810536182934792,52.396437603706175],[4.810623863527553,52.38969723735488],[4.796669113800418,52.38962847695788]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ01735000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ01735000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ01735000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ01735000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ01757000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.824664190648556,52.38302396412592],[4.824578662457137,52.38976435308513],[4.838533509398378,52.38982982413669],[4.838616915830047,52.38308942232453],[4.824664190648556,52.38302396412592]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ01757000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ01757000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ01757000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ01757000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ01765000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.810711513453968,52.38295686157143],[4.810623863527553,52.38969723735488],[4.824578662457137,52.38976435308513],[4.824664190648556,52.38302396412592],[4.810711513453968,52.38295686157143]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ01765000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ01765000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ01765000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ01765000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ01772000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.796758885436461,52.382888114673015],[4.796669113800418,52.38962847695788],[4.810623863527553,52.38969723735488],[4.810711513453968,52.38295686157143],[4.796758885436461,52.382888114673015]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ01772000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ01772000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ01772000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ01772000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00201000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00201000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00201000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00201000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5774 4599 4.86637 52.3967 \
-gcp 5773 197 4.86629 52.40344 \
-gcp 190 197 4.85233 52.40338 \
   ../output/publieke-werken/downloads/DUIZ00201000001.jpg \
   ../output/publieke-werken/1945/28992/warped/DUIZ00201000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.852407090072926,52.39663405541986],[4.852325748530966,52.40337445087526],[4.866284933764953,52.403436656960906],[4.866364152014656,52.39669624929073],[4.852407090072926,52.39663405541986]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00201000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00201000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00201000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00201000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ00215000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880321258418444,52.39675679812611],[4.880244163483944,52.40349721768803],[4.894203436495817,52.403556133045946],[4.894278408092785,52.39681570191528],[4.880321258418444,52.39675679812611]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00215000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00215000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00215000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00215000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ00225000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894278408092785,52.39681570191528],[4.894203436495817,52.403556133045946],[4.908162751608423,52.40361340302422],[4.908235599846147,52.39687296064783],[4.894278408092785,52.39681570191528]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00225000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00225000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00225000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00225000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ00237000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908235599846147,52.39687296064783],[4.908162751608423,52.40361340302422],[4.92212210762959,52.4036690276127],[4.922192832486973,52.39692857431359],[4.908235599846147,52.39687296064783]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00237000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00237000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00237000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00237000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ00245000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922192832486973,52.39692857431359],[4.92212210762959,52.4036690276127],[4.936081503367124,52.403723006801485],[4.936150104823677,52.39698254290268],[4.922192832486973,52.39692857431359]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00245000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00245000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00245000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00245000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ00252000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936150104823677,52.39698254290268],[4.936081503367124,52.403723006801485],[4.950040937628804,52.403775340581014],[4.950107415664664,52.397034866405576],[4.936150104823677,52.39698254290268]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00252000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00252000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00252000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00252000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ00258000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.950107415664664,52.397034866405576],[4.950040937628804,52.403775340581014],[4.964000409222397,52.40382602894209],[4.964064763818304,52.39708554481305],[4.950107415664664,52.397034866405576]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00258000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00258000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00258000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00258000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ00275000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.838533509398378,52.38982982413669],[4.838450073784739,52.39657021652458],[4.852407090072926,52.39663405541986],[4.85248840316046,52.38989365049802],[4.838533509398378,52.38982982413669]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00275000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00275000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00275000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00275000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ00304000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880398326383764,52.39001636910505],[4.880321258418444,52.39675679812611],[4.894278408092785,52.39681570191528],[4.89435335346322,52.39007526132898],[4.880398326383764,52.39001636910505]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00304000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00304000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00304000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00304000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ00314000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.89435335346322,52.39007526132898],[4.894278408092785,52.39681570191528],[4.908235599846147,52.39687296064783],[4.908308422599998,52.3901325088192],[4.89435335346322,52.39007526132898]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00314000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00314000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00314000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00314000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ00326000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908308422599998,52.3901325088192],[4.908235599846147,52.39687296064783],[4.922192832486973,52.39692857431359],[4.922263532603153,52.3901881115656],[4.908308422599998,52.3901325088192]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00326000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00326000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00326000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00326000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ00335000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922263532603153,52.3901881115656],[4.922192832486973,52.39692857431359],[4.936150104823677,52.39698254290268],[4.936218682281719,52.390242069558234],[4.922263532603153,52.3901881115656]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00335000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00335000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00335000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00335000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ00345000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936218682281719,52.390242069558234],[4.936150104823677,52.39698254290268],[4.950107415664664,52.397034866405576],[4.95017387044471,52.390294382787665],[4.936218682281719,52.390242069558234]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00345000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00345000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00345000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00345000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00354000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00354000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00354000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00354000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 360 388 4.950107 52.397036 \
-gcp 7728 344 4.964064 52.397086 \
-gcp 7772 6128 4.964128 52.390346 \
   ../output/publieke-werken/downloads/DUIZ00354000001.jpg \
   ../output/publieke-werken/1945/28992/warped/DUIZ00354000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.95017387044471,52.390294382787665],[4.950107415664664,52.397034866405576],[4.964064763818304,52.39708554481305],[4.964129095901116,52.390345051244516],[4.95017387044471,52.390294382787665]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00354000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00354000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00354000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00354000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ00368000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.992039653930022,52.390441453805074],[4.99197956729695,52.39718196630592],[5.005937020238597,52.39722770937422],[5.005994984120399,52.390487187891644],[4.992039653930022,52.390441453805074]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00368000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00368000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00368000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00368000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ00398000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866522505392917,52.383215405608176],[4.866443342552547,52.38995583215781],[4.880398326383764,52.39001636910505],[4.880475367393809,52.38327593067091],[4.866522505392917,52.383215405608176]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00398000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00398000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00398000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00398000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ00423000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894428272620641,52.3833348113331],[4.89435335346322,52.39007526132898],[4.908308422599998,52.3901325088192],[4.908381219883111,52.38339204758446],[4.894428272620641,52.3833348113331]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00423000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00423000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00423000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00423000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ00434000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908381219883111,52.38339204758446],[4.908308422599998,52.3901325088192],[4.922263532603153,52.3901881115656],[4.922334207990888,52.3834476394148],[4.908381219883111,52.38339204758446]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00434000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00434000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00434000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00434000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ00444000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922334207990888,52.3834476394148],[4.922263532603153,52.3901881115656],[4.936218682281719,52.390242069558234],[4.936287235753624,52.38350158681422],[4.922334207990888,52.3834476394148]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00444000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00444000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00444000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00444000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ00451000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936287235753624,52.38350158681422],[4.936218682281719,52.390242069558234],[4.95017387044471,52.390294382787665],[4.950240301980939,52.38355388977322],[4.936287235753624,52.38350158681422]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00451000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00451000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00451000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00451000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ00460000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.950240301980939,52.38355388977322],[4.95017387044471,52.390294382787665],[4.964129095901116,52.390345051244516],[4.964193405482441,52.38360454828254],[4.950240301980939,52.38355388977322]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00460000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00460000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00460000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00460000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ00476000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.992099719546314,52.38370093191648],[4.992039653930022,52.390441453805074],[5.005994984120399,52.390487187891644],[5.006052927727788,52.38374665702412],[4.992099719546314,52.38370093191648]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00476000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00476000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00476000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00476000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ00483000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.838700293094798,52.37634901113428],[4.838616915830047,52.38308942232453],[4.852569687808244,52.383153236155735],[4.852650944030937,52.37641281243913],[4.838700293094798,52.37634901113428]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00483000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00483000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00483000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00483000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ00493000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.852650944030937,52.37641281243913],[4.852569687808244,52.383153236155735],[4.866522505392917,52.383215405608176],[4.866601640550044,52.376474969687905],[4.852650944030937,52.37641281243913]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00493000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00493000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00493000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00493000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ00507000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866601640550044,52.376474969687905],[4.866522505392917,52.383215405608176],[4.880475367393809,52.38327593067091],[4.880552381462476,52.376535482869734],[4.866601640550044,52.376474969687905]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00507000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00507000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00507000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00507000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00522000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00522000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00522000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00522000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1121 605 4.882605 52.382768 \
-gcp 768 4158 4.881779 52.377385 \
-gcp 5562 3245 4.893559 52.378796 \
   ../output/publieke-werken/downloads/DUIZ00522000001.jpg \
   ../output/publieke-werken/1945/28992/warped/DUIZ00522000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880552381462476,52.376535482869734],[4.880475367393809,52.38327593067091],[4.894428272620641,52.3833348113331],[4.894503165578564,52.37659435197376],[4.880552381462476,52.376535482869734]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00522000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00522000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00522000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00522000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00536000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00536000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00536000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00536000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 260 264 4.894428 52.383335 \
-gcp 5895 250 4.908381 52.383393 \
-gcp 5910 4695 4.908453 52.376652 \
   ../output/publieke-werken/downloads/DUIZ00536000001.jpg \
   ../output/publieke-werken/1945/28992/warped/DUIZ00536000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894503165578564,52.37659435197376],[4.894428272620641,52.3833348113331],[4.908381219883111,52.38339204758446],[4.908453991708622,52.376651576989644],[4.894503165578564,52.37659435197376]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00536000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00536000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00536000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00536000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00550000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00550000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00550000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00550000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1180 623 4.91249 52.383266 \
-gcp 3348 2931 4.917744 52.379664 \
-gcp 1144 4093 4.912251 52.377974 \
   ../output/publieke-werken/downloads/DUIZ00550000001.jpg \
   ../output/publieke-werken/1945/28992/warped/DUIZ00550000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908453991708622,52.376651576989644],[4.908381219883111,52.38339204758446],[4.922334207990888,52.3834476394148],[4.922404858662931,52.37670715790718],[4.908453991708622,52.376651576989644]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00550000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00550000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00550000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00550000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ00580000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.964257692573884,52.37686403597314],[4.964193405482441,52.38360454828254],[4.978146545067712,52.38365356233319],[4.9782087109276,52.376913040402066],[4.964257692573884,52.37686403597314]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00580000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00580000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00580000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00580000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ00588000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.9782087109276,52.376913040402066],[4.978146545067712,52.38365356233319],[4.992099719546314,52.38370093191648],[4.99215976415666,52.37696040068631],[4.9782087109276,52.376913040402066]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00588000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00588000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00588000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00588000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ00592000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.99215976415666,52.37696040068631],[4.992099719546314,52.38370093191648],[5.006052927727788,52.38374665702412],[5.006110851071218,52.37700611681764],[4.99215976415666,52.37696040068631]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00592000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00592000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00592000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00592000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ00598000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.838783641207661,52.36960859061196],[4.838700293094798,52.37634901113428],[4.852650944030937,52.37641281243913],[4.852732171843194,52.36967237939424],[4.838783641207661,52.36960859061196]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00598000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00598000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00598000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00598000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ00612000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.852732171843194,52.36967237939424],[4.852650944030937,52.37641281243913],[4.866601640550044,52.376474969687905],[4.866680748038203,52.36973452444315],[4.852732171843194,52.36967237939424]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00612000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00612000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00612000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00612000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00630000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00630000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00630000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00630000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 3570 2203 4.874861 52.373548 \
-gcp 2487 295 4.872152 52.37644 \
-gcp 544 4426 4.867335 52.370138 \
-gcp 5692 4330 4.880151 52.370304 \
   ../output/publieke-werken/downloads/DUIZ00630000001.jpg \
   ../output/publieke-werken/1945/28992/warped/DUIZ00630000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866680748038203,52.36973452444315],[4.866601640550044,52.376474969687905],[4.880552381462476,52.376535482869734],[4.880629368603654,52.36979502574763],[4.866680748038203,52.36973452444315]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00630000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00630000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00630000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00630000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00648000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00648000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00648000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00648000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5605 539 4.893846 52.376166 \
-gcp 1264 4280 4.883096 52.370441 \
-gcp 1819 799 4.884437 52.375737 \
-gcp 5011 4187 4.892387 52.370605 \
   ../output/publieke-werken/downloads/DUIZ00648000001.jpg \
   ../output/publieke-werken/1945/28992/warped/DUIZ00648000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880629368603654,52.36979502574763],[4.880552381462476,52.376535482869734],[4.894503165578564,52.37659435197376],[4.894578032350497,52.36985388329698],[4.880629368603654,52.36979502574763]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00648000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00648000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00648000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00648000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00668000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00668000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00668000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00668000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 856 424 4.896002 52.376352 \
-gcp 5504 3850 4.90759 52.371175 \
-gcp 406 4302 4.894935 52.370434 \
   ../output/publieke-werken/downloads/DUIZ00668000001.jpg \
   ../output/publieke-werken/1945/28992/warped/DUIZ00668000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894578032350497,52.36985388329698],[4.894503165578564,52.37659435197376],[4.908453991708622,52.376651576989644],[4.908526738089654,52.369911097080795],[4.894578032350497,52.36985388329698]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00668000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00668000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00668000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00668000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00685000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00685000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00685000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00685000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 2620 940 4.914311 52.375629 \
-gcp 1354 4280 4.911227 52.37051 \
-gcp 3997 4264 4.917782 52.370562 \
   ../output/publieke-werken/downloads/DUIZ00685000001.jpg \
   ../output/publieke-werken/1945/28992/warped/DUIZ00685000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908526738089654,52.369911097080795],[4.908453991708622,52.376651576989644],[4.922404858662931,52.37670715790718],[4.922475484632021,52.369966667088896],[4.908526738089654,52.369911097080795]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00685000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00685000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00685000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00685000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ00699000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922475484632021,52.369966667088896],[4.922404858662931,52.37670715790718],[4.936355765251757,52.376761094716606],[4.936424270788476,52.370020593311544],[4.922475484632021,52.369966667088896]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00699000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00699000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00699000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00699000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ00725000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.978270855050775,52.37017250917245],[4.9782087109276,52.376913040402066],[4.99215976415666,52.37696040068631],[4.992219787771885,52.37021986016053],[4.978270855050775,52.37017250917245]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00725000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00725000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00725000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00725000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ00732000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.838866960183662,52.36286816080361],[4.838783641207661,52.36960859061196],[4.852732171843194,52.36967237939424],[4.852813371259659,52.362931937067145],[4.838866960183662,52.36286816080361]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00732000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00732000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00732000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00732000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ00746000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.852813371259659,52.362931937067145],[4.852732171843194,52.36967237939424],[4.866680748038203,52.36973452444315],[4.866759827871651,52.36299406991982],[4.852813371259659,52.362931937067145]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00746000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00746000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00746000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00746000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00763000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00763000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00763000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00763000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 551 511 4.868612 52.37069 \
-gcp 5199 556 4.880188 52.370379 \
-gcp 5328 4082 4.880172 52.365 \
-gcp 678 4623 4.868585 52.364417 \
   ../output/publieke-werken/downloads/DUIZ00763000001.jpg \
   ../output/publieke-werken/1945/28992/warped/DUIZ00763000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866759827871651,52.36299406991982],[4.866680748038203,52.36973452444315],[4.880629368603654,52.36979502574763],[4.880706328831223,52.363054559350616],[4.866759827871651,52.36299406991982]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00763000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00763000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00763000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00763000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00783000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00783000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00783000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00783000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1272 488 4.884292 52.370425 \
-gcp 646 4546 4.882414 52.364273 \
-gcp 5686 4158 4.894967 52.364656 \
-gcp 4564 1176 4.892446 52.369219 \
   ../output/publieke-werken/downloads/DUIZ00783000001.jpg \
   ../output/publieke-werken/1945/28992/warped/DUIZ00783000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880706328831223,52.363054559350616],[4.880629368603654,52.36979502574763],[4.894578032350497,52.36985388329698],[4.894652872949933,52.36311340534883],[4.880706328831223,52.363054559350616]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00783000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00783000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00783000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00783000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00804000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00804000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00804000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00804000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5508 2815 4.907917 52.365865 \
-gcp 615 4273 4.895702 52.363638 \
-gcp 1551 237 4.897998 52.369802 \
   ../output/publieke-werken/downloads/DUIZ00804000001.jpg \
   ../output/publieke-werken/1945/28992/warped/DUIZ00804000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894652872949933,52.36311340534883],[4.894578032350497,52.36985388329698],[4.908526738089654,52.369911097080795],[4.908599459039319,52.36317060790397],[4.894652872949933,52.36311340534883]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00804000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00804000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00804000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00804000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ00081000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.86620568778914,52.41017705512224],[4.866126414072907,52.41691744372869],[4.880089892651725,52.41697802825022],[4.880167041566348,52.410237627744756],[4.86620568778914,52.41017705512224]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00081000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00081000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00081000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00081000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ00094000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894128438658778,52.41029655467496],[4.894053414568123,52.417036966756214],[4.90801697862873,52.417094259236194],[4.908089877873669,52.41035383590237],[4.894128438658778,52.41029655467496]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00094000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00094000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00094000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00094000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00855000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00855000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00855000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00855000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4111 4526 4.946176 52.363343 \
-gcp 4043 3334 4.945988 52.365158 \
-gcp 325 2776 4.936751 52.365993 \
   ../output/publieke-werken/downloads/DUIZ00855000001.jpg \
   ../output/publieke-werken/1945/28992/warped/DUIZ00855000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936492752376134,52.36328008264504],[4.936424270788476,52.370020593311544],[4.950373095369869,52.37007287573915],[4.950439457246515,52.363332354811625],[4.936492752376134,52.36328008264504]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00855000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00855000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00855000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00855000001-warped.tif
    

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
   ../output/publieke-werken/1945/28992/warped/DUIZ00885000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.838950250037817,52.356127721755314],[4.838866960183662,52.36286816080361],[4.852813371259659,52.362931937067145],[4.85289454229496,52.35619148550395],[4.838950250037817,52.356127721755314]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00885000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00885000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00885000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00885000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00916000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00916000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00916000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00916000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4406 3669 4.877817 52.358845 \
-gcp 4683 1620 4.878659 52.361974 \
-gcp 435 1871 4.868022 52.361705 \
   ../output/publieke-werken/downloads/DUIZ00916000001.jpg \
   ../output/publieke-werken/1945/28992/warped/DUIZ00916000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866838880064639,52.35625360616411],[4.866759827871651,52.36299406991982],[4.880706328831223,52.363054559350616],[4.880783262159048,52.35631408372479],[4.866838880064639,52.35625360616411]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00916000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00916000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00916000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00916000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00952000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00952000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00952000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00952000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5143 4337 4.907026 52.356804 \
-gcp 1052 4222 4.896839 52.356951 \
-gcp 1844 379 4.898787 52.362851 \
   ../output/publieke-werken/downloads/DUIZ00952000001.jpg \
   ../output/publieke-werken/1945/28992/warped/DUIZ00952000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894727687390359,52.356372918175296],[4.894652872949933,52.36311340534883],[4.908599459039319,52.36317060790397],[4.908672154570724,52.35643010950521],[4.894727687390359,52.356372918175296]]]}' > ../output/publieke-werken/1945/28992/warped/DUIZ00952000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1945/28992/warped/DUIZ00952000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1945/28992/warped/DUIZ00952000001.vrt \
  ../output/publieke-werken/1945/28992/warped/DUIZ00952000001-warped.tif
    

# =============================================================================================
# Add overviews and create index:
# =============================================================================================

mkdir -p ../output/publieke-werken/1945/28992/index

for j in ../output/publieke-werken/1945/28992/warped/*.tif; do
  gdaladdo -r cubic \
    --config COMPRESS_OVERVIEW JPEG \
    --config PHOTOMETRIC_OVERVIEW YCBCR \
    --config INTERLEAVE_OVERVIEW PIXEL \
    $j 2 4 8 16 32 64 128
done

# Create tile indices
cd ../output/publieke-werken/1945/28992/index
gdaltindex index.shp ../warped/*.tif
ogrinfo -sql "CREATE SPATIAL INDEX ON index" index.shp
    
