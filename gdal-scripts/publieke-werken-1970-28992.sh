#!/bin/bash

# Create the directory that will contain the warped TIFFs:
mkdir -p ../output/publieke-werken/downloads
mkdir -p ../output/publieke-werken/1970/28992/warped
  

# =============================================================================================
# Name: DUIZ01006000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01006000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01006000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01006000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1181 3747 4.95294 52.357898 \
-gcp 4727 4580 4.961808 52.356676 \
-gcp 3922 820 4.959726 52.362468 \
   ../output/publieke-werken/downloads/DUIZ01006000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01006000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.950505795927228,52.35659182467182],[4.950439457246515,52.363332354811625],[4.964386199333477,52.36338298349643],[4.964450419024796,52.35664244342118],[4.950505795927228,52.35659182467182]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01006000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01006000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01006000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01006000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01010000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01010000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01010000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01010000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 3320 3706 4.972236 52.358072 \
-gcp 1036 1666 4.966469 52.361161 \
-gcp 980 1800 4.96633 52.360958 \
   ../output/publieke-werken/downloads/DUIZ01010000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01010000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.964450419024796,52.35664244342118],[4.964386199333477,52.36338298349643],[4.978332977448442,52.363431968690506],[4.9783950781318,52.35669141900221],[4.964450419024796,52.35664244342118]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01010000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01010000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01010000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01010000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01011000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01011000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01011000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01011000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 288 4750 4.978781 52.35647 \
-gcp 240 318 4.97818 52.363179 \
-gcp 5776 4686 4.991913 52.356732 \
   ../output/publieke-werken/downloads/DUIZ01011000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01011000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.9783950781318,52.35669141900221],[4.978332977448442,52.363431968690506],[4.992279790402813,52.36347931038522],[4.992339772060261,52.35673875140638],[4.9783950781318,52.35669141900221]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01011000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01011000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01011000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01011000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01020000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01020000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01020000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01020000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5648 571 4.85254 52.355647 \
-gcp 5186 4580 4.85144 52.349504 \
-gcp 3179 4504 4.846424 52.349609 \
   ../output/publieke-werken/downloads/DUIZ01020000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01020000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.839033510785127,52.349387273513166],[4.838950250037817,52.356127721755314],[4.85289454229496,52.35619148550395],[4.852975684963722,52.34945102475071],[4.839033510785127,52.349387273513166]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01020000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01020000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01020000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01020000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01032000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01032000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01032000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01032000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 943 326 4.854745 52.356015 \
-gcp 5647 1194 4.866509 52.354721 \
-gcp 4436 4470 4.863532 52.349704 \
   ../output/publieke-werken/downloads/DUIZ01032000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01032000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.852975684963722,52.34945102475071],[4.85289454229496,52.35619148550395],[4.866838880064639,52.35625360616411],[4.866917904631408,52.34951313322205],[4.852975684963722,52.34945102475071]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01032000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01032000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01032000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01032000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01047000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01047000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01047000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01047000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4416 392 4.877318 52.356014 \
-gcp 3037 4094 4.873939 52.350333 \
-gcp 1026 1079 4.868885 52.354923 \
   ../output/publieke-werken/downloads/DUIZ01047000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01047000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866917904631408,52.34951313322205],[4.866838880064639,52.35625360616411],[4.880783262159048,52.35631408372479],[4.880860168600993,52.34957359891624],[4.866917904631408,52.34951313322205]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01047000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01047000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01047000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01047000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01059000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01059000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01059000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01059000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 342 446 4.88102 52.355955 \
-gcp 4904 474 4.892387 52.355991 \
-gcp 5162 3976 4.893138 52.350654 \
   ../output/publieke-werken/downloads/DUIZ01059000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01059000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880860168600993,52.34957359891624],[4.880783262159048,52.35631408372479],[4.894727687390359,52.356372918175296],[4.894802475685259,52.34963242182259],[4.880860168600993,52.34957359891624]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01059000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01059000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01059000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01059000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01073000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01073000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01073000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01073000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4500 967 4.905444 52.355261 \
-gcp 1360 455 4.897612 52.356027 \
-gcp 5229 4489 4.907316 52.349874 \
   ../output/publieke-werken/downloads/DUIZ01073000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01073000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894802475685259,52.34963242182259],[4.894727687390359,52.356372918175296],[4.908672154570724,52.35643010950521],[4.908744824696965,52.3496896019307],[4.894802475685259,52.34963242182259]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01073000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01073000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01073000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01073000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01086000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01086000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01086000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01086000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4424 744 4.919279 52.355657 \
-gcp 5618 806 4.922197 52.355565 \
-gcp 5418 2144 4.921693 52.353501 \
-gcp 5404 2946 4.921693 52.352296 \
-gcp 3064 3815 4.915883 52.350968 \
-gcp 2450 4323 4.914311 52.350139 \
-gcp 618 4523 4.909768 52.349841 \
-gcp 1191 3128 4.911216 52.351961 \
-gcp 275 1583 4.908888 52.35433 \
-gcp 1086 236 4.910894 52.356375 \
   ../output/publieke-werken/downloads/DUIZ01086000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01086000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908744824696965,52.3496896019307],[4.908672154570724,52.35643010950521],[4.922616662512259,52.35648565770449],[4.922687214448847,52.34974513923046],[4.908744824696965,52.3496896019307]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01086000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01086000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01086000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01086000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01099000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01099000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01099000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01099000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 554 631 4.923447 52.355841 \
-gcp 1072 3788 4.924772 52.351041 \
-gcp 5658 4225 4.936246 52.350431 \
-gcp 5227 442 4.935093 52.356198 \
   ../output/publieke-werken/downloads/DUIZ01099000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01099000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922687214448847,52.34974513923046],[4.922616662512259,52.35648565770449],[4.93656121002707,52.35653956276317],[4.936629643753616,52.34979903371198],[4.922687214448847,52.34974513923046]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01099000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01099000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01099000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01099000001-warped.tif
    

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
   ../output/publieke-werken/1970/28992/warped/DUIZ00101000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922051358018237,52.410409471416834],[4.921980583640138,52.41714990568002],[4.935944228408925,52.41720390607779],[4.936012877899669,52.41046346120851],[4.922051358018237,52.410409471416834]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00101000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00101000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00101000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00101000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00109000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00109000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00109000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00109000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4646 3478 4.947131 52.412459 \
-gcp 1744 3112 4.939899 52.412969 \
-gcp 4552 4496 4.946852 52.410875 \
-gcp 5564 3868 4.949459 52.411844 \
   ../output/publieke-werken/downloads/DUIZ00109000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00109000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936012877899669,52.41046346120851],[4.935944228408925,52.41720390607779],[4.949907911741644,52.41725626042006],[4.949974436325135,52.410515805267856],[4.936012877899669,52.41046346120851]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00109000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00109000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00109000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00109000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00116000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00116000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00116000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00116000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 2032 4680 4.968224 52.410378 \
-gcp 2872 3704 4.970284 52.412413 \
-gcp 352 296 4.963417 52.417445 \
-gcp 5936 327 4.978352 52.417347 \
   ../output/publieke-werken/downloads/DUIZ00116000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00116000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.963936032101777,52.41056650358553],[4.963871632444818,52.417306968697375],[4.977835389324959,52.41735603090087],[4.97789766403672,52.41061555615256],[4.963936032101777,52.41056650358553]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00116000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00116000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00116000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00116000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00121000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00121000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00121000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00121000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 857 2710 5.021423 52.413679 \
-gcp 4402 2733 5.030252 52.41365 \
-gcp 1264 1782 5.022431 52.415113 \
   ../output/publieke-werken/downloads/DUIZ00121000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00121000001.vrt

echo '{"type":"Polygon","coordinates":[[[5.019782764862297,52.41075283926442],[5.019726865091966,52.417493340982475],[5.033690754744656,52.41753581880641],[5.033744529501285,52.4107953087449],[5.019782764862297,52.41075283926442]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00121000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00121000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00121000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00121000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00126000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00126000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00126000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00126000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4436 428 4.848565 52.4099 \
-gcp 4790 1282 4.849455 52.408611 \
-gcp 1424 1568 4.841065 52.408179 \
   ../output/publieke-werken/downloads/DUIZ00126000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00126000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.838366608974079,52.403310599442186],[4.838283114951327,52.41005097284346],[4.852244378519897,52.41011483681815],[4.852325748530966,52.40337445087526],[4.838366608974079,52.403310599442186]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00126000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00126000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00126000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00126000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00140000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00140000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00140000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00140000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1730 332 4.856043 52.409936 \
-gcp 593 585 4.85321 52.409543 \
-gcp 1083 1328 4.854493 52.408398 \
-gcp 5172 1992 4.864551 52.407472 \
-gcp 1882 3380 4.856429 52.405273 \
   ../output/publieke-werken/downloads/DUIZ00140000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00140000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.852325748530966,52.40337445087526],[4.852244378519897,52.41011483681815],[4.86620568778914,52.41017705512224],[4.866284933764953,52.403436656960906],[4.852325748530966,52.40337445087526]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00140000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00140000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00140000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00140000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00148000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00148000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00148000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00148000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 2362 3112 4.871616 52.405773 \
-gcp 2118 1536 4.871026 52.408153 \
-gcp 448 2658 4.866858 52.406464 \
   ../output/publieke-werken/downloads/DUIZ00148000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00148000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866284933764953,52.403436656960906],[4.86620568778914,52.41017705512224],[4.880167041566348,52.410237627744756],[4.880244163483944,52.40349721768803],[4.866284933764953,52.403436656960906]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00148000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00148000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00148000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00148000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00154000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00154000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00154000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00154000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4784 550 4.891587 52.409753 \
-gcp 3293 235 4.887881 52.410217 \
-gcp 4372 1067 4.890574 52.408948 \
   ../output/publieke-werken/downloads/DUIZ00154000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00154000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880244163483944,52.40349721768803],[4.880167041566348,52.410237627744756],[4.894128438658778,52.41029655467496],[4.894203436495817,52.403556133045946],[4.880244163483944,52.40349721768803]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00154000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00154000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00154000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00154000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00159000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00159000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00159000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00159000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5163 271 4.90656 52.410227 \
-gcp 700 4516 4.895573 52.403636 \
-gcp 204 384 4.894173 52.410011 \
   ../output/publieke-werken/downloads/DUIZ00159000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00159000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894203436495817,52.403556133045946],[4.894128438658778,52.41029655467496],[4.908089877873669,52.41035383590237],[4.908162751608423,52.40361340302422],[4.894203436495817,52.403556133045946]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00159000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00159000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00159000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00159000001-warped.tif
    

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
   ../output/publieke-werken/1970/28992/warped/DUIZ00162000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908162751608423,52.40361340302422],[4.908089877873669,52.41035383590237],[4.922051358018237,52.410409471416834],[4.92212210762959,52.4036690276127],[4.908162751608423,52.40361340302422]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00162000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00162000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00162000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00162000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00169000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00169000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00169000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00169000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1958 2886 4.926478 52.406307 \
-gcp 2592 800 4.927926 52.409426 \
-gcp 3924 2460 4.931295 52.406981 \
   ../output/publieke-werken/downloads/DUIZ00169000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00169000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.92212210762959,52.4036690276127],[4.922051358018237,52.410409471416834],[4.936012877899669,52.41046346120851],[4.936081503367124,52.403723006801485],[4.92212210762959,52.4036690276127]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00169000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00169000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00169000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00169000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00175000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00175000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00175000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00175000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4443 639 4.946584 52.409822 \
-gcp 5696 484 4.949722 52.410067 \
-gcp 5689 2042 4.949802 52.407694 \
   ../output/publieke-werken/downloads/DUIZ00175000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00175000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936081503367124,52.403723006801485],[4.936012877899669,52.41046346120851],[4.949974436325135,52.410515805267856],[4.950040937628804,52.403775340581014],[4.936081503367124,52.403723006801485]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00175000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00175000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00175000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00175000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00181000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00181000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00181000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00181000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 3696 720 4.958375 52.410038 \
-gcp 4952 680 4.961486 52.409985 \
-gcp 4776 4376 4.961121 52.404343 \
-gcp 3256 3088 4.95698 52.406307 \
   ../output/publieke-werken/downloads/DUIZ00181000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00181000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.950040937628804,52.403775340581014],[4.949974436325135,52.410515805267856],[4.963936032101777,52.41056650358553],[4.964000409222397,52.40382602894209],[4.950040937628804,52.403775340581014]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00181000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00181000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00181000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00181000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00188000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00188000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00188000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00188000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5796 204 4.977897 52.410616 \
-gcp 204 196 4.963935 52.410567 \
-gcp 1690 2874 4.96773 52.406484 \
-gcp 4778 4233 4.975401 52.404459 \
   ../output/publieke-werken/downloads/DUIZ00188000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00188000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.964000409222397,52.40382602894209],[4.963936032101777,52.41056650358553],[4.97789766403672,52.41061555615256],[4.977959916955641,52.40387507187561],[4.964000409222397,52.40382602894209]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00188000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00188000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00188000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00188000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00197000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00197000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00197000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00197000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 320 4704 4.838317 52.39657 \
-gcp 344 296 4.838366 52.403311 \
-gcp 5920 304 4.852325 52.403375 \
   ../output/publieke-werken/downloads/DUIZ00197000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00197000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.838450073784739,52.39657021652458],[4.838366608974079,52.403310599442186],[4.852325748530966,52.40337445087526],[4.852407090072926,52.39663405541986],[4.838450073784739,52.39657021652458]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00197000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00197000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00197000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00197000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01107000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01107000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01107000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01107000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5045 2737 4.948633 52.352708 \
-gcp 2358 1344 4.941959 52.354815 \
-gcp 1024 222 4.938601 52.356499 \
-gcp 306 336 4.936815 52.356312 \
-gcp 500 1672 4.93733 52.354278 \
-gcp 870 1976 4.938269 52.353829 \
-gcp 378 2672 4.937046 52.352748 \
-gcp 235 4386 4.93674 52.350153 \
-gcp 2358 3726 4.941997 52.351198 \
-gcp 1800 2514 4.940591 52.353023 \
   ../output/publieke-werken/downloads/DUIZ01107000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01107000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936629643753616,52.34979903371198],[4.93656121002707,52.35653956276317],[4.950505795927228,52.35659182467182],[4.950572111423964,52.349851285365865],[4.936629643753616,52.34979903371198]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01107000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01107000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01107000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01107000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01113000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01113000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01113000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01113000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 206 4593 4.950572 52.349852 \
-gcp 222 195 4.950505 52.356593 \
-gcp 5777 4617 4.964514 52.349903 \
   ../output/publieke-werken/downloads/DUIZ01113000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01113000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.950572111423964,52.349851285365865],[4.950505795927228,52.35659182467182],[4.964450419024796,52.35664244342118],[4.964514616272554,52.349901894182715],[4.950572111423964,52.349851285365865]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01113000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01113000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01113000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01113000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01118000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01118000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01118000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01118000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 247 4645 4.964514 52.349903 \
-gcp 5802 4614 4.978457 52.349952 \
-gcp 221 244 4.96445 52.356643 \
   ../output/publieke-werken/downloads/DUIZ01118000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01118000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.964514616272554,52.349901894182715],[4.964450419024796,52.35664244342118],[4.9783950781318,52.35669141900221],[4.978457157112035,52.34995086015371],[4.964514616272554,52.349901894182715]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01118000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01118000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01118000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01118000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01120000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01120000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01120000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01120000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 224 224 4.978395 52.356692 \
-gcp 221 4643 4.978457 52.349952 \
-gcp 5802 4631 4.992399 52.349999 \
   ../output/publieke-werken/downloads/DUIZ01120000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01120000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.978457157112035,52.34995086015371],[4.9783950781318,52.35669141900221],[4.992339772060261,52.35673875140638],[4.992399732755033,52.349998183270145],[4.978457157112035,52.34995086015371]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01120000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01120000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01120000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01120000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01133000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01133000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01133000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01133000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4057 2050 4.848656 52.346604 \
-gcp 1566 834 4.842428 52.348449 \
-gcp 5503 440 4.852266 52.349081 \
   ../output/publieke-werken/downloads/DUIZ01133000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01133000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.839116742440587,52.34264681612326],[4.839033510785127,52.349387273513166],[4.852975684963722,52.34945102475071],[4.853056799280559,52.34271055485344],[4.839116742440587,52.34264681612326]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01133000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01133000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01133000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01133000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01146000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01146000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01146000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01146000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1906 2342 4.857244 52.346181 \
-gcp 2668 2560 4.859149 52.34587 \
-gcp 2113 4364 4.857824 52.343104 \
-gcp 5662 3682 4.866654 52.344205 \
-gcp 5768 2411 4.866922 52.346135 \
-gcp 4937 515 4.864744 52.349052 \
-gcp 5205 1373 4.865474 52.347724 \
-gcp 3338 742 4.860796 52.348662 \
-gcp 2230 962 4.858044 52.348295 \
-gcp 1034 256 4.855013 52.349379 \
-gcp 1593 1339 4.856456 52.347708 \
-gcp 4080 1450 4.862582 52.347603 \
   ../output/publieke-werken/downloads/DUIZ01146000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01146000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.853056799280559,52.34271055485344],[4.852975684963722,52.34945102475071],[4.866917904631408,52.34951313322205],[4.866996901586189,52.34277265113968],[4.853056799280559,52.34271055485344]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01146000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01146000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01146000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01146000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01157000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01157000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01157000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01157000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 926 1990 4.868719 52.346787 \
-gcp 501 665 4.867609 52.348822 \
-gcp 2217 580 4.871889 52.34897 \
-gcp 5170 593 4.879265 52.349009 \
-gcp 5751 598 4.880735 52.348999 \
-gcp 5672 1478 4.880558 52.347646 \
-gcp 5692 2283 4.880623 52.346414 \
-gcp 4226 3854 4.877018 52.343985 \
-gcp 2358 3832 4.872361 52.343985 \
-gcp 1218 3918 4.869518 52.343834 \
-gcp 3450 2526 4.875017 52.346001 \
   ../output/publieke-werken/downloads/DUIZ01157000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01157000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866996901586189,52.34277265113968],[4.866917904631408,52.34951313322205],[4.880860168600993,52.34957359891624],[4.880937048170904,52.342833104971],[4.866996901586189,52.34277265113968]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01157000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01157000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01157000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01157000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01168000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01168000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01168000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01168000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 496 344 4.881567 52.349405 \
-gcp 4295 934 4.891062 52.348527 \
-gcp 5501 4448 4.89412 52.343169 \
-gcp 866 2620 4.882548 52.345932 \
   ../output/publieke-werken/downloads/DUIZ01168000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01168000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880937048170904,52.342833104971],[4.880860168600993,52.34957359891624],[4.894802475685259,52.34963242182259],[4.894877237848093,52.34289191633672],[4.880937048170904,52.342833104971]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01168000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01168000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01168000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01168000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01179000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01179000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01179000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01179000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 224 200 4.894802 52.349633 \
-gcp 5800 232 4.908744 52.34969 \
-gcp 5788 4620 4.908817 52.34295 \
   ../output/publieke-werken/downloads/DUIZ01179000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01179000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894877237848093,52.34289191633672],[4.894802475685259,52.34963242182259],[4.908744824696965,52.3496896019307],[4.908817469431128,52.34294908522637],[4.894877237848093,52.34289191633672]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01179000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01179000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01179000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01179000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01194000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01194000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01194000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01194000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 3853 2022 4.917862 52.346931 \
-gcp 3322 216 4.916511 52.349707 \
-gcp 3983 489 4.918174 52.349294 \
-gcp 5284 458 4.921414 52.34932 \
-gcp 5723 2885 4.922529 52.345627 \
-gcp 5574 4310 4.922186 52.343467 \
-gcp 4500 3462 4.919493 52.344742 \
-gcp 1643 3473 4.912369 52.3447 \
-gcp 387 4538 4.909236 52.343055 \
-gcp 1160 2087 4.911146 52.346804 \
-gcp 1030 1481 4.910819 52.347731 \
-gcp 295 375 4.908974 52.349435 \
-gcp 1817 377 4.912777 52.349441 \
   ../output/publieke-werken/downloads/DUIZ01194000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01194000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908817469431128,52.34294908522637],[4.908744824696965,52.3496896019307],[4.922687214448847,52.34974513923046],[4.922757741733357,52.343004611629944],[4.908817469431128,52.34294908522637]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01194000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01194000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01194000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01194000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01202000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01202000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01202000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01202000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5778 209 4.93663 52.3498 \
-gcp 5792 4611 4.9367 52.34306 \
-gcp 209 4628 4.92276 52.34301 \
-gcp 473 405 4.92338 52.349451 \
   ../output/publieke-werken/downloads/DUIZ01202000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01202000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922757741733357,52.343004611629944],[4.922687214448847,52.34974513923046],[4.936629643753616,52.34979903371198],[4.9366980535681,52.34305849553758],[4.922757741733357,52.343004611629944]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01202000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01202000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01202000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01202000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01210000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01210000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01210000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01210000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 670 414 4.93785 52.349523 \
-gcp 2967 933 4.943596 52.34873 \
-gcp 4227 4491 4.946766 52.343294 \
   ../output/publieke-werken/downloads/DUIZ01210000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01210000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.9366980535681,52.34305849553758],[4.936629643753616,52.34979903371198],[4.950572111423964,52.349851285365865],[4.95063840374866,52.343110736939735],[4.9366980535681,52.34305849553758]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01210000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01210000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01210000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01210000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01217000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01217000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01217000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01217000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 212 220 4.950572 52.349852 \
-gcp 5790 208 4.964514 52.349903 \
-gcp 5796 4592 4.964578 52.343162 \
   ../output/publieke-werken/downloads/DUIZ01217000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01217000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.95063840374866,52.343110736939735],[4.950572111423964,52.349851285365865],[4.964514616272554,52.349901894182715],[4.964578791088315,52.34316133582718],[4.95063840374866,52.343110736939735]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01217000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01217000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01217000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01217000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01223000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01223000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01223000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01223000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 276 260 4.992399 52.349999 \
-gcp 5852 274 5.006342 52.350045 \
-gcp 5846 4696 5.0064 52.343304 \
   ../output/publieke-werken/downloads/DUIZ01223000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01223000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.992459672497925,52.34325760602248],[4.992399732755033,52.349998183270145],[5.006342342014151,52.350043863523624],[5.00640016419433,52.34330327731332],[4.992459672497925,52.34325760602248]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01223000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01223000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01223000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01223000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01226000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01226000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01226000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01226000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 226 254 5.006342 52.350045 \
-gcp 5824 232 5.020285 52.350089 \
-gcp 5840 4642 5.02034 52.343348 \
   ../output/publieke-werken/downloads/DUIZ01226000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01226000001.vrt

echo '{"type":"Polygon","coordinates":[[[5.00640016419433,52.34330327731332],[5.006342342014151,52.350043863523624],[5.020284983701979,52.35008790090608],[5.020340688302744,52.3433473060554],[5.00640016419433,52.34330327731332]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01226000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01226000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01226000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01226000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01236000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01236000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01236000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01236000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4888 1599 4.850796 52.34057 \
-gcp 3328 3092 4.846939 52.33826 \
-gcp 2374 480 4.844509 52.342245 \
   ../output/publieke-werken/downloads/DUIZ01236000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01236000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.83919994501918,52.335906349631614],[4.839116742440587,52.34264681612326],[4.853056799280559,52.34271055485344],[4.85313788526007,52.3359700758583],[4.83919994501918,52.335906349631614]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01236000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01236000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01236000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01236000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01249000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01249000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01249000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01249000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 332 210 4.853056 52.342711 \
-gcp 5910 220 4.866996 52.342773 \
-gcp 5916 4608 4.867075 52.336033 \
   ../output/publieke-werken/downloads/DUIZ01249000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01249000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.85313788526007,52.3359700758583],[4.853056799280559,52.34271055485344],[4.866996901586189,52.34277265113968],[4.867075870943207,52.33603215996313],[4.85313788526007,52.3359700758583]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01249000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01249000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01249000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01249000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01259000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01259000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01259000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01259000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5928 264 4.881577 52.34234 \
-gcp 1246 4388 4.868832 52.335785 \
-gcp 5928 4624 4.881492 52.335523 \
   ../output/publieke-werken/downloads/DUIZ01259000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01259000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.867075870943207,52.33603215996313],[4.866996901586189,52.34277265113968],[4.880937048170904,52.342833104971],[4.881013900882621,52.33609260193514],[4.867075870943207,52.33603215996313]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01259000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01259000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01259000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01259000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01268000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01268000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01268000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01268000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5493 236 4.894103 52.342874 \
-gcp 3004 4521 4.887999 52.336254 \
-gcp 2690 660 4.887108 52.342173 \
   ../output/publieke-werken/downloads/DUIZ01268000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01268000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.881013900882621,52.33609260193514],[4.880937048170904,52.342833104971],[4.894877237848093,52.34289191633672],[4.894951973892326,52.336151401763736],[4.881013900882621,52.33609260193514]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01268000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01268000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01268000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01268000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01278000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01278000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01278000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01278000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 445 2004 4.895493 52.340138 \
-gcp 3954 4171 4.904296 52.336873 \
-gcp 4995 353 4.906785 52.342746 \
   ../output/publieke-werken/downloads/DUIZ01278000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01278000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894951973892326,52.336151401763736],[4.894877237848093,52.34289191633672],[4.908817469431128,52.34294908522637],[4.908890088786293,52.33620855943839],[4.894951973892326,52.336151401763736]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01278000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01278000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01278000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01278000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01288000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01288000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01288000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01288000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 436 322 4.909381 52.342789 \
-gcp 4297 414 4.919005 52.342665 \
-gcp 3305 2917 4.91657 52.338833 \
   ../output/publieke-werken/downloads/DUIZ01288000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01288000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908890088786293,52.33620855943839],[4.908817469431128,52.34294908522637],[4.922757741733357,52.343004611629944],[4.922828244378485,52.33626407494904],[4.908890088786293,52.33620855943839]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01288000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01288000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01288000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01288000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01298000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01298000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01298000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01298000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 303 640 4.923012 52.34236 \
-gcp 5340 3764 4.935608 52.337597 \
-gcp 2431 279 4.928334 52.342927 \
   ../output/publieke-werken/downloads/DUIZ01298000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01298000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922828244378485,52.33626407494904],[4.922757741733357,52.343004611629944],[4.9366980535681,52.34305849553758],[4.936766439482835,52.336317948285966],[4.922828244378485,52.33626407494904]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01298000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01298000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01298000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01298000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01305000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01305000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01305000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01305000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4520 340 4.947447 52.342904 \
-gcp 5718 1932 4.950467 52.340492 \
-gcp 1217 2311 4.93924 52.339852 \
-gcp 3007 3321 4.943746 52.338332 \
   ../output/publieke-werken/downloads/DUIZ01305000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01305000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936766439482835,52.336317948285966],[4.9366980535681,52.34305849553758],[4.95063840374866,52.343110736939735],[4.950704672913256,52.336370179439555],[4.936766439482835,52.336317948285966]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01305000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01305000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01305000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01305000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01309000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01309000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01309000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01309000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 248 1825 4.950768 52.340629 \
-gcp 3817 554 4.959651 52.342609 \
-gcp 3842 3610 4.959732 52.337925 \
   ../output/publieke-werken/downloads/DUIZ01309000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01309000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.950704672913256,52.336370179439555],[4.95063840374866,52.343110736939735],[4.964578791088315,52.34316133582718],[4.964642943483637,52.33642076840057],[4.950704672913256,52.336370179439555]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01309000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01309000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01309000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01309000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01313000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01313000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01313000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01313000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 384 319 4.993029 52.343179 \
-gcp 5992 271 5.007405 52.343336 \
-gcp 6032 4704 5.008006 52.336152 \
   ../output/publieke-werken/downloads/DUIZ01313000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01313000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.992519591299728,52.33651701970952],[4.992459672497925,52.34325760602248],[5.00640016419433,52.34330327731332],[5.006457966173121,52.33656268204044],[4.992519591299728,52.33651701970952]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01313000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01313000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01313000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01313000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01322000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01322000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01322000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01322000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5386 674 4.852159 52.335224 \
-gcp 4019 904 4.848742 52.334897 \
-gcp 1423 1372 4.842272 52.334123 \
-gcp 1795 4180 4.843254 52.329825 \
   ../output/publieke-werken/downloads/DUIZ01322000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01322000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.839283118535881,52.32916587408433],[4.83919994501918,52.335906349631614],[4.85313788526007,52.3359700758583],[4.853218942916848,52.32922958781129],[4.839283118535881,52.32916587408433]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01322000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01322000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01322000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01322000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01330000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01330000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01330000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01330000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5624 2129 4.866664 52.332987 \
-gcp 2060 4533 4.857802 52.329276 \
-gcp 1514 231 4.856375 52.335822 \
   ../output/publieke-werken/downloads/DUIZ01330000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01330000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.853218942916848,52.32922958781129],[4.85313788526007,52.3359700758583],[4.867075870943207,52.33603215996313],[4.867154812716668,52.32929165973841],[4.853218942916848,52.32922958781129]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01330000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01330000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01330000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01330000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01339000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01339000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01339000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01339000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 214 4624 4.88109 52.329353 \
-gcp 5801 4604 4.895026 52.329412 \
-gcp 208 214 4.881013 52.336093 \
   ../output/publieke-werken/downloads/DUIZ01339000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01339000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.88109072674998,52.329352089854716],[4.881013900882621,52.33609260193514],[4.894951973892326,52.336151401763736],[4.895026683831403,52.32941087814966],[4.88109072674998,52.329352089854716]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01339000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01339000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01339000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01339000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01347000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01347000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01347000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01347000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4670 509 4.90565 52.335978 \
-gcp 574 490 4.89552 52.335909 \
-gcp 1573 4098 4.898022 52.330455 \
   ../output/publieke-werken/downloads/DUIZ01347000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01347000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.895026683831403,52.32941087814966],[4.894951973892326,52.336151401763736],[4.908890088786293,52.33620855943839],[4.908962682775527,52.329468024612694],[4.895026683831403,52.32941087814966]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01347000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01347000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01347000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01347000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01350000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01350000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01350000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01350000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 228 4642 4.908962 52.329469 \
-gcp 5805 4620 4.922898 52.329524 \
-gcp 216 235 4.90889 52.336209 \
   ../output/publieke-werken/downloads/DUIZ01350000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01350000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908962682775527,52.329468024612694],[4.908890088786293,52.33620855943839],[4.922828244378485,52.33626407494904],[4.922898722396922,52.329523529233846],[4.908962682775527,52.329468024612694]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01350000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01350000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01350000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01350000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01355000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01355000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01355000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01355000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 248 247 4.918613 52.339902 \
-gcp 5768 271 4.932861 52.339902 \
-gcp 3352 4647 4.926596 52.333136 \
   ../output/publieke-werken/downloads/DUIZ01355000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01355000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922898722396922,52.329523529233846],[4.922828244378485,52.33626407494904],[4.936766439482835,52.336317948285966],[4.93683480151013,52.32957739200323],[4.922898722396922,52.329523529233846]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01355000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01355000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01355000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01355000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01359000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01359000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01359000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01359000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 834 1083 4.938322 52.335015 \
-gcp 2796 1154 4.943239 52.334906 \
-gcp 1415 4375 4.939803 52.329979 \
   ../output/publieke-werken/downloads/DUIZ01359000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01359000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.93683480151013,52.32957739200323],[4.936766439482835,52.336317948285966],[4.950704672913256,52.336370179439555],[4.950770918929674,52.32962961291134],[4.93683480151013,52.32957739200323]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01359000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01359000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01359000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01359000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01364000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01364000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01364000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01364000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 352 327 4.963846 52.337017 \
-gcp 5888 352 4.978523 52.337017 \
-gcp 5904 4727 4.979124 52.329255 \
   ../output/publieke-werken/downloads/DUIZ01364000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01364000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.964707073470058,52.32968019194897],[4.964642943483637,52.33642076840057],[4.978581250007844,52.33646971516012],[4.978643263945758,52.329729129107186],[4.964707073470058,52.32968019194897]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01364000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01364000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01364000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01364000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01367000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01367000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01367000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01367000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 352 359 4.978137 52.335447 \
-gcp 5848 287 4.992857 52.335578 \
-gcp 5928 4719 4.993329 52.328209 \
   ../output/publieke-werken/downloads/DUIZ01367000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01367000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.978643263945758,52.329729129107186],[4.978581250007844,52.33646971516012],[4.992519591299728,52.33651701970952],[4.992579489171233,52.32977642437731],[4.978643263945758,52.329729129107186]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01367000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01367000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01367000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01367000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01380000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01380000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01380000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01380000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1798 411 4.857084 52.328957 \
-gcp 1770 4166 4.857116 52.323216 \
-gcp 5814 4634 4.867233 52.322552 \
   ../output/publieke-werken/downloads/DUIZ01380000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01380000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.853299972265478,52.322489090758516],[4.853218942916848,52.32922958781129],[4.867154812716668,52.32929165973841],[4.867233726920776,52.32255115051162],[4.853299972265478,52.322489090758516]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01380000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01380000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01380000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01380000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01409000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01409000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01409000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01409000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 347 4721 4.92297 52.32279 \
-gcp 333 323 4.9229 52.32953 \
-gcp 5912 312 4.93684 52.32958 \
   ../output/publieke-werken/downloads/DUIZ01409000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01409000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922969175801345,52.32278297453035],[4.922898722396922,52.329523529233846],[4.93683480151013,52.32957739200323],[4.936903139662282,52.32283682673543],[4.922969175801345,52.32278297453035]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01409000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01409000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01409000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01409000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01416000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01416000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01416000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01416000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5904 4673 4.963975 52.321806 \
-gcp 5856 337 4.963775 52.33025 \
-gcp 2464 4721 4.950199 52.32157 \
   ../output/publieke-werken/downloads/DUIZ01416000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01416000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.950837141809837,52.322889037401204],[4.950770918929674,52.32962961291134],[4.964707073470058,52.32968019194897],[4.964771181059121,52.32293960651844],[4.950837141809837,52.322889037401204]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01416000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01416000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01416000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01416000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01420000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01420000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01420000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01420000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 360 335 4.963932 52.329838 \
-gcp 368 4711 4.964447 52.322016 \
-gcp 5944 399 4.97921 52.329733 \
   ../output/publieke-werken/downloads/DUIZ01420000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01420000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.964771181059121,52.32293960651844],[4.964707073470058,52.32968019194897],[4.978643263945758,52.329729129107186],[4.978705256225223,52.32298853407818],[4.964771181059121,52.32293960651844]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01420000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01420000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01420000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01420000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01423000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01423000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01423000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01423000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 616 1416 4.976978 52.331038 \
-gcp 6072 280 4.991226 52.332926 \
-gcp 5488 4343 4.990196 52.325793 \
   ../output/publieke-werken/downloads/DUIZ01423000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01423000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.978705256225223,52.32298853407818],[4.978643263945758,52.329729129107186],[4.992579489171233,52.32977642437731],[4.99263936612321,52.323035820071894],[4.978705256225223,52.32298853407818]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01423000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01423000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01423000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01423000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01452000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01452000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01452000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01452000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5736 4707 4.923039 52.316043 \
-gcp 136 323 4.909035 52.322728 \
-gcp 156 4735 4.909107 52.315988 \
   ../output/publieke-werken/downloads/DUIZ01452000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01452000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.909107794708438,52.31598692803279],[4.909035251411892,52.322727480795486],[4.922969175801345,52.32278297453035],[4.923039604604426,52.31604241088469],[4.909107794708438,52.31598692803279]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01452000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01452000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01452000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01452000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01456000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01456000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01456000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01456000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5908 4744 4.93711 52.316061 \
-gcp 5928 377 4.936852 52.322776 \
-gcp 368 4609 4.923102 52.316139 \
   ../output/publieke-werken/downloads/DUIZ01456000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01456000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.923039604604426,52.31604241088469],[4.922969175801345,52.32278297453035],[4.936903139662282,52.32283682673543],[4.936971453951585,52.31609625252865],[4.923039604604426,52.31604241088469]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01456000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01456000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01456000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01456000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01458000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01458000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01458000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01458000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 301 4709 4.936971 52.316097 \
-gcp 5884 4720 4.950903 52.316149 \
-gcp 320 304 4.936903 52.322838 \
   ../output/publieke-werken/downloads/DUIZ01458000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01458000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936971453951585,52.31609625252865],[4.936903139662282,52.32283682673543],[4.950837141809837,52.322889037401204],[4.950903341565653,52.31614845295516],[4.936971453951585,52.31609625252865]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01458000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01458000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01458000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01458000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01462000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01462000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01462000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01462000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5928 328 4.963932 52.324009 \
-gcp 352 320 4.950371 52.32359 \
-gcp 5896 4712 4.964447 52.317451 \
   ../output/publieke-werken/downloads/DUIZ01462000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01462000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.950903341565653,52.31614845295516],[4.950837141809837,52.322889037401204],[4.964771181059121,52.32293960651844],[4.964835266262355,52.316199012155025],[4.950903341565653,52.31614845295516]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01462000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01462000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01462000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01462000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01470000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01470000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01470000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01470000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 3120 4540 4.998178 52.316599 \
-gcp 2514 2470 4.996671 52.319753 \
-gcp 1631 2666 4.994461 52.319458 \
   ../output/publieke-werken/downloads/DUIZ01470000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01470000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.992699222166431,52.31629520683928],[4.99263936612321,52.323035820071894],[5.006573509568134,52.32308146449107],[5.006631251005145,52.316340842306715],[4.992699222166431,52.31629520683928]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01470000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01470000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01470000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01470000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01475000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01475000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01475000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01475000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 240 304 4.854584 52.31551 \
-gcp 320 4672 4.855099 52.307324 \
-gcp 5872 345 4.870548 52.315825 \
   ../output/publieke-werken/downloads/DUIZ01475000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01475000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.853461946096564,52.30900806981998],[4.853380973320529,52.315748584746075],[4.867312613569721,52.315810632328834],[4.867391472677689,52.30907010523614],[4.853461946096564,52.30900806981998]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01475000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01475000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01475000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01475000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01480000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01480000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01480000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01480000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 200 271 4.935608 52.315484 \
-gcp 5856 367 4.951229 52.315746 \
-gcp 5928 4664 4.951873 52.308584 \
   ../output/publieke-werken/downloads/DUIZ01480000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01480000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.937039744390318,52.30935566942894],[4.936971453951585,52.31609625252865],[4.950903341565653,52.31614845295516],[4.950969518209026,52.30940785961932],[4.937039744390318,52.30935566942894]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01480000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01480000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01480000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01480000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01489000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01489000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01489000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01489000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5908 4712 4.978995 52.309607 \
-gcp 5896 337 4.978824 52.316428 \
-gcp 384 337 4.965391 52.316166 \
   ../output/publieke-werken/downloads/DUIZ01489000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01489000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.964899329091282,52.3094584089048],[4.964835266262355,52.316199012155025],[4.978767226857388,52.31624793011928],[4.978829175853397,52.309507317276456],[4.964899329091282,52.3094584089048]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01489000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01489000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01489000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01489000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01492000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01492000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01492000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01492000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5840 384 4.992557 52.316455 \
-gcp 352 4688 4.978931 52.309423 \
-gcp 400 417 4.978888 52.316232 \
   ../output/publieke-werken/downloads/DUIZ01492000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01492000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.978829175853397,52.309507317276456],[4.978767226857388,52.31624793011928],[4.992699222166431,52.31629520683928],[4.992759057311657,52.309554584725625],[4.978829175853397,52.309507317276456]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01492000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01492000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01492000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01492000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01497000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01497000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01497000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01497000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4804 3928 5.003736 52.310971 \
-gcp 1496 1756 4.995486 52.314238 \
-gcp 5016 744 5.004187 52.315786 \
   ../output/publieke-werken/downloads/DUIZ01497000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01497000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.992759057311657,52.309554584725625],[4.992699222166431,52.31629520683928],[5.006631251005145,52.316340842306715],[5.006688972282333,52.309600211243996],[4.992759057311657,52.309554584725625]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01497000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01497000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01497000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01497000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01508000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01508000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01508000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01508000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 350 275 4.950969 52.309409 \
-gcp 326 4677 4.951035 52.302668 \
-gcp 5905 4698 4.964963 52.302718 \
   ../output/publieke-werken/downloads/DUIZ01508000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01508000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.951035671751844,52.302667257439694],[4.950969518209026,52.30940785961932],[4.964899329091282,52.3094584089048],[4.964963369557415,52.30271779681381],[4.951035671751844,52.302667257439694]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01508000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01508000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01508000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01508000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01515000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01515000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01515000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01515000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5888 369 4.978817 52.309429 \
-gcp 368 353 4.964962 52.309436 \
-gcp 352 4721 4.964898 52.302673 \
   ../output/publieke-werken/downloads/DUIZ01515000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01515000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.964963369557415,52.30271779681381],[4.964899329091282,52.3094584089048],[4.978829175853397,52.309507317276456],[4.978891103224382,52.302766695595736],[4.964963369557415,52.30271779681381]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01515000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01515000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01515000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01515000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01524000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01524000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01524000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01524000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5217 2040 5.019137 52.306871 \
-gcp 1707 1187 5.010393 52.308167 \
-gcp 4957 4230 5.01852 52.303542 \
   ../output/publieke-werken/downloads/DUIZ01524000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01524000001.vrt

echo '{"type":"Polygon","coordinates":[[[5.006746673410076,52.302859571348975],[5.006688972282333,52.309600211243996],[5.020618919581675,52.30964419682351],[5.02067450756254,52.302903548303796],[5.006746673410076,52.302859571348975]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01524000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01524000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01524000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01524000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01568000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01568000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01568000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01568000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 2826 237 5.013387 52.296046 \
-gcp 1922 1575 5.011176 52.293996 \
-gcp 814 1258 5.008403 52.294465 \
-gcp 5714 4290 5.02072 52.289776 \
   ../output/publieke-werken/downloads/DUIZ01568000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01568000001.vrt

echo '{"type":"Polygon","coordinates":[[[5.006862015258686,52.289378265246135],[5.00680435439874,52.296118922667624],[5.020730076141755,52.296162891000456],[5.020785625329296,52.28942222495953],[5.006862015258686,52.289378265246135]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01568000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01568000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01568000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01568000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01582000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01582000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01582000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01582000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4042 360 5.002459 52.28914 \
-gcp 1065 2923 4.995115 52.285225 \
-gcp 5496 4419 5.006096 52.282941 \
   ../output/publieke-werken/downloads/DUIZ01582000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01582000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.99299818912759,52.282592008381236],[4.992938437466873,52.2893326655587],[5.006862015258686,52.289378265246135],[5.006919656000269,52.28263759913053],[4.99299818912759,52.282592008381236]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01582000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01582000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01582000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01582000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00018000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00018000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00018000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00018000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1264 332 4.867963 52.430374 \
-gcp 2136 3919 4.870098 52.426017 \
-gcp 3416 3392 4.872737 52.426671 \
-gcp 1544 2244 4.868574 52.427992 \
   ../output/publieke-werken/downloads/DUIZ00018000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00018000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866047112601932,52.42365782273422],[4.865967783361889,52.43039819209272],[4.87993551377565,52.4304588004231],[4.880012716726138,52.42371841915835],[4.866047112601932,52.42365782273422]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00018000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00018000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00018000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00018000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01599000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01599000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01599000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01599000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 200 215 4.753046 52.430484 \
-gcp 5776 239 4.767551 52.430426 \
-gcp 5776 4631 4.768066 52.423674 \
   ../output/publieke-werken/downloads/DUIZ01599000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01599000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.907944053860436,52.423834672979616],[4.90787110355561,52.43057507708661],[4.921838960532559,52.43063074539914],[4.921909784482512,52.42389033035611],[4.907944053860436,52.423834672979616]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01599000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01599000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01599000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01599000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01605000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01605000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01605000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01605000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 374 315 4.82415 52.423467 \
-gcp 5934 4750 4.838199 52.416792 \
-gcp 351 4726 4.824235 52.416726 \
   ../output/publieke-werken/downloads/DUIZ01605000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01605000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.824236250295367,52.41672581417984],[4.824150572328629,52.42346615553768],[4.838116039209247,52.423531690912704],[4.838199591701414,52.41679133668233],[4.824236250295367,52.41672581417984]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01605000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01605000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01605000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01605000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01611000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01611000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01611000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01611000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 338 302 4.810184 52.4234 \
-gcp 5903 4749 4.824235 52.416726 \
-gcp 310 4722 4.810272 52.416659 \
   ../output/publieke-werken/downloads/DUIZ01611000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01611000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.810272957000164,52.416658645706526],[4.810185153583697,52.423398973868586],[4.824150572328629,52.42346615553768],[4.824236250295367,52.41672581417984],[4.810272957000164,52.416658645706526]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01611000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01611000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01611000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01611000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01616000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01616000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01616000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01616000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 128 263 4.795961 52.422215 \
-gcp 6168 239 4.810467 52.421947 \
-gcp 6144 4855 4.810467 52.41509 \
   ../output/publieke-werken/downloads/DUIZ01616000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01616000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.796309713009052,52.41658983127432],[4.796219784168306,52.42333014591728],[4.810185153583697,52.423398973868586],[4.810272957000164,52.416658645706526],[4.796309713009052,52.41658983127432]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01616000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01616000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01616000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01616000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01629000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01629000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01629000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01629000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5742 4593 4.768382 52.416448 \
-gcp 210 192 4.754323 52.423114 \
-gcp 192 4576 4.754419 52.416374 \
   ../output/publieke-werken/downloads/DUIZ01629000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01629000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.754420288792304,52.41637351234775],[4.754323983837617,52.42311378449381],[4.768289198101474,52.42318755121726],[4.768383377711945,52.41644726458229],[4.754420288792304,52.41637351234775]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01629000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01629000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01629000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01629000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01638000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01638000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01638000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01638000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 197 224 4.824235 52.416726 \
-gcp 5785 4564 4.838282 52.410052 \
-gcp 223 4602 4.824321 52.409986 \
   ../output/publieke-werken/downloads/DUIZ01638000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01638000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.82432189827612,52.409985463209566],[4.824236250295367,52.41672581417984],[4.838199591701414,52.41679133668233],[4.838283114951327,52.41005097284346],[4.82432189827612,52.409985463209566]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01638000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01638000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01638000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01638000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01644000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01644000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01644000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01644000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 325 329 4.810272 52.416659 \
-gcp 5888 330 4.824235 52.416726 \
-gcp 5898 4724 4.824321 52.409986 \
   ../output/publieke-werken/downloads/DUIZ01644000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01644000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.810360729686936,52.409918307928024],[4.810272957000164,52.416658645706526],[4.824236250295367,52.41672581417984],[4.82432189827612,52.409985463209566],[4.810360729686936,52.409918307928024]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01644000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01644000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01644000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01644000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01649000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01649000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01649000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01649000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 337 303 4.796309 52.41659 \
-gcp 5897 325 4.810272 52.416659 \
-gcp 5882 4705 4.81036 52.409919 \
   ../output/publieke-werken/downloads/DUIZ01649000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01649000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.796399610376404,52.40984950701082],[4.796309713009052,52.41658983127432],[4.810272957000164,52.416658645706526],[4.810360729686936,52.409918307928024],[4.796399610376404,52.40984950701082]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01649000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01649000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01649000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01649000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01654000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01654000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01654000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01654000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5755 189 4.796309 52.41659 \
-gcp 194 200 4.782346 52.41652 \
-gcp 203 4591 4.782438 52.40978 \
   ../output/publieke-werken/downloads/DUIZ01654000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01654000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.782438541537126,52.40977906047005],[4.782346519515248,52.41651937089541],[4.796309713009052,52.41658983127432],[4.796399610376404,52.40984950701082],[4.782438541537126,52.40977906047005]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01654000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01654000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01654000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01654000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01659000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01659000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01659000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01659000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5761 192 4.782346 52.41652 \
-gcp 192 207 4.768382 52.416448 \
-gcp 201 4610 4.768477 52.409708 \
   ../output/publieke-werken/downloads/DUIZ01659000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01659000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.768477524361685,52.40970696831825],[4.768383377711945,52.41644726458229],[4.782346519515248,52.41651937089541],[4.782438541537126,52.40977906047005],[4.768477524361685,52.40970696831825]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01659000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01659000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01659000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01659000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01664000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01664000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01664000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01664000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 208 222 4.754934 52.415148 \
-gcp 5808 302 4.769697 52.415619 \
-gcp 5792 4718 4.770212 52.409494 \
   ../output/publieke-werken/downloads/DUIZ01664000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01664000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.754516560042619,52.409633230568225],[4.754420288792304,52.41637351234775],[4.768383377711945,52.41644726458229],[4.768477524361685,52.40970696831825],[4.754516560042619,52.409633230568225]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01664000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01664000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01664000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01664000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01670000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01670000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01670000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01670000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 592 3963 4.825374 52.404229 \
-gcp 1188 1463 4.826823 52.408051 \
-gcp 5675 1241 4.83804 52.40845 \
   ../output/publieke-werken/downloads/DUIZ01670000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01670000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.824407516286362,52.403245102673026],[4.82432189827612,52.409985463209566],[4.838283114951327,52.41005097284346],[4.838366608974079,52.403310599442186],[4.824407516286362,52.403245102673026]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01670000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01670000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01670000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01670000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01673000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01673000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01673000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01673000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5900 4716 4.824407 52.403246 \
-gcp 324 4724 4.810448 52.403179 \
-gcp 327 322 4.81036 52.409919 \
   ../output/publieke-werken/downloads/DUIZ01673000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01673000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.810448471659863,52.403177960579235],[4.810360729686936,52.409918307928024],[4.82432189827612,52.409985463209566],[4.824407516286362,52.403245102673026],[4.810448471659863,52.403177960579235]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01673000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01673000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01673000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01673000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01677000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01677000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01677000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01677000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5906 318 4.81036 52.409919 \
-gcp 332 306 4.796399 52.40985 \
-gcp 328 4704 4.796489 52.40311 \
   ../output/publieke-werken/downloads/DUIZ01677000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01677000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.796489476286598,52.40310917317286],[4.796399610376404,52.40984950701082],[4.810360729686936,52.409918307928024],[4.810448471659863,52.403177960579235],[4.796489476286598,52.40310917317286]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01677000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01677000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01677000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01677000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01682000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01682000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01682000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01682000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5768 203 4.796399 52.40985 \
-gcp 199 201 4.782438 52.40978 \
-gcp 204 4601 4.78253 52.403039 \
   ../output/publieke-werken/downloads/DUIZ01682000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01682000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.782530531358555,52.40303874046605],[4.782438541537126,52.40977906047005],[4.796399610376404,52.40984950701082],[4.796489476286598,52.40310917317286],[4.782530531358555,52.40303874046605]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01682000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01682000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01682000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01682000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01685000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01685000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01685000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01685000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5751 218 4.782438 52.40978 \
-gcp 205 218 4.768477 52.409708 \
-gcp 206 4612 4.768571 52.402967 \
   ../output/publieke-werken/downloads/DUIZ01685000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01685000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.768571638067697,52.402966662471314],[4.768477524361685,52.40970696831825],[4.782438541537126,52.40977906047005],[4.782530531358555,52.40303874046605],[4.768571638067697,52.402966662471314]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01685000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01685000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01685000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01685000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01689000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01689000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01689000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01689000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 192 4577 4.754848 52.402943 \
-gcp 5728 4624 4.768667 52.4031 \
-gcp 192 193 4.754419 52.40975 \
-gcp 5744 257 4.768453 52.409619 \
   ../output/publieke-werken/downloads/DUIZ01689000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01689000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.75461279760595,52.402892939201294],[4.754516560042619,52.409633230568225],[4.768477524361685,52.40970696831825],[4.768571638067697,52.402966662471314],[4.75461279760595,52.402892939201294]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01689000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01689000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01689000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01689000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01695000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01695000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01695000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01695000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 224 464 4.824286 52.403629 \
-gcp 5888 494 4.837246 52.403676 \
-gcp 6016 4766 4.837418 52.396455 \
   ../output/publieke-werken/downloads/DUIZ01695000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01695000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.824493104341551,52.39650473261617],[4.824407516286362,52.403245102673026],[4.838366608974079,52.403310599442186],[4.838450073784739,52.39657021652458],[4.824493104341551,52.39650473261617]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01695000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01695000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01695000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01695000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01701000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01701000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01701000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01701000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 112 263 4.810982 52.403466 \
-gcp 5976 279 4.825058 52.403577 \
-gcp 200 4727 4.811239 52.396402 \
   ../output/publieke-werken/downloads/DUIZ01701000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01701000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.810536182934792,52.396437603706175],[4.810448471659863,52.403177960579235],[4.824407516286362,52.403245102673026],[4.824493104341551,52.39650473261617],[4.810536182934792,52.396437603706175]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01701000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01701000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01701000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01701000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01705000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01705000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01705000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01705000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 208 318 4.795017 52.403001 \
-gcp 5728 270 4.810896 52.403053 \
-gcp 176 4654 4.795017 52.395512 \
   ../output/publieke-werken/downloads/DUIZ01705000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01705000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.796579310755865,52.39636882980655],[4.796489476286598,52.40310917317286],[4.810448471659863,52.403177960579235],[4.810536182934792,52.396437603706175],[4.796579310755865,52.39636882980655]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01705000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01705000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01705000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01705000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01711000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01711000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01711000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01711000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 224 286 4.781799 52.403106 \
-gcp 5712 270 4.795618 52.403158 \
-gcp 208 4654 4.782228 52.396193 \
   ../output/publieke-werken/downloads/DUIZ01711000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01711000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.782622488996143,52.396298410929454],[4.782530531358555,52.40303874046605],[4.796489476286598,52.40310917317286],[4.796579310755865,52.39636882980655],[4.782622488996143,52.396298410929454]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01711000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01711000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01711000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01711000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01714000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01714000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01714000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01714000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 160 270 4.767809 52.402733 \
-gcp 5680 318 4.781799 52.402576 \
-gcp 5696 4558 4.7824 52.396082 \
   ../output/publieke-werken/downloads/DUIZ01714000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01714000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.768665718846976,52.39622634708739],[4.768571638067697,52.402966662471314],[4.782530531358555,52.40303874046605],[4.782622488996143,52.396298410929454],[4.768665718846976,52.39622634708739]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01714000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01714000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01714000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01714000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01718000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01718000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01718000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01718000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 240 270 4.754505 52.403315 \
-gcp 5712 350 4.768152 52.403361 \
-gcp 288 4638 4.754763 52.396606 \
   ../output/publieke-werken/downloads/DUIZ01718000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01718000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.754709001499672,52.39615263829311],[4.75461279760595,52.402892939201294],[4.768571638067697,52.402966662471314],[4.768665718846976,52.39622634708739],[4.754709001499672,52.39615263829311]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01718000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01718000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01718000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01718000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01724000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01724000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01724000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01724000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 272 350 4.824457 52.39603 \
-gcp 5984 382 4.837418 52.396245 \
-gcp 5952 4670 4.837418 52.389744 \
   ../output/publieke-werken/downloads/DUIZ01724000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01724000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.824578662457137,52.38976435308513],[4.824493104341551,52.39650473261617],[4.838450073784739,52.39657021652458],[4.838533509398378,52.38982982413669],[4.824578662457137,52.38976435308513]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01724000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01724000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01724000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01724000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01730000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01730000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01730000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01730000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5744 350 4.824371 52.396036 \
-gcp 320 318 4.812098 52.395977 \
-gcp 5792 4686 4.824543 52.390111 \
   ../output/publieke-werken/downloads/DUIZ01730000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01730000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.810623863527553,52.38969723735488],[4.810536182934792,52.396437603706175],[4.824493104341551,52.39650473261617],[4.824578662457137,52.38976435308513],[4.810623863527553,52.38969723735488]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01730000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01730000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01730000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01730000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01736000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01736000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01736000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01736000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5776 254 4.811411 52.396609 \
-gcp 208 302 4.796863 52.396423 \
-gcp 5776 4638 4.811668 52.389695 \
   ../output/publieke-werken/downloads/DUIZ01736000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01736000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.796669113800418,52.38962847695788],[4.796579310755865,52.39636882980655],[4.810536182934792,52.396437603706175],[4.810623863527553,52.38969723735488],[4.796669113800418,52.38962847695788]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01736000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01736000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01736000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01736000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01742000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01742000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01742000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01742000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5728 302 4.796562 52.395925 \
-gcp 288 302 4.78343 52.395826 \
-gcp 5792 4670 4.797077 52.38854 \
   ../output/publieke-werken/downloads/DUIZ01742000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01742000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.782714414466487,52.38955807190635],[4.782622488996143,52.396298410929454],[4.796579310755865,52.39636882980655],[4.796669113800418,52.38962847695788],[4.782714414466487,52.38955807190635]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01742000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01742000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01742000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01742000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01748000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01748000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01748000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01748000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5728 270 4.783688 52.39546 \
-gcp 240 318 4.770212 52.395454 \
-gcp 5728 4654 4.783945 52.389279 \
   ../output/publieke-werken/downloads/DUIZ01748000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01748000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.7687597667165,52.38948602221266],[4.768665718846976,52.39622634708739],[4.782622488996143,52.396298410929454],[4.782714414466487,52.38955807190635],[4.7687597667165,52.38948602221266]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01748000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01748000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01748000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01748000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01752000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01752000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01752000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01752000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 214 201 4.754708 52.396153 \
-gcp 204 4606 4.754804 52.389413 \
-gcp 5788 4619 4.768759 52.389487 \
   ../output/publieke-werken/downloads/DUIZ01752000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01752000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.754805171741151,52.38941232788965],[4.754709001499672,52.39615263829311],[4.768665718846976,52.39622634708739],[4.7687597667165,52.38948602221266],[4.754805171741151,52.38941232788965]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01752000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01752000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01752000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01752000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01760000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01760000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01760000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01760000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5268 4527 4.83731 52.383157 \
-gcp 349 4595 4.824999 52.383042 \
-gcp 2730 3853 4.830964 52.384198 \
   ../output/publieke-werken/downloads/DUIZ01760000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01760000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.824664190648556,52.38302396412592],[4.824578662457137,52.38976435308513],[4.838533509398378,52.38982982413669],[4.838616915830047,52.38308942232453],[4.824664190648556,52.38302396412592]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01760000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01760000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01760000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01760000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01768000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01768000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01768000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01768000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 927 4573 4.812521 52.383 \
-gcp 5733 4364 4.824532 52.383393 \
-gcp 3428 3522 4.818757 52.384657 \
   ../output/publieke-werken/downloads/DUIZ01768000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01768000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.810711513453968,52.38295686157143],[4.810623863527553,52.38969723735488],[4.824578662457137,52.38976435308513],[4.824664190648556,52.38302396412592],[4.810711513453968,52.38295686157143]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01768000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01768000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01768000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01768000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01775000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01775000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01775000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01775000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 241 4060 4.796841 52.383737 \
-gcp 3390 4599 4.804727 52.382941 \
-gcp 4277 3967 4.806921 52.383917 \
   ../output/publieke-werken/downloads/DUIZ01775000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01775000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.796758885436461,52.382888114673015],[4.796669113800418,52.38962847695788],[4.810623863527553,52.38969723735488],[4.810711513453968,52.38295686157143],[4.796758885436461,52.382888114673015]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01775000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01775000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01775000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01775000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01780000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01780000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01780000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01780000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5784 4599 4.796758 52.382889 \
-gcp 208 4596 4.782806 52.382818 \
-gcp 214 204 4.782714 52.389559 \
   ../output/publieke-werken/downloads/DUIZ01780000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01780000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.78280630778618,52.38281772344276],[4.782714414466487,52.38955807190635],[4.796669113800418,52.38962847695788],[4.796758885436461,52.382888114673015],[4.78280630778618,52.38281772344276]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01780000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01780000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01780000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01780000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01783000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01783000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01783000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01783000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4388 3884 4.779289 52.383923 \
-gcp 4678 4382 4.780024 52.383193 \
-gcp 5778 3950 4.782765 52.383835 \
-gcp 2406 3956 4.774343 52.383792 \
   ../output/publieke-werken/downloads/DUIZ01783000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01783000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.768853781693243,52.38274568789324],[4.7687597667165,52.38948602221266],[4.782714414466487,52.38955807190635],[4.78280630778618,52.38281772344276],[4.768853781693243,52.38274568789324]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01783000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01783000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01783000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01783000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01786000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01786000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01786000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01786000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1875 4159 4.758748 52.38355 \
-gcp 4583 3709 4.765518 52.384241 \
-gcp 2666 2078 4.760674 52.386742 \
   ../output/publieke-werken/downloads/DUIZ01786000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01786000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.75490130834774,52.3826720080371],[4.754805171741151,52.38941232788965],[4.7687597667165,52.38948602221266],[4.768853781693243,52.38274568789324],[4.75490130834774,52.3826720080371]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01786000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01786000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01786000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01786000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01796000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01796000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01796000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01796000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 247 353 4.824776 52.3828 \
-gcp 249 2384 4.824843 52.379696 \
-gcp 4763 968 4.836082 52.381893 \
-gcp 4194 3446 4.834679 52.378088 \
   ../output/publieke-werken/downloads/DUIZ01796000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01796000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.824749688931237,52.376283565784696],[4.824664190648556,52.38302396412592],[4.838616915830047,52.38308942232453],[4.838700293094798,52.37634901113428],[4.824749688931237,52.376283565784696]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01796000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01796000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01796000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01796000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01805000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01805000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01805000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01805000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1039 367 4.812811 52.382725 \
-gcp 5685 351 4.824457 52.382784 \
-gcp 5622 4452 4.82435 52.376487 \
-gcp 268 4582 4.810928 52.376244 \
   ../output/publieke-werken/downloads/DUIZ01805000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01805000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.810799132729847,52.37621647640193],[4.810711513453968,52.38295686157143],[4.824664190648556,52.38302396412592],[4.824749688931237,52.376283565784696],[4.810799132729847,52.37621647640193]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01805000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01805000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01805000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01805000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01812000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01812000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01812000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01812000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 441 638 4.796975 52.382735 \
-gcp 4419 609 4.806916 52.382846 \
-gcp 5543 4298 4.809818 52.37723 \
-gcp 754 4715 4.797893 52.37651 \
   ../output/publieke-werken/downloads/DUIZ01812000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01812000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.79684862568019,52.376147742997965],[4.796758885436461,52.382888114673015],[4.810711513453968,52.38295686157143],[4.810799132729847,52.37621647640193],[4.79684862568019,52.376147742997965]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01812000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01812000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01812000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01812000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01818000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01818000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01818000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01818000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5027 303 4.794899 52.382699 \
-gcp 4718 4132 4.794164 52.376811 \
-gcp 5630 4250 4.796455 52.376641 \
   ../output/publieke-werken/downloads/DUIZ01818000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01818000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.782898168971791,52.37607736558488],[4.78280630778618,52.38281772344276],[4.796758885436461,52.382888114673015],[4.79684862568019,52.376147742997965],[4.782898168971791,52.37607736558488]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01818000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01818000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01818000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01818000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01821000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01821000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01821000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01821000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5937 4704 4.7829 52.37608 \
-gcp 358 4706 4.76895 52.37601 \
-gcp 5934 309 4.78281 52.38282 \
   ../output/publieke-werken/downloads/DUIZ01821000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01821000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.768947763794162,52.37600534417511],[4.768853781693243,52.38274568789324],[4.78280630778618,52.38281772344276],[4.782898168971791,52.37607736558488],[4.768947763794162,52.37600534417511]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01821000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01821000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01821000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01821000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01826000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01826000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01826000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01826000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 980 278 4.75678 52.38259 \
-gcp 4404 3316 4.765395 52.378006 \
-gcp 812 4012 4.756479 52.376876 \
   ../output/publieke-werken/downloads/DUIZ01826000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01826000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.754997411336777,52.37593167878148],[4.75490130834774,52.3826720080371],[4.768853781693243,52.38274568789324],[4.768947763794162,52.37600534417511],[4.754997411336777,52.37593167878148]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01826000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01826000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01826000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01826000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01833000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01833000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01833000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01833000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 418 522 4.825299 52.375819 \
-gcp 4792 2620 4.836248 52.372645 \
-gcp 2522 3528 4.830599 52.371243 \
   ../output/publieke-werken/downloads/DUIZ01833000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01833000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.824835157320601,52.36954315810752],[4.824749688931237,52.376283565784696],[4.838700293094798,52.37634901113428],[4.838783641207661,52.36960859061196],[4.824835157320601,52.36954315810752]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01833000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01833000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01833000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01833000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01839000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01839000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01839000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01839000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 239 2741 4.810966 52.372314 \
-gcp 649 227 4.811947 52.376166 \
-gcp 4990 507 4.82281 52.375792 \
   ../output/publieke-werken/downloads/DUIZ01839000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01839000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.810886721370992,52.36947608189252],[4.810799132729847,52.37621647640193],[4.824749688931237,52.376283565784696],[4.824835157320601,52.36954315810752],[4.810886721370992,52.36947608189252]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01839000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01839000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01839000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01839000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01844000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01844000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01844000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01844000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 395 1753 4.797356 52.373759 \
-gcp 5168 2665 4.809303 52.372432 \
-gcp 5044 839 4.808975 52.375232 \
   ../output/publieke-werken/downloads/DUIZ01844000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01844000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.79693833454778,52.36940736197884],[4.79684862568019,52.376147742997965],[4.810799132729847,52.37621647640193],[4.810886721370992,52.36947608189252],[4.79693833454778,52.36940736197884]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01844000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01844000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01844000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01844000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01847000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01847000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01847000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01847000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 175 4689 4.782989 52.369338 \
-gcp 176 283 4.782897 52.376078 \
-gcp 5765 4687 4.796938 52.369408 \
   ../output/publieke-werken/downloads/DUIZ01847000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01847000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.782989998039888,52.369336998378685],[4.782898168971791,52.37607736558488],[4.79684862568019,52.376147742997965],[4.79693833454778,52.36940736197884],[4.782989998039888,52.369336998378685]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01847000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01847000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01847000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01847000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01853000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01853000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01853000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01853000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 206 222 4.768947 52.376006 \
-gcp 208 4624 4.769041 52.369266 \
-gcp 5785 4618 4.782989 52.369338 \
   ../output/publieke-werken/downloads/DUIZ01853000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01853000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.769041713036203,52.36926499110442],[4.768947763794162,52.37600534417511],[4.782898168971791,52.37607736558488],[4.782989998039888,52.369336998378685],[4.769041713036203,52.36926499110442]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01853000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01853000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01853000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01853000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01855000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01855000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01855000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01855000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 229 213 4.754997 52.375932 \
-gcp 224 4617 4.755093 52.369192 \
-gcp 5802 4615 4.769041 52.369266 \
   ../output/publieke-werken/downloads/DUIZ01855000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01855000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.755093480725594,52.36919134016888],[4.754997411336777,52.37593167878148],[4.768947763794162,52.37600534417511],[4.769041713036203,52.36926499110442],[4.755093480725594,52.36919134016888]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01855000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01855000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01855000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01855000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01860000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01860000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01860000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01860000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 491 4539 4.825686 52.362891 \
-gcp 4904 4143 4.836763 52.363566 \
-gcp 4518 1549 4.835701 52.367536 \
   ../output/publieke-werken/downloads/DUIZ01860000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01860000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.824920595832052,52.362802741140385],[4.824835157320601,52.36954315810752],[4.838783641207661,52.36960859061196],[4.838866960183662,52.36286816080361],[4.824920595832052,52.362802741140385]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01860000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01860000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01860000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01860000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01864000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01864000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01864000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01864000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5171 4459 4.823406 52.363041 \
-gcp 5592 2053 4.824366 52.366736 \
-gcp 224 197 4.810886 52.369477 \
   ../output/publieke-werken/downloads/DUIZ01864000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01864000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.810974279393187,52.36273567808914],[4.810886721370992,52.36947608189252],[4.824835157320601,52.36954315810752],[4.824920595832052,52.362802741140385],[4.810974279393187,52.36273567808914]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01864000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01864000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01864000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01864000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01868000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01868000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01868000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01868000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1627 2876 4.800575 52.365315 \
-gcp 269 3324 4.797201 52.364601 \
-gcp 1926 4527 4.801353 52.362799 \
   ../output/publieke-werken/downloads/DUIZ01868000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01868000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.797028012055409,52.36266697166171],[4.79693833454778,52.36940736197884],[4.810886721370992,52.36947608189252],[4.810974279393187,52.36273567808914],[4.797028012055409,52.36266697166171]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01868000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01868000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01868000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01868000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01872000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01872000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01872000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01872000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5472 3684 4.796192 52.364077 \
-gcp 2842 4356 4.789637 52.363045 \
-gcp 272 1496 4.783194 52.367398 \
   ../output/publieke-werken/downloads/DUIZ01872000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01872000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.783081795007021,52.36259662187025],[4.782989998039888,52.369336998378685],[4.79693833454778,52.36940736197884],[4.797028012055409,52.36266697166171],[4.783081795007021,52.36259662187025]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01872000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01872000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01872000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01872000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01877000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01877000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01877000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01877000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 3010 1678 4.776065 52.367048 \
-gcp 3962 590 4.778414 52.368725 \
-gcp 5416 1652 4.782084 52.367126 \
   ../output/publieke-werken/downloads/DUIZ01877000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01877000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.769135629436302,52.36252462872722],[4.769041713036203,52.36926499110442],[4.782989998039888,52.369336998378685],[4.783081795007021,52.36259662187025],[4.769135629436302,52.36252462872722]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01877000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01877000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01877000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01877000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01880000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01880000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01880000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01880000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 227 4635 4.755189 52.362452 \
-gcp 5789 4617 4.769135 52.362525 \
-gcp 222 236 4.755093 52.369192 \
   ../output/publieke-werken/downloads/DUIZ01880000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01880000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.755189516531504,52.362450992245385],[4.755093480725594,52.36919134016888],[4.769041713036203,52.36926499110442],[4.769135629436302,52.36252462872722],[4.755189516531504,52.362450992245385]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01880000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01880000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01880000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01880000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01908000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01908000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01908000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01908000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 196 4588 4.811149 52.349255 \
-gcp 5743 4591 4.825091 52.349322 \
-gcp 199 194 4.811061 52.355996 \
   ../output/publieke-werken/downloads/DUIZ01908000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01908000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.825091383282787,52.34932187952074],[4.825006004480985,52.3560623149294],[4.838950250037817,52.356127721755314],[4.839033510785127,52.349387273513166],[4.825091383282787,52.34932187952074]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01908000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01908000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01908000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01908000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01888000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01888000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01888000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01888000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 772 4329 4.812495 52.356394 \
-gcp 5456 233 4.824103 52.36276 \
-gcp 5598 4389 4.824559 52.356375 \
   ../output/publieke-werken/downloads/DUIZ01888000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01888000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.811061806812215,52.355995265037926],[4.810974279393187,52.36273567808914],[4.824920595832052,52.362802741140385],[4.825006004480985,52.3560623149294],[4.811061806812215,52.355995265037926]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01888000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01888000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01888000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01888000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01892000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01892000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01892000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01892000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5712 270 4.796433 52.363261 \
-gcp 80 302 4.782786 52.362969 \
-gcp 240 4638 4.783387 52.355814 \
   ../output/publieke-werken/downloads/DUIZ01892000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01892000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.797117658219235,52.355926572092656],[4.797028012055409,52.36266697166171],[4.810974279393187,52.36273567808914],[4.811061806812215,52.355995265037926],[4.797117658219235,52.355926572092656]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01892000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01892000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01892000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01892000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01897000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01897000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01897000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01897000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5952 414 4.782486 52.362632 \
-gcp 256 398 4.76944 52.362576 \
-gcp 5936 4670 4.782529 52.356394 \
   ../output/publieke-werken/downloads/DUIZ01897000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01897000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.783173559889732,52.355856236105765],[4.783081795007021,52.36259662187025],[4.797028012055409,52.36266697166171],[4.797117658219235,52.355926572092656],[4.783173559889732,52.355856236105765]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01897000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01897000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01897000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01897000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01901000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01901000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01901000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01901000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4336 2676 4.76628 52.362036 \
-gcp 1052 3161 4.758062 52.36141 \
-gcp 4854 4033 4.767498 52.359929 \
   ../output/publieke-werken/downloads/DUIZ01901000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01901000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.769229513011379,52.35578425708965],[4.769135629436302,52.36252462872722],[4.783081795007021,52.36259662187025],[4.783173559889732,52.355856236105765],[4.769229513011379,52.35578425708965]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01901000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01901000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01901000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01901000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01905000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01905000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01905000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01905000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5763 4585 4.839033 52.349388 \
-gcp 196 4588 4.825091 52.349322 \
-gcp 198 204 4.825005 52.356063 \
   ../output/publieke-werken/downloads/DUIZ01905000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01905000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.755285518771814,52.35571063505707],[4.755189516531504,52.362450992245385],[4.769135629436302,52.36252462872722],[4.769229513011379,52.35578425708965],[4.755285518771814,52.35571063505707]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01905000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01905000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01905000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01905000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01912000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01912000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01912000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01912000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5744 4798 4.811239 52.349713 \
-gcp 5776 366 4.810982 52.35548 \
-gcp 304 414 4.798965 52.355218 \
   ../output/publieke-werken/downloads/DUIZ01912000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01912000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.811149303643843,52.34925484278501],[4.811061806812215,52.355995265037926],[4.825006004480985,52.3560623149294],[4.825091383282787,52.34932187952074],[4.811149303643843,52.34925484278501]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01912000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01912000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01912000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01912000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01917000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01917000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01917000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01917000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 206 180 4.783611 52.358898 \
-gcp 5728 4585 4.797273 52.351944 \
-gcp 182 4555 4.783334 52.35216 \
   ../output/publieke-werken/downloads/DUIZ01917000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01917000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.797207273055403,52.349186163317746],[4.797117658219235,52.355926572092656],[4.811061806812215,52.355995265037926],[4.811149303643843,52.34925484278501],[4.797207273055403,52.349186163317746]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01917000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01917000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01917000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01917000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01923000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01923000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01923000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01923000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 171 206 4.76967 52.359112 \
-gcp 5736 4570 4.783334 52.35216 \
-gcp 187 4593 4.769395 52.352374 \
   ../output/publieke-werken/downloads/DUIZ01923000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01923000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.783265292704551,52.34911584113118],[4.783173559889732,52.355856236105765],[4.797117658219235,52.355926572092656],[4.797207273055403,52.349186163317746],[4.783265292704551,52.34911584113118]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01923000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01923000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01923000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01923000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01927000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01927000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01927000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01927000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4232 941 4.765781 52.357964 \
-gcp 255 191 4.755825 52.359313 \
-gcp 3104 2230 4.762858 52.356018 \
   ../output/publieke-werken/downloads/DUIZ01927000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01927000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.76932336377835,52.349043876237715],[4.769229513011379,52.35578425708965],[4.783173559889732,52.355856236105765],[4.783265292704551,52.34911584113118],[4.76932336377835,52.349043876237715]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01927000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01927000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01927000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01927000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01931000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01931000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01931000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01931000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 156 4599 4.825358 52.342576 \
-gcp 5600 4319 4.83878 52.343084 \
-gcp 5730 208 4.839031 52.349266 \
   ../output/publieke-werken/downloads/DUIZ01931000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01931000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.755381487463817,52.3489702686501],[4.755285518771814,52.35571063505707],[4.769229513011379,52.35578425708965],[4.76932336377835,52.349043876237715],[4.755381487463817,52.3489702686501]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01931000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01931000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01931000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01931000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01933000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01933000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01933000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01933000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5785 215 4.839033 52.349388 \
-gcp 5781 4618 4.839116 52.342647 \
-gcp 217 214 4.825091 52.349322 \
   ../output/publieke-werken/downloads/DUIZ01933000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01933000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.825176732252833,52.34258143496035],[4.825091383282787,52.34932187952074],[4.839033510785127,52.349387273513166],[4.839116742440587,52.34264681612326],[4.825176732252833,52.34258143496035]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01933000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01933000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01933000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01933000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01939000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01939000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01939000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01939000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5800 230 4.825091 52.349322 \
-gcp 237 222 4.811149 52.349255 \
-gcp 5787 4629 4.825176 52.342582 \
   ../output/publieke-werken/downloads/DUIZ01939000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01939000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.811236769903821,52.34251441137638],[4.811149303643843,52.34925484278501],[4.825091383282787,52.34932187952074],[4.825176732252833,52.34258143496035],[4.811236769903821,52.34251441137638]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01939000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01939000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01939000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01939000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01946000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01946000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01946000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01946000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 326 351 4.783265 52.349116 \
-gcp 5890 359 4.797207 52.349187 \
-gcp 5884 4743 4.797296 52.342446 \
   ../output/publieke-werken/downloads/DUIZ01946000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01946000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.797296856580052,52.342445745383074],[4.797207273055403,52.349186163317746],[4.811149303643843,52.34925484278501],[4.811236769903821,52.34251441137638],[4.797296856580052,52.342445745383074]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01946000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01946000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01946000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01946000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01951000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01951000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01951000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01951000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5297 690 4.795908 52.348458 \
-gcp 1815 3309 4.787287 52.344431 \
-gcp 5766 4552 4.797109 52.342533 \
-gcp 3482 278 4.791386 52.349081 \
   ../output/publieke-werken/downloads/DUIZ01951000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01951000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.783356993468001,52.342375436992654],[4.783265292704551,52.34911584113118],[4.797207273055403,52.349186163317746],[4.797296856580052,52.342445745383074],[4.783356993468001,52.342375436992654]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01951000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01951000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01951000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01951000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01956000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01956000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01956000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01956000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 274 222 4.824867 52.344769 \
-gcp 5824 192 4.838803 52.344548 \
-gcp 5856 4576 4.838518 52.33781 \
   ../output/publieke-werken/downloads/DUIZ01956000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01956000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.76941718175411,52.34230348621756],[4.76932336377835,52.349043876237715],[4.783265292704551,52.34911584113118],[4.783356993468001,52.342375436992654],[4.76941718175411,52.34230348621756]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01956000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01956000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01956000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01956000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01962000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01962000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01962000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01962000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1424 2332 4.813868 52.341534 \
-gcp 3018 2228 4.81787 52.341629 \
-gcp 3236 2914 4.818326 52.340482 \
-gcp 4046 2016 4.820445 52.341917 \
-gcp 4654 2114 4.821963 52.341747 \
   ../output/publieke-werken/downloads/DUIZ01962000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01962000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.825262051406486,52.33584098129439],[4.825176732252833,52.34258143496035],[4.839116742440587,52.34264681612326],[4.83919994501918,52.335906349631614],[4.825262051406486,52.33584098129439]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01962000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01962000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01962000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01962000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01967000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01967000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01967000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01967000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 226 253 4.811236 52.342515 \
-gcp 5800 4658 4.825261 52.335842 \
-gcp 5825 254 4.825176 52.342582 \
   ../output/publieke-werken/downloads/DUIZ01967000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01967000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.8113242056079,52.33577397085815],[4.811236769903821,52.34251441137638],[4.825176732252833,52.34258143496035],[4.825262051406486,52.33584098129439],[4.8113242056079,52.33577397085815]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01967000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01967000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01967000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01967000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01977000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01977000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01977000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01977000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 411 430 4.797624 52.342206 \
-gcp 5895 276 4.811236 52.342515 \
-gcp 289 4685 4.797386 52.335706 \
   ../output/publieke-werken/downloads/DUIZ01977000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01977000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.79738640880931,52.335705318334746],[4.797296856580052,52.342445745383074],[4.811236769903821,52.34251441137638],[4.8113242056079,52.33577397085815],[4.79738640880931,52.335705318334746]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01977000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01977000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01977000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01977000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01985000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01985000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01985000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01985000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 224 160 4.824972 52.335496 \
-gcp 5728 176 4.839392 52.335811 \
-gcp 192 4577 4.8248 52.328993 \
-gcp 5728 4593 4.839735 52.329098 \
   ../output/publieke-werken/downloads/DUIZ01985000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01985000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.783448662196585,52.33563502373626],[4.783356993468001,52.342375436992654],[4.797296856580052,52.342445745383074],[4.79738640880931,52.335705318334746],[4.783448662196585,52.33563502373626]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01985000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01985000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01985000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01985000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01990000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01990000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01990000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01990000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5664 4478 4.825144 52.328894 \
-gcp 5712 238 4.8248 52.335654 \
-gcp 224 254 4.810896 52.335392 \
   ../output/publieke-werken/downloads/DUIZ01990000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01990000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.825347340759101,52.32910051856891],[4.825262051406486,52.33584098129439],[4.83919994501918,52.335906349631614],[4.839283118535881,52.32916587408433],[4.825347340759101,52.32910051856891]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01990000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01990000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01990000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01990000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01997000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01997000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01997000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01997000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 2972 1441 4.831211 52.329193 \
-gcp 228 1391 4.824371 52.329399 \
-gcp 556 3604 4.825058 52.326163 \
-gcp 3158 2926 4.831608 52.327009 \
   ../output/publieke-werken/downloads/DUIZ01997000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ01997000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.797475929759291,52.328964882218756],[4.79738640880931,52.335705318334746],[4.8113242056079,52.33577397085815],[4.811411610771811,52.32903352127638],[4.797475929759291,52.328964882218756]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ01997000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ01997000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ01997000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ01997000001-warped.tif
    

# =============================================================================================
# Name: DUIZ02013000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ02013000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ02013000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ02013000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4322 1062 4.821652 52.307737 \
-gcp 1554 2882 4.814785 52.30489 \
-gcp 5042 4240 4.823502 52.302857 \
   ../output/publieke-werken/downloads/DUIZ02013000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ02013000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.811673643179732,52.308812118610874],[4.81158632954202,52.315552595106716],[4.825517830122578,52.31561956612359],[4.825603030164093,52.30887907649599],[4.811673643179732,52.308812118610874]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ02013000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ02013000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ02013000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ02013000001-warped.tif
    

# =============================================================================================
# Name: DUIZ02015000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ02015000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ02015000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ02015000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 329 4715 4.825773 52.295399 \
-gcp 5920 340 4.839615 52.302204 \
-gcp 343 319 4.825688 52.302139 \
   ../output/publieke-werken/downloads/DUIZ02015000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ02015000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.825688200465883,52.30213857799316],[4.825603030164093,52.30887907649599],[4.839532464864197,52.30894439356954],[4.839615522282848,52.30220388226047],[4.825688200465883,52.30213857799316]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ02015000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ02015000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ02015000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ02015000001-warped.tif
    

# =============================================================================================
# Name: DUIZ02017000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ02017000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ02017000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ02017000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 325 308 4.81176 52.302072 \
-gcp 5897 297 4.825688 52.302139 \
-gcp 5907 4685 4.825773 52.295399 \
   ../output/publieke-werken/downloads/DUIZ02017000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ02017000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.797833701088368,52.302003048000536],[4.797744305094563,52.308743519926054],[4.811673643179732,52.308812118610874],[4.811760926340108,52.30207163323591],[4.797833701088368,52.302003048000536]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ02017000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ02017000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ02017000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ02017000001-warped.tif
    

# =============================================================================================
# Name: DUIZ02018000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ02018000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ02018000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ02018000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 322 451 4.81176 52.302072 \
-gcp 5900 462 4.825688 52.302139 \
-gcp 5887 4865 4.825773 52.295399 \
   ../output/publieke-werken/downloads/DUIZ02018000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ02018000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.825773341043242,52.2953980706612],[4.825688200465883,52.30213857799316],[4.839615522282848,52.30220388226047],[4.839698550714314,52.295463362126235],[4.825773341043242,52.2953980706612]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ02018000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ02018000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ02018000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ02018000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00205000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00205000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00205000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00205000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5809 4609 4.866363 52.396697 \
-gcp 218 4623 4.852406 52.396635 \
-gcp 212 217 4.852325 52.403375 \
   ../output/publieke-werken/downloads/DUIZ00205000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00205000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.852407090072926,52.39663405541986],[4.852325748530966,52.40337445087526],[4.866284933764953,52.403436656960906],[4.866364152014656,52.39669624929073],[4.852407090072926,52.39663405541986]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00205000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00205000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00205000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00205000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00212000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00212000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00212000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00212000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 230 4622 4.866363 52.396697 \
-gcp 214 219 4.866284 52.403437 \
-gcp 5819 4607 4.880321 52.396757 \
   ../output/publieke-werken/downloads/DUIZ00212000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00212000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866364152014656,52.39669624929073],[4.866284933764953,52.403436656960906],[4.880244163483944,52.40349721768803],[4.880321258418444,52.39675679812611],[4.866364152014656,52.39669624929073]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00212000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00212000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00212000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00212000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00218000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00218000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00218000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00218000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 2800 368 4.886212 52.403335 \
-gcp 3520 2624 4.888101 52.399905 \
-gcp 5952 4704 4.894753 52.396711 \
-gcp 4992 2016 4.89192 52.400874 \
   ../output/publieke-werken/downloads/DUIZ00218000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00218000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880321258418444,52.39675679812611],[4.880244163483944,52.40349721768803],[4.894203436495817,52.403556133045946],[4.894278408092785,52.39681570191528],[4.880321258418444,52.39675679812611]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00218000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00218000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00218000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00218000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00229000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00229000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00229000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00229000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 360 6188 4.894278 52.396816 \
-gcp 7743 6212 4.908235 52.396874 \
-gcp 388 348 4.894203 52.403557 \
   ../output/publieke-werken/downloads/DUIZ00229000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00229000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894278408092785,52.39681570191528],[4.894203436495817,52.403556133045946],[4.908162751608423,52.40361340302422],[4.908235599846147,52.39687296064783],[4.894278408092785,52.39681570191528]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00229000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00229000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00229000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00229000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00240000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00240000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00240000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00240000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4613 1872 4.916226 52.401906 \
-gcp 1083 3909 4.909628 52.399491 \
-gcp 3491 6169 4.91422 52.396915 \
-gcp 7686 4805 4.922143 52.398534 \
   ../output/publieke-werken/downloads/DUIZ00240000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00240000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908235599846147,52.39687296064783],[4.908162751608423,52.40361340302422],[4.92212210762959,52.4036690276127],[4.922192832486973,52.39692857431359],[4.908235599846147,52.39687296064783]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00240000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00240000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00240000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00240000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00246000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00246000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00246000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00246000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 918 6193 4.923189 52.396966 \
-gcp 505 4713 4.92239 52.398675 \
-gcp 1186 1272 4.923667 52.402664 \
   ../output/publieke-werken/downloads/DUIZ00246000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00246000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922192832486973,52.39692857431359],[4.92212210762959,52.4036690276127],[4.936081503367124,52.403723006801485],[4.936150104823677,52.39698254290268],[4.922192832486973,52.39692857431359]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00246000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00246000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00246000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00246000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00253000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00253000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00253000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00253000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 392 6231 4.9362 52.397 \
-gcp 7776 6192 4.9501 52.397 \
-gcp 7744 344 4.9501 52.4038 \
   ../output/publieke-werken/downloads/DUIZ00253000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00253000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936150104823677,52.39698254290268],[4.936081503367124,52.403723006801485],[4.950040937628804,52.403775340581014],[4.950107415664664,52.397034866405576],[4.936150104823677,52.39698254290268]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00253000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00253000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00253000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00253000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00259000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00259000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00259000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00259000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 434 6220 4.950107 52.397036 \
-gcp 405 401 4.95004 52.403776 \
-gcp 7788 6186 4.964064 52.397086 \
   ../output/publieke-werken/downloads/DUIZ00259000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00259000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.950107415664664,52.397034866405576],[4.950040937628804,52.403775340581014],[4.964000409222397,52.40382602894209],[4.964064763818304,52.39708554481305],[4.950107415664664,52.397034866405576]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00259000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00259000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00259000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00259000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00265000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00265000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00265000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00265000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 7968 6270 4.978952 52.397188 \
-gcp 7920 526 4.978523 52.40321 \
-gcp 448 6336 4.965734 52.397077 \
   ../output/publieke-werken/downloads/DUIZ00265000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00265000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.964064763818304,52.39708554481305],[4.964000409222397,52.40382602894209],[4.977959916955641,52.40387507187561],[4.978022148092955,52.39713457811606],[4.964064763818304,52.39708554481305]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00265000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00265000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00265000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00265000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00277000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00277000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00277000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00277000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 538 6318 4.83854 52.38983 \
-gcp 7920 6320 4.85249 52.3899 \
-gcp 7917 498 4.85241 52.39664 \
   ../output/publieke-werken/downloads/DUIZ00277000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00277000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.838533509398378,52.38982982413669],[4.838450073784739,52.39657021652458],[4.852407090072926,52.39663405541986],[4.85248840316046,52.38989365049802],[4.838533509398378,52.38982982413669]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00277000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00277000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00277000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00277000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00284000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00284000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00284000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00284000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 500 516 4.852406 52.396635 \
-gcp 528 6336 4.852488 52.389894 \
-gcp 7920 6282 4.866443 52.389956 \
   ../output/publieke-werken/downloads/DUIZ00284000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00284000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.85248840316046,52.38989365049802],[4.852407090072926,52.39663405541986],[4.866364152014656,52.39669624929073],[4.866443342552547,52.38995583215781],[4.85248840316046,52.38989365049802]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00284000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00284000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00284000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00284000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00298000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00298000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00298000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00298000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 2777 3716 4.870993 52.392802 \
-gcp 4587 6047 4.874443 52.390088 \
-gcp 7544 5033 4.880038 52.391286 \
   ../output/publieke-werken/downloads/DUIZ00298000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00298000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866443342552547,52.38995583215781],[4.866364152014656,52.39669624929073],[4.880321258418444,52.39675679812611],[4.880398326383764,52.39001636910505],[4.866443342552547,52.38995583215781]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00298000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00298000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00298000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00298000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00307000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00307000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00307000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00307000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 3612 3508 4.886588 52.393103 \
-gcp 6020 4928 4.891126 52.391466 \
-gcp 3337 5823 4.886041 52.390416 \
-gcp 422 5672 4.880537 52.390563 \
   ../output/publieke-werken/downloads/DUIZ00307000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00307000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880398326383764,52.39001636910505],[4.880321258418444,52.39675679812611],[4.894278408092785,52.39681570191528],[4.89435335346322,52.39007526132898],[4.880398326383764,52.39001636910505]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00307000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00307000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00307000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00307000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00317000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00317000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00317000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00317000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 7512 6090 4.907879 52.390203 \
-gcp 7698 4164 4.908244 52.392439 \
-gcp 1504 1286 4.896485 52.395768 \
   ../output/publieke-werken/downloads/DUIZ00317000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00317000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.89435335346322,52.39007526132898],[4.894278408092785,52.39681570191528],[4.908235599846147,52.39687296064783],[4.908308422599998,52.3901325088192],[4.89435335346322,52.39007526132898]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00317000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00317000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00317000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00317000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00329000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00329000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00329000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00329000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5445 447 4.917868 52.396812 \
-gcp 4573 5445 4.916248 52.391028 \
-gcp 589 4108 4.9087 52.392573 \
   ../output/publieke-werken/downloads/DUIZ00329000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00329000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908308422599998,52.3901325088192],[4.908235599846147,52.39687296064783],[4.922192832486973,52.39692857431359],[4.922263532603153,52.3901881115656],[4.908308422599998,52.3901325088192]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00329000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00329000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00329000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00329000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00338000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00338000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00338000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00338000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1199 6071 4.923838 52.390353 \
-gcp 7627 5267 4.935983 52.391273 \
-gcp 6658 4440 4.934127 52.392236 \
-gcp 944 559 4.923334 52.396727 \
   ../output/publieke-werken/downloads/DUIZ00338000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00338000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922263532603153,52.3901881115656],[4.922192832486973,52.39692857431359],[4.936150104823677,52.39698254290268],[4.936218682281719,52.390242069558234],[4.922263532603153,52.3901881115656]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00338000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00338000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00338000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00338000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00349000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00349000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00349000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00349000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 721 5243 4.936901 52.391345 \
-gcp 7658 6018 4.950006 52.390445 \
-gcp 6988 3076 4.948794 52.393843 \
-gcp 640 3334 4.936772 52.393571 \
   ../output/publieke-werken/downloads/DUIZ00349000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00349000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936218682281719,52.390242069558234],[4.936150104823677,52.39698254290268],[4.950107415664664,52.397034866405576],[4.95017387044471,52.390294382787665],[4.936218682281719,52.390242069558234]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00349000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00349000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00349000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00349000001-warped.tif
    

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
   ../output/publieke-werken/1970/28992/warped/DUIZ00355000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.95017387044471,52.390294382787665],[4.950107415664664,52.397034866405576],[4.964064763818304,52.39708554481305],[4.964129095901116,52.390345051244516],[4.95017387044471,52.390294382787665]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00355000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00355000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00355000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00355000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00369000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00369000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00369000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00369000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1194 1908 4.993549 52.395356 \
-gcp 2138 5892 4.995405 52.390717 \
-gcp 5040 5271 5.000861 52.391428 \
   ../output/publieke-werken/downloads/DUIZ00369000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00369000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.992039653930022,52.390441453805074],[4.99197956729695,52.39718196630592],[5.005937020238597,52.39722770937422],[5.005994984120399,52.390487187891644],[4.992039653930022,52.390441453805074]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00369000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00369000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00369000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00369000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00381000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00381000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00381000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00381000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4479 3130 4.846349 52.386664 \
-gcp 4742 574 4.846838 52.38962 \
-gcp 7674 5866 4.852427 52.383497 \
   ../output/publieke-werken/downloads/DUIZ00381000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00381000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.838616915830047,52.38308942232453],[4.838533509398378,52.38982982413669],[4.85248840316046,52.38989365049802],[4.852569687808244,52.383153236155735],[4.838616915830047,52.38308942232453]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00381000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00381000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00381000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00381000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00390000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00390000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00390000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00390000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 352 342 4.852488 52.389894 \
-gcp 7730 6158 4.866522 52.383216 \
-gcp 343 6163 4.852569 52.383154 \
   ../output/publieke-werken/downloads/DUIZ00390000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00390000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.852569687808244,52.383153236155735],[4.85248840316046,52.38989365049802],[4.866443342552547,52.38995583215781],[4.866522505392917,52.383215405608176],[4.852569687808244,52.383153236155735]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00390000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00390000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00390000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00390000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00402000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00402000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00402000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00402000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 2438 5765 4.870446 52.383606 \
-gcp 1877 3167 4.869373 52.386608 \
-gcp 7084 380 4.879206 52.389866 \
-gcp 6973 5830 4.879019 52.383534 \
   ../output/publieke-werken/downloads/DUIZ00402000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00402000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866522505392917,52.383215405608176],[4.866443342552547,52.38995583215781],[4.880398326383764,52.39001636910505],[4.880475367393809,52.38327593067091],[4.866522505392917,52.383215405608176]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00402000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00402000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00402000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00402000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00415000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00415000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00415000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00415000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 728 5074 4.881148 52.384562 \
-gcp 566 2202 4.88081 52.387901 \
-gcp 6083 992 4.89126 52.389312 \
-gcp 4578 5679 4.888433 52.383887 \
   ../output/publieke-werken/downloads/DUIZ00415000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00415000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880475367393809,52.38327593067091],[4.880398326383764,52.39001636910505],[4.89435335346322,52.39007526132898],[4.894428272620641,52.3833348113331],[4.880475367393809,52.38327593067091]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00415000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00415000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00415000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00415000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00427000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00427000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00427000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00427000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 352 352 4.894353 52.390076 \
-gcp 7792 320 4.908308 52.390133 \
-gcp 7804 6172 4.908381 52.383393 \
   ../output/publieke-werken/downloads/DUIZ00427000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00427000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894428272620641,52.3833348113331],[4.89435335346322,52.39007526132898],[4.908308422599998,52.3901325088192],[4.908381219883111,52.38339204758446],[4.894428272620641,52.3833348113331]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00427000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00427000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00427000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00427000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00436000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00436000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00436000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00436000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1058 1140 4.909596 52.389152 \
-gcp 7566 3705 4.921773 52.386277 \
-gcp 1956 5942 4.911323 52.383691 \
   ../output/publieke-werken/downloads/DUIZ00436000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00436000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908381219883111,52.38339204758446],[4.908308422599998,52.3901325088192],[4.922263532603153,52.3901881115656],[4.922334207990888,52.3834476394148],[4.908381219883111,52.38339204758446]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00436000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00436000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00436000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00436000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00447000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00447000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00447000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00447000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 480 1039 4.922505 52.389415 \
-gcp 3650 3700 4.928481 52.386363 \
-gcp 606 4029 4.9228 52.385961 \
   ../output/publieke-werken/downloads/DUIZ00447000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00447000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922334207990888,52.3834476394148],[4.922263532603153,52.3901881115656],[4.936218682281719,52.390242069558234],[4.936287235753624,52.38350158681422],[4.922334207990888,52.3834476394148]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00447000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00447000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00447000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00447000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00455000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00455000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00455000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00455000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5466 726 4.949083 52.389542 \
-gcp 5404 2202 4.948965 52.387329 \
-gcp 3141 527 4.94337 52.389846 \
-gcp 3660 1069 4.944658 52.389044 \
-gcp 5374 385 4.948917 52.390085 \
-gcp 1228 3320 4.93865 52.385629 \
-gcp 4392 4308 4.946487 52.384154 \
   ../output/publieke-werken/downloads/DUIZ00455000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00455000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936287235753624,52.38350158681422],[4.936218682281719,52.390242069558234],[4.95017387044471,52.390294382787665],[4.950240301980939,52.38355388977322],[4.936287235753624,52.38350158681422]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00455000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00455000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00455000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00455000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00463000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00463000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00463000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00463000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5915 3989 4.964131 52.384759 \
-gcp 1945 2857 4.954298 52.386434 \
-gcp 5350 1631 4.962693 52.388324 \
   ../output/publieke-werken/downloads/DUIZ00463000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00463000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.950240301980939,52.38355388977322],[4.95017387044471,52.390294382787665],[4.964129095901116,52.390345051244516],[4.964193405482441,52.38360454828254],[4.950240301980939,52.38355388977322]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00463000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00463000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00463000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00463000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00467000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00467000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00467000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00467000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 296 4740 4.964193 52.383605 \
-gcp 5934 4716 4.978146 52.383654 \
-gcp 274 283 4.964128 52.390346 \
   ../output/publieke-werken/downloads/DUIZ00467000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00467000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.964193405482441,52.38360454828254],[4.964129095901116,52.390345051244516],[4.978084357459904,52.390394074919904],[4.978146545067712,52.38365356233319],[4.964193405482441,52.38360454828254]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00467000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00467000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00467000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00467000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00472000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00472000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00472000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00472000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4562 3866 4.988726 52.385096 \
-gcp 966 4144 4.979811 52.384546 \
-gcp 4808 891 4.989333 52.389463 \
   ../output/publieke-werken/downloads/DUIZ00472000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00472000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.978146545067712,52.38365356233319],[4.978084357459904,52.390394074919904],[4.992039653930022,52.390441453805074],[4.992099719546314,52.38370093191648],[4.978146545067712,52.38365356233319]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00472000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00472000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00472000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00472000001-warped.tif
    

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
   ../output/publieke-werken/1970/28992/warped/DUIZ00476000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.992099719546314,52.38370093191648],[4.992039653930022,52.390441453805074],[5.005994984120399,52.390487187891644],[5.006052927727788,52.38374665702412],[4.992099719546314,52.38370093191648]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00476000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00476000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00476000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00476000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00487000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00487000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00487000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00487000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 605 4443 4.839504 52.376794 \
-gcp 5746 4498 4.852186 52.376745 \
-gcp 1093 1013 4.840663 52.381985 \
-gcp 5350 456 4.85114 52.382862 \
   ../output/publieke-werken/downloads/DUIZ00487000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00487000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.838700293094798,52.37634901113428],[4.838616915830047,52.38308942232453],[4.852569687808244,52.383153236155735],[4.852650944030937,52.37641281243913],[4.838700293094798,52.37634901113428]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00487000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00487000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00487000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00487000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00496000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00496000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00496000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00496000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4293 4679 4.862566 52.376503 \
-gcp 1724 317 4.856188 52.383095 \
-gcp 1148 4391 4.85482 52.376919 \
   ../output/publieke-werken/downloads/DUIZ00496000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00496000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.852650944030937,52.37641281243913],[4.852569687808244,52.383153236155735],[4.866522505392917,52.383215405608176],[4.866601640550044,52.376474969687905],[4.852650944030937,52.37641281243913]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00496000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00496000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00496000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00496000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00512000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00512000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00512000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00512000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5728 4690 4.880011 52.376588 \
-gcp 5786 431 4.880108 52.383019 \
-gcp 1067 1026 4.868478 52.382086 \
   ../output/publieke-werken/downloads/DUIZ00512000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00512000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866601640550044,52.376474969687905],[4.866522505392917,52.383215405608176],[4.880475367393809,52.38327593067091],[4.880552381462476,52.376535482869734],[4.866601640550044,52.376474969687905]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00512000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00512000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00512000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00512000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00528000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00528000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00528000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00528000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 280 296 4.880475 52.383277 \
-gcp 5928 288 4.894428 52.383335 \
-gcp 5952 4720 4.894503 52.376595 \
   ../output/publieke-werken/downloads/DUIZ00528000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00528000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880552381462476,52.376535482869734],[4.880475367393809,52.38327593067091],[4.894428272620641,52.3833348113331],[4.894503165578564,52.37659435197376],[4.880552381462476,52.376535482869734]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00528000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00528000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00528000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00528000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00542000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00542000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00542000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00542000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 296 292 4.894428 52.383335 \
-gcp 5928 298 4.908381 52.383393 \
-gcp 300 4740 4.894503 52.376595 \
   ../output/publieke-werken/downloads/DUIZ00542000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00542000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894503165578564,52.37659435197376],[4.894428272620641,52.3833348113331],[4.908381219883111,52.38339204758446],[4.908453991708622,52.376651576989644],[4.894503165578564,52.37659435197376]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00542000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00542000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00542000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00542000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00553000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00553000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00553000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00553000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 300 284 4.908381 52.383393 \
-gcp 5940 299 4.922334 52.383448 \
-gcp 5930 4738 4.922404 52.376708 \
   ../output/publieke-werken/downloads/DUIZ00553000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00553000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908453991708622,52.376651576989644],[4.908381219883111,52.38339204758446],[4.922334207990888,52.3834476394148],[4.922404858662931,52.37670715790718],[4.908453991708622,52.376651576989644]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00553000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00553000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00553000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00553000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00562000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00562000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00562000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00562000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 2135 518 4.926901 52.383091 \
-gcp 407 2352 4.922674 52.380262 \
-gcp 5649 4659 4.935849 52.376886 \
   ../output/publieke-werken/downloads/DUIZ00562000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00562000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922404858662931,52.37670715790718],[4.922334207990888,52.3834476394148],[4.936287235753624,52.38350158681422],[4.936355765251757,52.376761094716606],[4.922404858662931,52.37670715790718]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00562000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00562000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00562000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00562000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00568000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00568000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00568000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00568000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 288 319 4.936287 52.383502 \
-gcp 315 4747 4.936355 52.376762 \
-gcp 5906 4710 4.950306 52.376814 \
   ../output/publieke-werken/downloads/DUIZ00568000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00568000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936355765251757,52.376761094716606],[4.936287235753624,52.38350158681422],[4.950240301980939,52.38355388977322],[4.950306710285336,52.37681338740837],[4.936355765251757,52.376761094716606]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00568000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00568000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00568000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00568000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00573000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00573000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00573000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00573000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 434 4864 4.950306 52.376814 \
-gcp 6084 4820 4.964257 52.376865 \
-gcp 401 407 4.95024 52.383555 \
   ../output/publieke-werken/downloads/DUIZ00573000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00573000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.950306710285336,52.37681338740837],[4.950240301980939,52.38355388977322],[4.964193405482441,52.38360454828254],[4.964257692573884,52.37686403597314],[4.950306710285336,52.37681338740837]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00573000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00573000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00573000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00573000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00583000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00583000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00583000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00583000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 300 370 4.964193 52.383605 \
-gcp 5940 372 4.978146 52.383654 \
-gcp 5952 4856 4.978208 52.376914 \
   ../output/publieke-werken/downloads/DUIZ00583000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00583000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.964257692573884,52.37686403597314],[4.964193405482441,52.38360454828254],[4.978146545067712,52.38365356233319],[4.9782087109276,52.376913040402066],[4.964257692573884,52.37686403597314]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00583000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00583000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00583000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00583000001-warped.tif
    

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
   ../output/publieke-werken/1970/28992/warped/DUIZ00588000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.9782087109276,52.376913040402066],[4.978146545067712,52.38365356233319],[4.992099719546314,52.38370093191648],[4.99215976415666,52.37696040068631],[4.9782087109276,52.376913040402066]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00588000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00588000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00588000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00588000001-warped.tif
    

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
   ../output/publieke-werken/1970/28992/warped/DUIZ00592000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.99215976415666,52.37696040068631],[4.992099719546314,52.38370093191648],[5.006052927727788,52.38374665702412],[5.006110851071218,52.37700611681764],[4.99215976415666,52.37696040068631]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00592000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00592000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00592000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00592000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00602000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00602000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00602000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00602000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 268 298 4.8387 52.37635 \
-gcp 5884 268 4.85265 52.376413 \
-gcp 5912 4690 4.852731 52.369673 \
   ../output/publieke-werken/downloads/DUIZ00602000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00602000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.838783641207661,52.36960859061196],[4.838700293094798,52.37634901113428],[4.852650944030937,52.37641281243913],[4.852732171843194,52.36967237939424],[4.838783641207661,52.36960859061196]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00602000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00602000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00602000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00602000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00616000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00616000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00616000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00616000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 900 338 4.854235 52.376385 \
-gcp 1406 4487 4.85548 52.370041 \
-gcp 5457 4426 4.865554 52.370136 \
-gcp 4235 286 4.862512 52.376441 \
   ../output/publieke-werken/downloads/DUIZ00616000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00616000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.852732171843194,52.36967237939424],[4.852650944030937,52.37641281243913],[4.866601640550044,52.376474969687905],[4.866680748038203,52.36973452444315],[4.852732171843194,52.36967237939424]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00616000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00616000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00616000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00616000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00635000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00635000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00635000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00635000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 2863 4325 4.872968 52.370389 \
-gcp 1565 1038 4.869829 52.375406 \
-gcp 5046 447 4.878482 52.376264 \
   ../output/publieke-werken/downloads/DUIZ00635000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00635000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866680748038203,52.36973452444315],[4.866601640550044,52.376474969687905],[4.880552381462476,52.376535482869734],[4.880629368603654,52.36979502574763],[4.866680748038203,52.36973452444315]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00635000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00635000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00635000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00635000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00656000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00656000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00656000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00656000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1042 588 4.882473 52.376074 \
-gcp 1019 3958 4.882463 52.370955 \
-gcp 4718 4325 4.89163 52.370418 \
-gcp 5614 558 4.893824 52.376169 \
   ../output/publieke-werken/downloads/DUIZ00656000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00656000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880629368603654,52.36979502574763],[4.880552381462476,52.376535482869734],[4.894503165578564,52.37659435197376],[4.894578032350497,52.36985388329698],[4.880629368603654,52.36979502574763]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00656000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00656000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00656000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00656000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00675000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00675000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00675000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00675000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 570 349 4.895235 52.376477 \
-gcp 3548 686 4.902646 52.376002 \
-gcp 834 4443 4.895938 52.370254 \
-gcp 3511 4545 4.902603 52.37012 \
   ../output/publieke-werken/downloads/DUIZ00675000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00675000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894578032350497,52.36985388329698],[4.894503165578564,52.37659435197376],[4.908453991708622,52.376651576989644],[4.908526738089654,52.369911097080795],[4.894578032350497,52.36985388329698]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00675000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00675000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00675000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00675000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00689000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00689000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00689000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00689000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1354 4325 4.911211 52.370513 \
-gcp 2625 956 4.914306 52.375635 \
-gcp 4404 4698 4.918796 52.369973 \
   ../output/publieke-werken/downloads/DUIZ00689000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00689000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908526738089654,52.369911097080795],[4.908453991708622,52.376651576989644],[4.922404858662931,52.37670715790718],[4.922475484632021,52.369966667088896],[4.908526738089654,52.369911097080795]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00689000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00689000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00689000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00689000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00703000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00703000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00703000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00703000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 3040 4615 4.929299 52.370133 \
-gcp 5685 1987 4.93586 52.374125 \
-gcp 782 2164 4.92371 52.37387 \
   ../output/publieke-werken/downloads/DUIZ00703000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00703000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922475484632021,52.369966667088896],[4.922404858662931,52.37670715790718],[4.936355765251757,52.376761094716606],[4.936424270788476,52.370020593311544],[4.922475484632021,52.369966667088896]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00703000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00703000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00703000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00703000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00711000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00711000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00711000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00711000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5333 1324 4.948933 52.375187 \
-gcp 894 562 4.937925 52.376349 \
-gcp 460 4580 4.936836 52.370254 \
   ../output/publieke-werken/downloads/DUIZ00711000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00711000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936424270788476,52.370020593311544],[4.936355765251757,52.376761094716606],[4.950306710285336,52.37681338740837],[4.950373095369869,52.37007287573915],[4.936424270788476,52.370020593311544]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00711000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00711000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00711000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00711000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00719000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00719000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00719000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00719000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 2064 3593 4.954807 52.371774 \
-gcp 274 278 4.950306 52.376814 \
-gcp 5875 265 4.964257 52.376865 \
   ../output/publieke-werken/downloads/DUIZ00719000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00719000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.950373095369869,52.37007287573915],[4.950306710285336,52.37681338740837],[4.964257692573884,52.37686403597314],[4.964321957187033,52.37012351436243],[4.950373095369869,52.37007287573915]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00719000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00719000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00719000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00719000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00721000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00721000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00721000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00721000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 308 288 4.964257 52.376865 \
-gcp 300 4722 4.964321 52.370124 \
-gcp 5902 4720 4.97827 52.370173 \
   ../output/publieke-werken/downloads/DUIZ00721000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00721000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.964321957187033,52.37012351436243],[4.964257692573884,52.37686403597314],[4.9782087109276,52.376913040402066],[4.978270855050775,52.37017250917245],[4.964321957187033,52.37012351436243]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00721000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00721000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00721000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00721000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00726000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00726000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00726000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00726000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 652 813 4.979194 52.376074 \
-gcp 2062 1820 4.982702 52.374561 \
-gcp 3698 724 4.986758 52.376238 \
   ../output/publieke-werken/downloads/DUIZ00726000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00726000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.978270855050775,52.37017250917245],[4.9782087109276,52.376913040402066],[4.99215976415666,52.37696040068631],[4.992219787771885,52.37021986016053],[4.978270855050775,52.37017250917245]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00726000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00726000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00726000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00726000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00735000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00735000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00735000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00735000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5542 638 4.851859 52.369098 \
-gcp 5891 4136 4.852776 52.363779 \
-gcp 1008 3717 4.840679 52.364388 \
   ../output/publieke-werken/downloads/DUIZ00735000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00735000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.838866960183662,52.36286816080361],[4.838783641207661,52.36960859061196],[4.852732171843194,52.36967237939424],[4.852813371259659,52.362931937067145],[4.838866960183662,52.36286816080361]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00735000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00735000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00735000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00735000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00750000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00750000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00750000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00750000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5487 3084 4.86572 52.365423 \
-gcp 5668 1278 4.866144 52.368168 \
-gcp 504 1453 4.853355 52.367909 \
   ../output/publieke-werken/downloads/DUIZ00750000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00750000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.852813371259659,52.362931937067145],[4.852732171843194,52.36967237939424],[4.866680748038203,52.36973452444315],[4.866759827871651,52.36299406991982],[4.852813371259659,52.362931937067145]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00750000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00750000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00750000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00750000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00768000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00768000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00768000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00768000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 726 663 4.867839 52.369239 \
-gcp 5819 320 4.880494 52.369707 \
-gcp 5774 3994 4.880322 52.36409 \
-gcp 422 4649 4.867018 52.363143 \
   ../output/publieke-werken/downloads/DUIZ00768000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00768000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866759827871651,52.36299406991982],[4.866680748038203,52.36973452444315],[4.880629368603654,52.36979502574763],[4.880706328831223,52.363054559350616],[4.866759827871651,52.36299406991982]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00768000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00768000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00768000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00768000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00789000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00789000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00789000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00789000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5678 596 4.894023 52.369373 \
-gcp 5026 4368 4.892478 52.363602 \
-gcp 890 4164 4.882173 52.363907 \
-gcp 1209 843 4.882935 52.368954 \
   ../output/publieke-werken/downloads/DUIZ00789000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00789000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880706328831223,52.363054559350616],[4.880629368603654,52.36979502574763],[4.894578032350497,52.36985388329698],[4.894652872949933,52.36311340534883],[4.880706328831223,52.363054559350616]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00789000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00789000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00789000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00789000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00811000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00811000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00811000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00811000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1220 301 4.897081 52.369724 \
-gcp 3864 568 4.903706 52.36937 \
-gcp 4864 4296 4.906356 52.363668 \
-gcp 718 4324 4.895981 52.363563 \
   ../output/publieke-werken/downloads/DUIZ00811000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00811000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894652872949933,52.36311340534883],[4.894578032350497,52.36985388329698],[4.908526738089654,52.369911097080795],[4.908599459039319,52.36317060790397],[4.894652872949933,52.36311340534883]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00811000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00811000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00811000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00811000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00011000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00011000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00011000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00011000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 312 4709 4.83812 52.4236 \
-gcp 5888 4722 4.85208 52.4236 \
-gcp 5902 315 4.852 52.43034 \
   ../output/publieke-werken/downloads/DUIZ00011000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00011000001.vrt

echo '{"type":"Polygon","coordinates":[]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00011000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00011000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00011000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00011000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00013000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00013000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00013000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00013000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5776 4623 4.866046 52.423658 \
-gcp 211 4615 4.852081 52.423596 \
-gcp 217 208 4.851999 52.430337 \
   ../output/publieke-werken/downloads/DUIZ00013000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00013000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.852081553031653,52.42359557998199],[4.852000097525061,52.43033593711086],[4.865967783361889,52.43039819209272],[4.866047112601932,52.42365782273422],[4.852081553031653,52.42359557998199]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00013000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00013000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00013000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00013000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00029000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00029000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00029000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00029000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 205 215 4.838115 52.423532 \
-gcp 5805 4604 4.852162 52.416856 \
-gcp 216 4625 4.838199 52.416792 \
   ../output/publieke-werken/downloads/DUIZ00029000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00029000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.838199591701414,52.41679133668233],[4.838116039209247,52.423531690912704],[4.852081553031653,52.42359557998199],[4.852162980025028,52.416855213202396],[4.838199591701414,52.41679133668233]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00029000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00029000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00029000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00029000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00033000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00033000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00033000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00033000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5769 4600 4.866126 52.416918 \
-gcp 210 4608 4.852162 52.416856 \
-gcp 204 202 4.852081 52.423596 \
   ../output/publieke-werken/downloads/DUIZ00033000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00033000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.852162980025028,52.416855213202396],[4.852081553031653,52.42359557998199],[4.866047112601932,52.42365782273422],[4.866126414072907,52.41691744372869],[4.852162980025028,52.416855213202396]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00033000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00033000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00033000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00033000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00036000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00036000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00036000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00036000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5612 3252 4.879829 52.418996 \
-gcp 196 4604 4.866126 52.416918 \
-gcp 4712 1104 4.877511 52.422229 \
   ../output/publieke-werken/downloads/DUIZ00036000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00036000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866126414072907,52.41691744372869],[4.866047112601932,52.42365782273422],[4.880012716726138,52.42371841915835],[4.880089892651725,52.41697802825022],[4.866126414072907,52.41691744372869]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00036000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00036000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00036000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00036000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00059000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00059000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00059000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00059000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 3494 1678 4.846462 52.414579 \
-gcp 5494 3307 4.851526 52.412128 \
-gcp 2114 3906 4.843029 52.411137 \
   ../output/publieke-werken/downloads/DUIZ00059000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00059000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.838283114951327,52.41005097284346],[4.838199591701414,52.41679133668233],[4.852162980025028,52.416855213202396],[4.852244378519897,52.41011483681815],[4.838283114951327,52.41005097284346]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00059000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00059000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00059000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00059000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00076000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00076000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00076000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00076000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1044 1442 4.854294 52.414972 \
-gcp 1400 4384 4.855206 52.410476 \
-gcp 3680 2808 4.860887 52.412926 \
   ../output/publieke-werken/downloads/DUIZ00076000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00076000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.852244378519897,52.41011483681815],[4.852162980025028,52.416855213202396],[4.866126414072907,52.41691744372869],[4.86620568778914,52.41017705512224],[4.852244378519897,52.41011483681815]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00076000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00076000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00076000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00076000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00082000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00082000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00082000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00082000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4316 584 4.876224 52.41649 \
-gcp 837 4675 4.867598 52.41024 \
-gcp 5848 1507 4.880016 52.415096 \
   ../output/publieke-werken/downloads/DUIZ00082000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00082000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.86620568778914,52.41017705512224],[4.866126414072907,52.41691744372869],[4.880089892651725,52.41697802825022],[4.880167041566348,52.410237627744756],[4.86620568778914,52.41017705512224]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00082000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00082000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00082000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00082000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00090000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00090000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00090000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00090000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5538 1447 4.893411 52.415139 \
-gcp 244 324 4.880177 52.416798 \
-gcp 216 2242 4.880177 52.413869 \
-gcp 4635 4521 4.891244 52.410453 \
   ../output/publieke-werken/downloads/DUIZ00090000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00090000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880167041566348,52.410237627744756],[4.880089892651725,52.41697802825022],[4.894053414568123,52.417036966756214],[4.894128438658778,52.41029655467496],[4.880167041566348,52.410237627744756]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00090000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00090000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00090000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00090000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00096000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00096000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00096000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00096000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 894 258 4.895793 52.416971 \
-gcp 5736 1772 4.907906 52.414664 \
-gcp 468 3967 4.894785 52.411294 \
   ../output/publieke-werken/downloads/DUIZ00096000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00096000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894128438658778,52.41029655467496],[4.894053414568123,52.417036966756214],[4.90801697862873,52.417094259236194],[4.908089877873669,52.41035383590237],[4.894128438658778,52.41029655467496]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00096000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00096000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00096000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00096000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00830000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00830000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00830000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00830000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5520 4143 4.921886 52.363942 \
-gcp 201 4283 4.908593 52.36367 \
-gcp 1322 348 4.911339 52.369704 \
   ../output/publieke-werken/downloads/DUIZ00830000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00830000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908599459039319,52.36317060790397],[4.908526738089654,52.369911097080795],[4.922475484632021,52.369966667088896],[4.92254608591089,52.363226167005976],[4.908599459039319,52.36317060790397]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00830000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00830000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00830000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00830000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00845000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00845000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00845000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00845000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 2220 636 4.927524 52.369321 \
-gcp 576 4196 4.923463 52.363874 \
-gcp 5500 4382 4.935763 52.363602 \
-gcp 4916 1530 4.934256 52.367975 \
   ../output/publieke-werken/downloads/DUIZ00845000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00845000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.92254608591089,52.363226167005976],[4.922475484632021,52.369966667088896],[4.936424270788476,52.370020593311544],[4.936492752376134,52.36328008264504],[4.92254608591089,52.363226167005976]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00845000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00845000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00845000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00845000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00858000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00858000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00858000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00858000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 963 4392 4.938365 52.363628 \
-gcp 1986 742 4.940881 52.369223 \
-gcp 4276 3820 4.9466 52.364522 \
   ../output/publieke-werken/downloads/DUIZ00858000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00858000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936492752376134,52.36328008264504],[4.936424270788476,52.370020593311544],[4.950373095369869,52.37007287573915],[4.950439457246515,52.363332354811625],[4.936492752376134,52.36328008264504]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00858000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00858000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00858000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00858000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00868000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00868000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00868000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00868000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 3082 1820 4.957575 52.367637 \
-gcp 1138 1954 4.95271 52.367424 \
-gcp 2743 2934 4.956749 52.365882 \
   ../output/publieke-werken/downloads/DUIZ00868000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00868000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.950439457246515,52.363332354811625],[4.950373095369869,52.37007287573915],[4.964321957187033,52.37012351436243],[4.964386199333477,52.36338298349643],[4.950439457246515,52.363332354811625]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00868000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00868000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00868000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00868000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00871000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00871000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00871000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00871000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 235 4638 4.964386 52.363384 \
-gcp 5803 4642 4.978332 52.363433 \
-gcp 238 237 4.964321 52.370124 \
   ../output/publieke-werken/downloads/DUIZ00871000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00871000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.964386199333477,52.36338298349643],[4.964321957187033,52.37012351436243],[4.978270855050775,52.37017250917245],[4.978332977448442,52.363431968690506],[4.964386199333477,52.36338298349643]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00871000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00871000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00871000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00871000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00875000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00875000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00875000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00875000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 233 241 4.97827 52.370173 \
-gcp 250 4653 4.978332 52.363433 \
-gcp 5841 4621 4.992279 52.36348 \
   ../output/publieke-werken/downloads/DUIZ00875000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00875000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.978332977448442,52.363431968690506],[4.978270855050775,52.37017250917245],[4.992219787771885,52.37021986016053],[4.992279790402813,52.36347931038522],[4.978332977448442,52.363431968690506]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00875000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00875000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00875000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00875000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00877000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00877000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00877000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00877000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 192 160 4.992219 52.370221 \
-gcp 167 4571 4.992279 52.36348 \
-gcp 5742 4584 5.006226 52.363526 \
   ../output/publieke-werken/downloads/DUIZ00877000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00877000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.992279790402813,52.36347931038522],[4.992219787771885,52.37021986016053],[5.006168754161131,52.3702655673183],[5.006226637007972,52.36352500857213],[4.992279790402813,52.36347931038522]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00877000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00877000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00877000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00877000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00879000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00879000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00879000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00879000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5803 4605 5.020173 52.36357 \
-gcp 229 4570 5.006226 52.363526 \
-gcp 259 167 5.006168 52.370266 \
   ../output/publieke-werken/downloads/DUIZ00879000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00879000001.vrt

echo '{"type":"Polygon","coordinates":[[[5.006226637007972,52.36352500857213],[5.006168754161131,52.3702655673183],[5.020117753029265,52.370309630637635],[5.020173516075278,52.36356906324324],[5.006226637007972,52.36352500857213]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00879000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00879000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00879000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00879000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00890000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00890000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00890000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00890000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 974 1032 4.840819 52.361631 \
-gcp 5519 244 4.852159 52.362879 \
-gcp 5653 4577 4.852518 52.356241 \
   ../output/publieke-werken/downloads/DUIZ00890000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00890000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.838950250037817,52.356127721755314],[4.838866960183662,52.36286816080361],[4.852813371259659,52.362931937067145],[4.85289454229496,52.35619148550395],[4.838950250037817,52.356127721755314]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00890000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00890000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00890000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00890000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00902000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00902000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00902000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00902000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1020 4433 4.855002 52.356552 \
-gcp 5322 1898 4.865592 52.36045 \
-gcp 468 316 4.853532 52.362783 \
   ../output/publieke-werken/downloads/DUIZ00902000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00902000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.85289454229496,52.35619148550395],[4.852813371259659,52.362931937067145],[4.866759827871651,52.36299406991982],[4.866838880064639,52.35625360616411],[4.85289454229496,52.35619148550395]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00902000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00902000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00902000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00902000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00922000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00922000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00922000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00922000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5055 4400 4.878933 52.356679 \
-gcp 4990 932 4.878665 52.361974 \
-gcp 646 1453 4.86785 52.361109 \
-gcp 1690 4493 4.870527 52.356493 \
   ../output/publieke-werken/downloads/DUIZ00922000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00922000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866838880064639,52.35625360616411],[4.866759827871651,52.36299406991982],[4.880706328831223,52.363054559350616],[4.880783262159048,52.35631408372479],[4.866838880064639,52.35625360616411]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00922000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00922000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00922000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00922000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00939000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00939000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00939000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00939000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 651 397 4.881787 52.362763 \
-gcp 1021 4287 4.882817 52.35681 \
-gcp 5003 4476 4.892746 52.356588 \
-gcp 4832 310 4.89221 52.362973 \
   ../output/publieke-werken/downloads/DUIZ00939000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00939000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880783262159048,52.35631408372479],[4.880706328831223,52.363054559350616],[4.894652872949933,52.36311340534883],[4.894727687390359,52.356372918175296],[4.880783262159048,52.35631408372479]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00939000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00939000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00939000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00939000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00958000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00958000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00958000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00958000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 656 592 4.895745 52.362514 \
-gcp 3088 384 4.901812 52.362868 \
-gcp 3418 4276 4.902729 52.356922 \
   ../output/publieke-werken/downloads/DUIZ00958000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00958000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894727687390359,52.356372918175296],[4.894652872949933,52.36311340534883],[4.908599459039319,52.36317060790397],[4.908672154570724,52.35643010950521],[4.894727687390359,52.356372918175296]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00958000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00958000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00958000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00958000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00974000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00974000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00974000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00974000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5010 524 4.920614 52.362714 \
-gcp 5734 4330 4.92247 52.356879 \
-gcp 1038 282 4.910663 52.363055 \
   ../output/publieke-werken/downloads/DUIZ00974000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00974000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908672154570724,52.35643010950521],[4.908599459039319,52.36317060790397],[4.92254608591089,52.363226167005976],[4.922616662512259,52.35648565770449],[4.908672154570724,52.35643010950521]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00974000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00974000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00974000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00974000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00987000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00987000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00987000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00987000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 731 308 4.923849 52.363078 \
-gcp 5446 352 4.935608 52.363068 \
-gcp 5687 4385 4.9363 52.356922 \
-gcp 726 4551 4.923887 52.356594 \
   ../output/publieke-werken/downloads/DUIZ00987000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00987000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922616662512259,52.35648565770449],[4.92254608591089,52.363226167005976],[4.936492752376134,52.36328008264504],[4.93656121002707,52.35653956276317],[4.922616662512259,52.35648565770449]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00987000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00987000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00987000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00987000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00997000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00997000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00997000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00997000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 419 384 4.937035 52.363007 \
-gcp 3378 359 4.944422 52.363063 \
-gcp 3251 3285 4.94417 52.358595 \
-gcp 514 3311 4.937335 52.358539 \
   ../output/publieke-werken/downloads/DUIZ00997000001.jpg \
   ../output/publieke-werken/1970/28992/warped/DUIZ00997000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.93656121002707,52.35653956276317],[4.936492752376134,52.36328008264504],[4.950439457246515,52.363332354811625],[4.950505795927228,52.35659182467182],[4.93656121002707,52.35653956276317]]]}' > ../output/publieke-werken/1970/28992/warped/DUIZ00997000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1970/28992/warped/DUIZ00997000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1970/28992/warped/DUIZ00997000001.vrt \
  ../output/publieke-werken/1970/28992/warped/DUIZ00997000001-warped.tif
    

# =============================================================================================
# Add overviews and create index:
# =============================================================================================

mkdir -p ../output/publieke-werken/1970/28992/index

for j in ../output/publieke-werken/1970/28992/warped/*.tif; do
  gdaladdo -r cubic \
    --config COMPRESS_OVERVIEW JPEG \
    --config PHOTOMETRIC_OVERVIEW YCBCR \
    --config INTERLEAVE_OVERVIEW PIXEL \
    $j 2 4 8 16 32 64 128
done

# Create tile indices
cd ../output/publieke-werken/1970/28992/index
gdaltindex index.shp ../warped/*.tif
ogrinfo -sql "CREATE SPATIAL INDEX ON index" index.shp
    
