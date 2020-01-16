#!/bin/bash

# Create the directory that will contain the warped TIFFs:
mkdir -p ../output/publieke-werken/downloads
mkdir -p ../output/publieke-werken/1980/28992/warped
  

# =============================================================================================
# Name: DUIZ01007000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01007000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01007000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01007000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1223 3831 4.95293 52.357905 \
-gcp 4785 4667 4.961802 52.356676 \
-gcp 3982 885 4.959753 52.362471 \
   ../output/publieke-werken/downloads/DUIZ01007000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01007000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.950505795927228,52.35659182467182],[4.950439457246515,52.363332354811625],[4.964386199333477,52.36338298349643],[4.964450419024796,52.35664244342118],[4.950505795927228,52.35659182467182]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01007000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01007000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01007000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01007000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ01010000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.964450419024796,52.35664244342118],[4.964386199333477,52.36338298349643],[4.978332977448442,52.363431968690506],[4.9783950781318,52.35669141900221],[4.964450419024796,52.35664244342118]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01010000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01010000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01010000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01010000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ01011000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.9783950781318,52.35669141900221],[4.978332977448442,52.363431968690506],[4.992279790402813,52.36347931038522],[4.992339772060261,52.35673875140638],[4.9783950781318,52.35669141900221]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01011000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01011000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01011000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01011000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01021000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01021000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01021000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01021000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4868 3479 4.850593 52.351231 \
-gcp 5348 333 4.851687 52.356041 \
-gcp 3086 1148 4.846087 52.354737 \
   ../output/publieke-werken/downloads/DUIZ01021000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01021000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.839033510785127,52.349387273513166],[4.838950250037817,52.356127721755314],[4.85289454229496,52.35619148550395],[4.852975684963722,52.34945102475071],[4.839033510785127,52.349387273513166]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01021000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01021000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01021000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01021000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01033000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01033000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01033000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01033000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4424 2334 4.863424 52.353007 \
-gcp 3004 3898 4.859916 52.350624 \
-gcp 1240 1556 4.85549 52.35416 \
   ../output/publieke-werken/downloads/DUIZ01033000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01033000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.852975684963722,52.34945102475071],[4.85289454229496,52.35619148550395],[4.866838880064639,52.35625360616411],[4.866917904631408,52.34951313322205],[4.852975684963722,52.34945102475071]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01033000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01033000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01033000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01033000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01049000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01049000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01049000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01049000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 675 567 4.868048 52.355736 \
-gcp 5701 352 4.88058 52.35608 \
-gcp 5752 3855 4.880725 52.350736 \
-gcp 371 4542 4.867276 52.349681 \
   ../output/publieke-werken/downloads/DUIZ01049000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01049000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866917904631408,52.34951313322205],[4.866838880064639,52.35625360616411],[4.880783262159048,52.35631408372479],[4.880860168600993,52.34957359891624],[4.866917904631408,52.34951313322205]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01049000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01049000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01049000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01049000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01061000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01061000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01061000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01061000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5305 390 4.893465 52.356116 \
-gcp 796 903 4.882243 52.355261 \
-gcp 3670 3542 4.889469 52.351283 \
   ../output/publieke-werken/downloads/DUIZ01061000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01061000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880860168600993,52.34957359891624],[4.880783262159048,52.35631408372479],[4.894727687390359,52.356372918175296],[4.894802475685259,52.34963242182259],[4.880860168600993,52.34957359891624]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01061000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01061000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01061000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01061000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01074000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01074000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01074000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01074000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1372 450 4.897612 52.356031 \
-gcp 1889 3287 4.898969 52.351702 \
-gcp 4816 4000 4.906265 52.350638 \
-gcp 4509 968 4.905438 52.355257 \
   ../output/publieke-werken/downloads/DUIZ01074000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01074000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894802475685259,52.34963242182259],[4.894727687390359,52.356372918175296],[4.908672154570724,52.35643010950521],[4.908744824696965,52.3496896019307],[4.894802475685259,52.34963242182259]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01074000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01074000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01074000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01074000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01087000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01087000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01087000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01087000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5789 215 4.92262 52.35649 \
-gcp 5794 4613 4.92269 52.34975 \
-gcp 213 4621 4.90875 52.34969 \
   ../output/publieke-werken/downloads/DUIZ01087000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01087000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908744824696965,52.3496896019307],[4.908672154570724,52.35643010950521],[4.922616662512259,52.35648565770449],[4.922687214448847,52.34974513923046],[4.908744824696965,52.3496896019307]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01087000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01087000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01087000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01087000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ01099000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922687214448847,52.34974513923046],[4.922616662512259,52.35648565770449],[4.93656121002707,52.35653956276317],[4.936629643753616,52.34979903371198],[4.922687214448847,52.34974513923046]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01099000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01099000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01099000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01099000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00103000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00103000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00103000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00103000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 344 408 4.92198 52.417151 \
-gcp 5956 384 4.935944 52.417205 \
-gcp 5969 4807 4.936012 52.410464 \
   ../output/publieke-werken/downloads/DUIZ00103000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00103000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922051358018237,52.410409471416834],[4.921980583640138,52.41714990568002],[4.935944228408925,52.41720390607779],[4.936012877899669,52.41046346120851],[4.922051358018237,52.410409471416834]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00103000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00103000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00103000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00103000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00110000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00110000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00110000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00110000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 3720 592 4.944411 52.416636 \
-gcp 3995 4561 4.945127 52.410608 \
-gcp 4749 3495 4.947005 52.412247 \
   ../output/publieke-werken/downloads/DUIZ00110000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00110000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936012877899669,52.41046346120851],[4.935944228408925,52.41720390607779],[4.949907911741644,52.41725626042006],[4.949974436325135,52.410515805267856],[4.936012877899669,52.41046346120851]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00110000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00110000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00110000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00110000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ00116000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.963936032101777,52.41056650358553],[4.963871632444818,52.417306968697375],[4.977835389324959,52.41735603090087],[4.97789766403672,52.41061555615256],[4.963936032101777,52.41056650358553]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00116000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00116000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00116000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00116000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ00121000001.vrt

echo '{"type":"Polygon","coordinates":[[[5.019782764862297,52.41075283926442],[5.019726865091966,52.417493340982475],[5.033690754744656,52.41753581880641],[5.033744529501285,52.4107953087449],[5.019782764862297,52.41075283926442]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00121000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00121000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00121000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00121000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00130000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00130000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00130000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00130000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5426 936 4.850544 52.409236 \
-gcp 4294 565 4.847728 52.409763 \
-gcp 1605 1606 4.841071 52.408107 \
   ../output/publieke-werken/downloads/DUIZ00130000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00130000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.838366608974079,52.403310599442186],[4.838283114951327,52.41005097284346],[4.852244378519897,52.41011483681815],[4.852325748530966,52.40337445087526],[4.838366608974079,52.403310599442186]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00130000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00130000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00130000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00130000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00141000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00141000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00141000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00141000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 2031 426 4.856799 52.409799 \
-gcp 1061 906 4.854439 52.409066 \
-gcp 2024 3100 4.856815 52.405751 \
-gcp 4688 4507 4.863532 52.403617 \
   ../output/publieke-werken/downloads/DUIZ00141000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00141000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.852325748530966,52.40337445087526],[4.852244378519897,52.41011483681815],[4.86620568778914,52.41017705512224],[4.866284933764953,52.403436656960906],[4.852325748530966,52.40337445087526]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00141000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00141000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00141000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00141000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ00148000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866284933764953,52.403436656960906],[4.86620568778914,52.41017705512224],[4.880167041566348,52.410237627744756],[4.880244163483944,52.40349721768803],[4.866284933764953,52.403436656960906]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00148000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00148000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00148000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00148000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00155000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00155000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00155000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00155000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 2968 2354 4.887071 52.40702 \
-gcp 4789 557 4.891587 52.409743 \
-gcp 660 800 4.881277 52.409357 \
   ../output/publieke-werken/downloads/DUIZ00155000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00155000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880244163483944,52.40349721768803],[4.880167041566348,52.410237627744756],[4.894128438658778,52.41029655467496],[4.894203436495817,52.403556133045946],[4.880244163483944,52.40349721768803]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00155000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00155000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00155000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00155000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00160000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00160000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00160000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00160000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 227 400 4.8942 52.409992 \
-gcp 2782 423 4.900546 52.409975 \
-gcp 2243 1405 4.899232 52.40848 \
-gcp 624 956 4.895214 52.409144 \
   ../output/publieke-werken/downloads/DUIZ00160000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00160000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894203436495817,52.403556133045946],[4.894128438658778,52.41029655467496],[4.908089877873669,52.41035383590237],[4.908162751608423,52.40361340302422],[4.894203436495817,52.403556133045946]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00160000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00160000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00160000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00160000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00164000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00164000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00164000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00164000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4286 3001 4.918308 52.406117 \
-gcp 1410 1696 4.911139 52.408079 \
-gcp 803 4302 4.909655 52.404134 \
   ../output/publieke-werken/downloads/DUIZ00164000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00164000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908162751608423,52.40361340302422],[4.908089877873669,52.41035383590237],[4.922051358018237,52.410409471416834],[4.92212210762959,52.4036690276127],[4.908162751608423,52.40361340302422]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00164000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00164000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00164000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00164000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00170000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00170000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00170000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00170000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 2144 3074 4.92651 52.406313 \
-gcp 2732 1032 4.927894 52.409409 \
-gcp 3708 3116 4.930362 52.406261 \
   ../output/publieke-werken/downloads/DUIZ00170000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00170000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.92212210762959,52.4036690276127],[4.922051358018237,52.410409471416834],[4.936012877899669,52.41046346120851],[4.936081503367124,52.403723006801485],[4.92212210762959,52.4036690276127]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00170000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00170000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00170000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00170000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00176000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00176000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00176000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00176000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4482 584 4.946626 52.409923 \
-gcp 2710 4001 4.942319 52.404716 \
-gcp 260 554 4.93616 52.409933 \
   ../output/publieke-werken/downloads/DUIZ00176000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00176000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936081503367124,52.403723006801485],[4.936012877899669,52.41046346120851],[4.949974436325135,52.410515805267856],[4.950040937628804,52.403775340581014],[4.936081503367124,52.403723006801485]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00176000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00176000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00176000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00176000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00184000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00184000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00184000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00184000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 798 2050 4.951519 52.407681 \
-gcp 4730 743 4.961239 52.409684 \
-gcp 4732 4031 4.961352 52.4047 \
   ../output/publieke-werken/downloads/DUIZ00184000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00184000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.950040937628804,52.403775340581014],[4.949974436325135,52.410515805267856],[4.963936032101777,52.41056650358553],[4.964000409222397,52.40382602894209],[4.950040937628804,52.403775340581014]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00184000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00184000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00184000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00184000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ00188000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.964000409222397,52.40382602894209],[4.963936032101777,52.41056650358553],[4.97789766403672,52.41061555615256],[4.977959916955641,52.40387507187561],[4.964000409222397,52.40382602894209]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00188000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00188000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00188000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00188000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00193000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00193000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00193000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00193000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 2528 2307 5.025596 52.407731 \
-gcp 4764 2580 5.031261 52.407329 \
-gcp 368 611 5.020291 52.410282 \
-gcp 286 4215 5.020226 52.40479 \
   ../output/publieke-werken/downloads/DUIZ00193000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00193000001.vrt

echo '{"type":"Polygon","coordinates":[[[5.019838645070346,52.40401232802586],[5.019782764862297,52.41075283926442],[5.033744529501285,52.4107953087449],[5.033798285439174,52.40405478916545],[5.019838645070346,52.40401232802586]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00193000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00193000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00193000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00193000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00199000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00199000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00199000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00199000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 232 271 4.838366 52.403311 \
-gcp 5851 254 4.852325 52.403375 \
-gcp 5872 4712 4.852406 52.396635 \
   ../output/publieke-werken/downloads/DUIZ00199000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00199000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.838450073784739,52.39657021652458],[4.838366608974079,52.403310599442186],[4.852325748530966,52.40337445087526],[4.852407090072926,52.39663405541986],[4.838450073784739,52.39657021652458]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00199000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00199000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00199000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00199000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01108000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01108000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01108000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01108000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 399 263 4.93704 52.356486 \
-gcp 743 4412 4.937931 52.350163 \
-gcp 3256 4141 4.944202 52.350582 \
-gcp 2497 1219 4.942281 52.355019 \
   ../output/publieke-werken/downloads/DUIZ01108000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01108000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936629643753616,52.34979903371198],[4.93656121002707,52.35653956276317],[4.950505795927228,52.35659182467182],[4.950572111423964,52.349851285365865],[4.936629643753616,52.34979903371198]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01108000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01108000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01108000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01108000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01115000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01115000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01115000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01115000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5984 4763 4.964514 52.349903 \
-gcp 376 380 4.950505 52.356593 \
-gcp 400 4784 4.950572 52.349852 \
   ../output/publieke-werken/downloads/DUIZ01115000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01115000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.950572111423964,52.349851285365865],[4.950505795927228,52.35659182467182],[4.964450419024796,52.35664244342118],[4.964514616272554,52.349901894182715],[4.950572111423964,52.349851285365865]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01115000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01115000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01115000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01115000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ01118000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.964514616272554,52.349901894182715],[4.964450419024796,52.35664244342118],[4.9783950781318,52.35669141900221],[4.978457157112035,52.34995086015371],[4.964514616272554,52.349901894182715]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01118000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01118000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01118000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01118000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ01120000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.978457157112035,52.34995086015371],[4.9783950781318,52.35669141900221],[4.992339772060261,52.35673875140638],[4.992399732755033,52.349998183270145],[4.978457157112035,52.34995086015371]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01120000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01120000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01120000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01120000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01134000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01134000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01134000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01134000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4744 423 4.850303 52.349147 \
-gcp 4510 1370 4.849793 52.347646 \
-gcp 2458 833 4.844638 52.348458 \
-gcp 1416 4098 4.842117 52.343477 \
-gcp 3572 4430 4.847401 52.343005 \
   ../output/publieke-werken/downloads/DUIZ01134000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01134000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.839116742440587,52.34264681612326],[4.839033510785127,52.349387273513166],[4.852975684963722,52.34945102475071],[4.853056799280559,52.34271055485344],[4.839116742440587,52.34264681612326]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01134000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01134000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01134000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01134000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01147000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01147000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01147000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01147000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1402 4222 4.856027 52.343336 \
-gcp 1876 768 4.857137 52.348619 \
-gcp 5502 2880 4.866219 52.345453 \
   ../output/publieke-werken/downloads/DUIZ01147000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01147000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.853056799280559,52.34271055485344],[4.852975684963722,52.34945102475071],[4.866917904631408,52.34951313322205],[4.866996901586189,52.34277265113968],[4.853056799280559,52.34271055485344]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01147000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01147000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01147000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01147000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01158000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01158000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01158000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01158000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 276 260 4.866917 52.349514 \
-gcp 5856 288 4.88086 52.349574 \
-gcp 5832 4688 4.880936 52.342834 \
   ../output/publieke-werken/downloads/DUIZ01158000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01158000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866996901586189,52.34277265113968],[4.866917904631408,52.34951313322205],[4.880860168600993,52.34957359891624],[4.880937048170904,52.342833104971],[4.866996901586189,52.34277265113968]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01158000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01158000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01158000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01158000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01169000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01169000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01169000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01169000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1749 3415 4.884753 52.344713 \
-gcp 5415 4525 4.89391 52.343064 \
-gcp 4352 702 4.891153 52.348891 \
-gcp 536 330 4.88162 52.349402 \
   ../output/publieke-werken/downloads/DUIZ01169000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01169000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880937048170904,52.342833104971],[4.880860168600993,52.34957359891624],[4.894802475685259,52.34963242182259],[4.894877237848093,52.34289191633672],[4.880937048170904,52.342833104971]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01169000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01169000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01169000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01169000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01180000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01180000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01180000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01180000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5787 416 4.908705 52.349396 \
-gcp 5722 4601 4.908636 52.342999 \
-gcp 872 4372 4.896539 52.343284 \
-gcp 366 504 4.895182 52.349186 \
   ../output/publieke-werken/downloads/DUIZ01180000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01180000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894877237848093,52.34289191633672],[4.894802475685259,52.34963242182259],[4.908744824696965,52.3496896019307],[4.908817469431128,52.34294908522637],[4.894877237848093,52.34289191633672]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01180000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01180000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01180000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01180000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01196000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01196000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01196000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01196000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 299 364 4.908936 52.349451 \
-gcp 4834 532 4.92026 52.349268 \
-gcp 645 3909 4.909902 52.344041 \
-gcp 5446 4378 4.921888 52.343386 \
   ../output/publieke-werken/downloads/DUIZ01196000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01196000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908817469431128,52.34294908522637],[4.908744824696965,52.3496896019307],[4.922687214448847,52.34974513923046],[4.922757741733357,52.343004611629944],[4.908817469431128,52.34294908522637]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01196000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01196000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01196000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01196000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01203000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01203000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01203000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01203000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 384 4461 4.923173 52.343261 \
-gcp 513 402 4.923393 52.349458 \
-gcp 3132 3989 4.930018 52.344028 \
-gcp 5779 275 4.936525 52.349746 \
   ../output/publieke-werken/downloads/DUIZ01203000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01203000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922757741733357,52.343004611629944],[4.922687214448847,52.34974513923046],[4.936629643753616,52.34979903371198],[4.9366980535681,52.34305849553758],[4.922757741733357,52.343004611629944]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01203000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01203000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01203000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01203000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01211000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01211000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01211000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01211000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 255 461 4.936734 52.349432 \
-gcp 4808 460 4.948091 52.349471 \
-gcp 4213 4542 4.946675 52.343238 \
   ../output/publieke-werken/downloads/DUIZ01211000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01211000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.9366980535681,52.34305849553758],[4.936629643753616,52.34979903371198],[4.950572111423964,52.349851285365865],[4.95063840374866,52.343110736939735],[4.9366980535681,52.34305849553758]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01211000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01211000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01211000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01211000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ01217000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.95063840374866,52.343110736939735],[4.950572111423964,52.349851285365865],[4.964514616272554,52.349901894182715],[4.964578791088315,52.34316133582718],[4.95063840374866,52.343110736939735]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01217000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01217000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01217000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01217000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01219000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01219000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01219000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01219000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1474 1902 4.967102 52.347662 \
-gcp 1852 2996 4.968079 52.346004 \
-gcp 4146 4860 4.973835 52.343225 \
   ../output/publieke-werken/downloads/DUIZ01219000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01219000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.964578791088315,52.34316133582718],[4.964514616272554,52.349901894182715],[4.978457157112035,52.34995086015371],[4.978519214400325,52.34321029219099],[4.964578791088315,52.34316133582718]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01219000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01219000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01219000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01219000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01220000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01220000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01220000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01220000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 252 236 4.978457 52.349952 \
-gcp 5838 254 4.992399 52.349999 \
-gcp 5828 4656 4.992459 52.343258 \
   ../output/publieke-werken/downloads/DUIZ01220000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01220000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.978519214400325,52.34321029219099],[4.978457157112035,52.34995086015371],[4.992399732755033,52.349998183270145],[4.992459672497925,52.34325760602248],[4.978519214400325,52.34321029219099]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01220000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01220000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01220000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01220000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ01223000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.992459672497925,52.34325760602248],[4.992399732755033,52.349998183270145],[5.006342342014151,52.350043863523624],[5.00640016419433,52.34330327731332],[4.992459672497925,52.34325760602248]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01223000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01223000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01223000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01223000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ01226000001.vrt

echo '{"type":"Polygon","coordinates":[[[5.00640016419433,52.34330327731332],[5.006342342014151,52.350043863523624],[5.020284983701979,52.35008790090608],[5.020340688302744,52.3433473060554],[5.00640016419433,52.34330327731332]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01226000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01226000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01226000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01226000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01237000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01237000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01237000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01237000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4080 4228 4.848796 52.336565 \
-gcp 4894 1598 4.850802 52.340567 \
-gcp 1472 376 4.842283 52.342406 \
   ../output/publieke-werken/downloads/DUIZ01237000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01237000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.83919994501918,52.335906349631614],[4.839116742440587,52.34264681612326],[4.853056799280559,52.34271055485344],[4.85313788526007,52.3359700758583],[4.83919994501918,52.335906349631614]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01237000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01237000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01237000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01237000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01250000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01250000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01250000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01250000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 2198 216 4.857979 52.342714 \
-gcp 4072 1756 4.862657 52.340397 \
-gcp 5258 364 4.865613 52.34255 \
-gcp 1432 2022 4.856131 52.339951 \
   ../output/publieke-werken/downloads/DUIZ01250000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01250000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.85313788526007,52.3359700758583],[4.853056799280559,52.34271055485344],[4.866996901586189,52.34277265113968],[4.867075870943207,52.33603215996313],[4.85313788526007,52.3359700758583]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01250000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01250000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01250000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01250000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01260000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01260000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01260000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01260000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 382 462 4.86741 52.342386 \
-gcp 4538 590 4.877774 52.342248 \
-gcp 798 4174 4.868504 52.33669 \
   ../output/publieke-werken/downloads/DUIZ01260000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01260000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.867075870943207,52.33603215996313],[4.866996901586189,52.34277265113968],[4.880937048170904,52.342833104971],[4.881013900882621,52.33609260193514],[4.867075870943207,52.33603215996313]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01260000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01260000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01260000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01260000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01269000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01269000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01269000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01269000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 268 256 4.880936 52.342834 \
-gcp 5848 280 4.894877 52.342893 \
-gcp 5828 4680 4.894951 52.336152 \
   ../output/publieke-werken/downloads/DUIZ01269000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01269000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.881013900882621,52.33609260193514],[4.880937048170904,52.342833104971],[4.894877237848093,52.34289191633672],[4.894951973892326,52.336151401763736],[4.881013900882621,52.33609260193514]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01269000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01269000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01269000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01269000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01279000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01279000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01279000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01279000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5707 1634 4.908582 52.340796 \
-gcp 482 1356 4.895541 52.341141 \
-gcp 3963 4191 4.90429 52.336873 \
   ../output/publieke-werken/downloads/DUIZ01279000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01279000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894951973892326,52.336151401763736],[4.894877237848093,52.34289191633672],[4.908817469431128,52.34294908522637],[4.908890088786293,52.33620855943839],[4.894951973892326,52.336151401763736]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01279000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01279000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01279000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01279000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01290000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01290000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01290000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01290000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 362 396 4.908817 52.34295 \
-gcp 5944 396 4.922757 52.343005 \
-gcp 5950 4806 4.922828 52.336265 \
   ../output/publieke-werken/downloads/DUIZ01290000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01290000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908890088786293,52.33620855943839],[4.908817469431128,52.34294908522637],[4.922757741733357,52.343004611629944],[4.922828244378485,52.33626407494904],[4.908890088786293,52.33620855943839]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01290000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01290000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01290000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01290000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ01298000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922828244378485,52.33626407494904],[4.922757741733357,52.343004611629944],[4.9366980535681,52.34305849553758],[4.936766439482835,52.336317948285966],[4.922828244378485,52.33626407494904]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01298000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01298000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01298000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01298000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01306000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01306000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01306000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01306000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4914 891 4.948407 52.34206 \
-gcp 5176 4198 4.949062 52.337023 \
-gcp 334 3992 4.937008 52.337347 \
-gcp 3159 255 4.944035 52.343032 \
   ../output/publieke-werken/downloads/DUIZ01306000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01306000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936766439482835,52.336317948285966],[4.9366980535681,52.34305849553758],[4.95063840374866,52.343110736939735],[4.950704672913256,52.336370179439555],[4.936766439482835,52.336317948285966]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01306000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01306000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01306000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01306000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ01309000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.950704672913256,52.336370179439555],[4.95063840374866,52.343110736939735],[4.964578791088315,52.34316133582718],[4.964642943483637,52.33642076840057],[4.950704672913256,52.336370179439555]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01309000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01309000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01309000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01309000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01311000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01311000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01311000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01311000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 2862 2014 4.970798 52.340806 \
-gcp 1072 1379 4.966346 52.341776 \
-gcp 738 3582 4.965552 52.3384 \
   ../output/publieke-werken/downloads/DUIZ01311000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01311000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.964642943483637,52.33642076840057],[4.964578791088315,52.34316133582718],[4.978519214400325,52.34321029219099],[4.978581250007844,52.33646971516012],[4.964642943483637,52.33642076840057]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01311000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01311000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01311000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01311000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01312000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01312000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01312000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01312000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 292 4741 4.978581 52.33647 \
-gcp 5869 4717 4.992519 52.336518 \
-gcp 278 345 4.978519 52.343211 \
   ../output/publieke-werken/downloads/DUIZ01312000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01312000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.978581250007844,52.33646971516012],[4.978519214400325,52.34321029219099],[4.992459672497925,52.34325760602248],[4.992519591299728,52.33651701970952],[4.978581250007844,52.33646971516012]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01312000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01312000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01312000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01312000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ01313000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.992519591299728,52.33651701970952],[4.992459672497925,52.34325760602248],[5.00640016419433,52.34330327731332],[5.006457966173121,52.33656268204044],[4.992519591299728,52.33651701970952]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01313000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01313000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01313000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01313000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ01322000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.839283118535881,52.32916587408433],[4.83919994501918,52.335906349631614],[4.85313788526007,52.3359700758583],[4.853218942916848,52.32922958781129],[4.839283118535881,52.32916587408433]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01322000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01322000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01322000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01322000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01331000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01331000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01331000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01331000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5112 1088 4.865355 52.334664 \
-gcp 2272 988 4.858291 52.334801 \
-gcp 2030 3857 4.857717 52.330448 \
   ../output/publieke-werken/downloads/DUIZ01331000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01331000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.853218942916848,52.32922958781129],[4.85313788526007,52.3359700758583],[4.867075870943207,52.33603215996313],[4.867154812716668,52.32929165973841],[4.853218942916848,52.32922958781129]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01331000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01331000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01331000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01331000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01335000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01335000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01335000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01335000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4750 1054 4.87838 52.334792 \
-gcp 1462 1312 4.870205 52.334379 \
-gcp 730 3744 4.868413 52.330665 \
   ../output/publieke-werken/downloads/DUIZ01335000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01335000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.867154812716668,52.32929165973841],[4.867075870943207,52.33603215996313],[4.881013900882621,52.33609260193514],[4.88109072674998,52.329352089854716],[4.867154812716668,52.32929165973841]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01335000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01335000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01335000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01335000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01340000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01340000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01340000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01340000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 3404 1743 4.889023 52.333795 \
-gcp 3538 4157 4.889318 52.33012 \
-gcp 985 3806 4.882967 52.330655 \
-gcp 1271 1254 4.88368 52.334533 \
   ../output/publieke-werken/downloads/DUIZ01340000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01340000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.88109072674998,52.329352089854716],[4.881013900882621,52.33609260193514],[4.894951973892326,52.336151401763736],[4.895026683831403,52.32941087814966],[4.88109072674998,52.329352089854716]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01340000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01340000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01340000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01340000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ01347000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.895026683831403,52.32941087814966],[4.894951973892326,52.336151401763736],[4.908890088786293,52.33620855943839],[4.908962682775527,52.329468024612694],[4.895026683831403,52.32941087814966]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01347000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01347000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01347000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01347000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01353000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01353000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01353000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01353000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4392 1042 4.918801 52.335355 \
-gcp 4868 4431 4.920008 52.3302 \
-gcp 690 1607 4.909633 52.334456 \
   ../output/publieke-werken/downloads/DUIZ01353000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01353000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908962682775527,52.329468024612694],[4.908890088786293,52.33620855943839],[4.922828244378485,52.33626407494904],[4.922898722396922,52.329523529233846],[4.908962682775527,52.329468024612694]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01353000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01353000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01353000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01353000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01356000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01356000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01356000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01356000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 393 345 4.922828 52.336265 \
-gcp 376 4754 4.922898 52.329524 \
-gcp 5952 4783 4.936834 52.329578 \
   ../output/publieke-werken/downloads/DUIZ01356000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01356000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922898722396922,52.329523529233846],[4.922828244378485,52.33626407494904],[4.936766439482835,52.336317948285966],[4.93683480151013,52.32957739200323],[4.922898722396922,52.329523529233846]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01356000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01356000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01356000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01356000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01361000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01361000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01361000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01361000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1732 4060 4.940527 52.33053 \
-gcp 2424 1130 4.942185 52.334995 \
-gcp 882 1316 4.93836 52.334697 \
   ../output/publieke-werken/downloads/DUIZ01361000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01361000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.93683480151013,52.32957739200323],[4.936766439482835,52.336317948285966],[4.950704672913256,52.336370179439555],[4.950770918929674,52.32962961291134],[4.93683480151013,52.32957739200323]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01361000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01361000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01361000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01361000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01362000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01362000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01362000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01362000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 507 512 4.95145 52.33593 \
-gcp 526 4637 4.95151 52.32963 \
-gcp 5808 4612 4.96471 52.32968 \
   ../output/publieke-werken/downloads/DUIZ01362000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01362000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.950770918929674,52.32962961291134],[4.950704672913256,52.336370179439555],[4.964642943483637,52.33642076840057],[4.964707073470058,52.32968019194897],[4.950770918929674,52.32962961291134]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01362000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01362000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01362000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01362000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01365000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01365000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01365000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01365000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5770 4853 4.978643 52.32973 \
-gcp 176 4847 4.964707 52.329681 \
-gcp 186 437 4.964642 52.336421 \
   ../output/publieke-werken/downloads/DUIZ01365000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01365000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.964707073470058,52.32968019194897],[4.964642943483637,52.33642076840057],[4.978581250007844,52.33646971516012],[4.978643263945758,52.329729129107186],[4.964707073470058,52.32968019194897]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01365000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01365000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01365000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01365000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ01367000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.978643263945758,52.329729129107186],[4.978581250007844,52.33646971516012],[4.992519591299728,52.33651701970952],[4.992579489171233,52.32977642437731],[4.978643263945758,52.329729129107186]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01367000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01367000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01367000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01367000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01383000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01383000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01383000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01383000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5129 1396 4.865425 52.327478 \
-gcp 2086 650 4.857942 52.328609 \
-gcp 1746 4193 4.857116 52.323213 \
   ../output/publieke-werken/downloads/DUIZ01383000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01383000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.853299972265478,52.322489090758516],[4.853218942916848,52.32922958781129],[4.867154812716668,52.32929165973841],[4.867233726920776,52.32255115051162],[4.853299972265478,52.322489090758516]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01383000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01383000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01383000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01383000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01388000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01388000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01388000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01388000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 2038 1828 4.871771 52.326855 \
-gcp 1464 4144 4.870403 52.323344 \
-gcp 5288 4061 4.879909 52.323524 \
   ../output/publieke-werken/downloads/DUIZ01388000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01388000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.867233726920776,52.32255115051162],[4.867154812716668,52.32929165973841],[4.88109072674998,52.329352089854716],[4.881167525786795,52.32261156877589],[4.867233726920776,52.32255115051162]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01388000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01388000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01388000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01388000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01395000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01395000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01395000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01395000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1070 1564 4.88287 52.327658 \
-gcp 718 4466 4.88198 52.323232 \
-gcp 4190 3662 4.890643 52.324465 \
   ../output/publieke-werken/downloads/DUIZ01395000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01395000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.881167525786795,52.32261156877589],[4.88109072674998,52.329352089854716],[4.895026683831403,52.32941087814966],[4.895101367678768,52.32267034554065],[4.881167525786795,52.32261156877589]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01395000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01395000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01395000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01395000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01403000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01403000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01403000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01403000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 6016 4813 4.909035 52.322728 \
-gcp 431 4796 4.895101 52.322671 \
-gcp 449 384 4.895026 52.329412 \
   ../output/publieke-werken/downloads/DUIZ01403000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01403000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.895101367678768,52.32267034554065],[4.895026683831403,52.32941087814966],[4.908962682775527,52.329468024612694],[4.909035251411892,52.322727480795486],[4.895101367678768,52.32267034554065]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01403000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01403000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01403000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01403000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01405000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01405000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01405000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01405000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 408 360 4.908962 52.329469 \
-gcp 392 4768 4.909035 52.322728 \
-gcp 5969 4781 4.922969 52.322784 \
   ../output/publieke-werken/downloads/DUIZ01405000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01405000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.909035251411892,52.322727480795486],[4.908962682775527,52.329468024612694],[4.922898722396922,52.329523529233846],[4.922969175801345,52.32278297453035],[4.909035251411892,52.322727480795486]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01405000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01405000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01405000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01405000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01410000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01410000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01410000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01410000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 571 2772 4.923565 52.325983 \
-gcp 3156 2734 4.930002 52.326108 \
-gcp 4868 556 4.934197 52.329439 \
   ../output/publieke-werken/downloads/DUIZ01410000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01410000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922969175801345,52.32278297453035],[4.922898722396922,52.329523529233846],[4.93683480151013,52.32957739200323],[4.936903139662282,52.32283682673543],[4.922969175801345,52.32278297453035]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01410000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01410000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01410000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01410000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01414000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01414000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01414000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01414000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5921 256 4.95077 52.32963 \
-gcp 669 3598 4.93777 52.324475 \
-gcp 663 542 4.937697 52.329104 \
   ../output/publieke-werken/downloads/DUIZ01414000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01414000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936903139662282,52.32283682673543],[4.93683480151013,52.32957739200323],[4.950770918929674,52.32962961291134],[4.950837141809837,52.322889037401204],[4.936903139662282,52.32283682673543]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01414000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01414000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01414000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01414000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01418000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01418000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01418000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01418000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 333 4887 4.950837 52.32289 \
-gcp 5912 4863 4.964771 52.32294 \
-gcp 316 478 4.95077 52.32963 \
   ../output/publieke-werken/downloads/DUIZ01418000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01418000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.950837141809837,52.322889037401204],[4.950770918929674,52.32962961291134],[4.964707073470058,52.32968019194897],[4.964771181059121,52.32293960651844],[4.950837141809837,52.322889037401204]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01418000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01418000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01418000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01418000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01421000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01421000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01421000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01421000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5913 452 4.97865 52.32973 \
-gcp 5921 4854 4.97871 52.32299 \
-gcp 342 4866 4.96477 52.32294 \
   ../output/publieke-werken/downloads/DUIZ01421000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01421000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.964771181059121,52.32293960651844],[4.964707073470058,52.32968019194897],[4.978643263945758,52.329729129107186],[4.978705256225223,52.32298853407818],[4.964771181059121,52.32293960651844]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01421000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01421000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01421000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01421000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ01423000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.978705256225223,52.32298853407818],[4.978643263945758,52.329729129107186],[4.992579489171233,52.32977642437731],[4.99263936612321,52.323035820071894],[4.978705256225223,52.32298853407818]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01423000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01423000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01423000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01423000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01426000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01426000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01426000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01426000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5925 4675 5.006573 52.323082 \
-gcp 345 4693 4.992639 52.323037 \
-gcp 336 289 4.992579 52.329777 \
   ../output/publieke-werken/downloads/DUIZ01426000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01426000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.99263936612321,52.323035820071894],[4.992579489171233,52.32977642437731],[5.006515747960924,52.32982207775099],[5.006573509568134,52.32308146449107],[4.99263936612321,52.323035820071894]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01426000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01426000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01426000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01426000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01429000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01429000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01429000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01429000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 2016 1014 4.843871 52.321242 \
-gcp 1198 4561 4.84187 52.315828 \
-gcp 4908 4366 4.851118 52.316156 \
   ../output/publieke-werken/downloads/DUIZ01429000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01429000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.839449378443442,52.31568489600724],[4.839366263005651,52.32242538952755],[4.853299972265478,52.322489090758516],[4.853380973320529,52.315748584746075],[4.839449378443442,52.31568489600724]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01429000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01429000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01429000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01429000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01434000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01434000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01434000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01434000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 2152 385 4.85813 52.322239 \
-gcp 4933 964 4.865093 52.321376 \
-gcp 1927 2990 4.857615 52.318261 \
-gcp 4892 2659 4.864996 52.318786 \
   ../output/publieke-werken/downloads/DUIZ01434000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01434000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.853380973320529,52.315748584746075],[4.853299972265478,52.322489090758516],[4.867233726920776,52.32255115051162],[4.867312613569721,52.315810632328834],[4.853380973320529,52.315748584746075]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01434000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01434000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01434000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01434000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01441000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01441000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01441000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01441000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1787 939 4.871128 52.321435 \
-gcp 5037 1080 4.879239 52.321272 \
-gcp 4946 4423 4.879072 52.316169 \
-gcp 306 4302 4.867496 52.316302 \
   ../output/publieke-werken/downloads/DUIZ01441000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01441000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.867312613569721,52.315810632328834],[4.867233726920776,52.32255115051162],[4.881167525786795,52.32261156877589],[4.881244298006884,52.31587103874464],[4.867312613569721,52.315810632328834]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01441000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01441000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01441000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01441000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01445000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01445000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01445000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01445000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 242 236 4.881167 52.322612 \
-gcp 5823 4637 4.895175 52.31593 \
-gcp 233 4652 4.881244 52.315872 \
   ../output/publieke-werken/downloads/DUIZ01445000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01445000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.881244298006884,52.31587103874464],[4.881167525786795,52.32261156877589],[4.895101367678768,52.32267034554065],[4.895176025447854,52.31592980398271],[4.881244298006884,52.31587103874464]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01445000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01445000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01445000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01445000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01450000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01450000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01450000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01450000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4934 2564 4.906817 52.31916 \
-gcp 668 968 4.896158 52.321537 \
-gcp 4060 4239 4.904703 52.316586 \
   ../output/publieke-werken/downloads/DUIZ01450000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01450000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.895176025447854,52.31592980398271],[4.895101367678768,52.32267034554065],[4.909035251411892,52.322727480795486],[4.909107794708438,52.31598692803279],[4.895176025447854,52.31592980398271]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01450000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01450000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01450000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01450000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ01452000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.909107794708438,52.31598692803279],[4.909035251411892,52.322727480795486],[4.922969175801345,52.32278297453035],[4.923039604604426,52.31604241088469],[4.909107794708438,52.31598692803279]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01452000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01452000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01452000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01452000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ01456000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.923039604604426,52.31604241088469],[4.922969175801345,52.32278297453035],[4.936903139662282,52.32283682673543],[4.936971453951585,52.31609625252865],[4.923039604604426,52.31604241088469]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01456000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01456000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01456000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01456000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01459000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01459000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01459000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01459000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 2432 3932 4.942281 52.31755 \
-gcp 4584 1998 4.947538 52.320508 \
-gcp 5672 4216 4.950435 52.31713 \
   ../output/publieke-werken/downloads/DUIZ01459000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01459000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936971453951585,52.31609625252865],[4.936903139662282,52.32283682673543],[4.950837141809837,52.322889037401204],[4.950903341565653,52.31614845295516],[4.936971453951585,52.31609625252865]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01459000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01459000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01459000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01459000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01464000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01464000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01464000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01464000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4700 3291 4.961776 52.31857 \
-gcp 3700 1463 4.959227 52.321331 \
-gcp 1071 4538 4.952763 52.316605 \
   ../output/publieke-werken/downloads/DUIZ01464000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01464000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.950903341565653,52.31614845295516],[4.950837141809837,52.322889037401204],[4.964771181059121,52.32293960651844],[4.964835266262355,52.316199012155025],[4.950903341565653,52.31614845295516]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01464000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01464000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01464000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01464000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01468000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01468000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01468000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01468000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 410 285 4.978705 52.322989 \
-gcp 420 4691 4.978767 52.316249 \
-gcp 5998 4671 4.992699 52.316296 \
   ../output/publieke-werken/downloads/DUIZ01468000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01468000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.978767226857388,52.31624793011928],[4.978705256225223,52.32298853407818],[4.99263936612321,52.323035820071894],[4.992699222166431,52.31629520683928],[4.978767226857388,52.31624793011928]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01468000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01468000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01468000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01468000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01471000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01471000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01471000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01471000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 2438 4594 4.998082 52.316448 \
-gcp 272 278 4.992639 52.323037 \
-gcp 4886 2174 5.004176 52.32017 \
   ../output/publieke-werken/downloads/DUIZ01471000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01471000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.992699222166431,52.31629520683928],[4.99263936612321,52.323035820071894],[5.006573509568134,52.32308146449107],[5.006631251005145,52.316340842306715],[4.992699222166431,52.31629520683928]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01471000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01471000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01471000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01471000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ01475000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.853461946096564,52.30900806981998],[4.853380973320529,52.315748584746075],[4.867312613569721,52.315810632328834],[4.867391472677689,52.30907010523614],[4.853461946096564,52.30900806981998]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01475000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01475000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01475000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01475000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01481000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01481000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01481000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01481000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4880 1857 4.948611 52.314034 \
-gcp 5672 3294 4.950569 52.311831 \
-gcp 4768 3800 4.948241 52.311024 \
-gcp 3240 1142 4.944448 52.315176 \
   ../output/publieke-werken/downloads/DUIZ01481000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01481000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.937039744390318,52.30935566942894],[4.936971453951585,52.31609625252865],[4.950903341565653,52.31614845295516],[4.950969518209026,52.30940785961932],[4.937039744390318,52.30935566942894]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01481000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01481000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01481000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01481000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01487000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01487000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01487000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01487000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 264 341 4.950903 52.316149 \
-gcp 268 4747 4.950969 52.309409 \
-gcp 5847 4740 4.964899 52.309459 \
   ../output/publieke-werken/downloads/DUIZ01487000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01487000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.950969518209026,52.30940785961932],[4.950903341565653,52.31614845295516],[4.964835266262355,52.316199012155025],[4.964899329091282,52.3094584089048],[4.950969518209026,52.30940785961932]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01487000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01487000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01487000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01487000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01490000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01490000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01490000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01490000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 3306 4576 4.972242 52.309876 \
-gcp 5250 3626 4.977059 52.311355 \
-gcp 1989 1488 4.968916 52.314579 \
   ../output/publieke-werken/downloads/DUIZ01490000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01490000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.964899329091282,52.3094584089048],[4.964835266262355,52.316199012155025],[4.978767226857388,52.31624793011928],[4.978829175853397,52.309507317276456],[4.964899329091282,52.3094584089048]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01490000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01490000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01490000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01490000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01494000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01494000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01494000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01494000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1534 365 4.981951 52.316153 \
-gcp 2856 4237 4.985299 52.310227 \
-gcp 4942 559 4.990459 52.315864 \
   ../output/publieke-werken/downloads/DUIZ01494000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01494000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.978829175853397,52.309507317276456],[4.978767226857388,52.31624793011928],[4.992699222166431,52.31629520683928],[4.992759057311657,52.309554584725625],[4.978829175853397,52.309507317276456]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01494000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01494000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01494000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01494000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ01497000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.992759057311657,52.309554584725625],[4.992699222166431,52.31629520683928],[5.006631251005145,52.316340842306715],[5.006688972282333,52.309600211243996],[4.992759057311657,52.309554584725625]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01497000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01497000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01497000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01497000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01505000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01505000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01505000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01505000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 304 303 4.936895 52.310158 \
-gcp 5904 391 4.951057 52.310263 \
-gcp 5840 4711 4.951658 52.303073 \
   ../output/publieke-werken/downloads/DUIZ01505000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01505000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.937108010990754,52.30261507748235],[4.937039744390318,52.30935566942894],[4.950969518209026,52.30940785961932],[4.951035671751844,52.302667257439694],[4.937108010990754,52.30261507748235]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01505000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01505000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01505000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01505000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01509000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01509000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01509000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01509000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1032 2619 4.952935 52.305861 \
-gcp 1328 965 4.953675 52.30842 \
-gcp 3333 512 4.958696 52.309092 \
-gcp 4518 1392 4.961599 52.307741 \
   ../output/publieke-werken/downloads/DUIZ01509000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01509000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.951035671751844,52.302667257439694],[4.950969518209026,52.30940785961932],[4.964899329091282,52.3094584089048],[4.964963369557415,52.30271779681381],[4.951035671751844,52.302667257439694]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01509000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01509000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01509000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01509000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ01515000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.964963369557415,52.30271779681381],[4.964899329091282,52.3094584089048],[4.978829175853397,52.309507317276456],[4.978891103224382,52.302766695595736],[4.964963369557415,52.30271779681381]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01515000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01515000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01515000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01515000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ01524000001.vrt

echo '{"type":"Polygon","coordinates":[[[5.006746673410076,52.302859571348975],[5.006688972282333,52.309600211243996],[5.020618919581675,52.30964419682351],[5.02067450756254,52.302903548303796],[5.006746673410076,52.302859571348975]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01524000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01524000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01524000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01524000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01532000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01532000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01532000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01532000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 3136 950 4.958197 52.30182 \
-gcp 5364 804 4.963755 52.302073 \
-gcp 5565 4602 4.964353 52.296299 \
   ../output/publieke-werken/downloads/DUIZ01532000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01532000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.951101802206001,52.295926646462405],[4.951035671751844,52.302667257439694],[4.964963369557415,52.30271779681381],[4.965027387672261,52.29597717592816],[4.951101802206001,52.295926646462405]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01532000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01532000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01532000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01532000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01543000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01543000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01543000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01543000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 72 119 5.007234 52.302892 \
-gcp 6168 151 4.994831 52.302866 \
-gcp 6208 5063 4.995089 52.296305 \
   ../output/publieke-werken/downloads/DUIZ01543000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01543000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.992878664951134,52.29607331403923],[4.992818871569642,52.302813953776926],[5.006746673410076,52.302859571348975],[5.00680435439874,52.296118922667624],[4.992878664951134,52.29607331403923]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01543000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01543000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01543000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01543000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01546000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01546000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01546000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01546000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5771 4870 4.895474 52.288968 \
-gcp 198 4851 4.881551 52.288909 \
-gcp 222 439 4.881474 52.29565 \
   ../output/publieke-werken/downloads/DUIZ01546000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01546000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.881551118995851,52.288908830017014],[4.881474453904751,52.29564939539715],[4.895399842419596,52.29570812607628],[4.895474396009686,52.28896754918343],[4.881551118995851,52.288908830017014]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01546000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01546000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01546000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01546000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01552000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01552000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01552000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01552000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 252 4845 4.951167 52.289187 \
-gcp 5834 4834 4.965091 52.289237 \
-gcp 5832 432 4.965027 52.295978 \
   ../output/publieke-werken/downloads/DUIZ01552000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01552000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.951167909583367,52.289186026733454],[4.951101802206001,52.295926646462405],[4.965027387672261,52.29597717592816],[4.965091383447318,52.289236546293836],[4.951167909583367,52.289186026733454]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01552000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01552000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01552000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01552000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01558000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01558000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01558000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01558000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 715 633 4.966153 52.295718 \
-gcp 5833 4898 4.979014 52.289286 \
-gcp 250 4876 4.965091 52.289237 \
   ../output/publieke-werken/downloads/DUIZ01558000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01558000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.965091383447318,52.289236546293836],[4.965027387672261,52.29597717592816],[4.978953008981471,52.296026065123264],[4.979014893135784,52.28928542590512],[4.965091383447318,52.289236546293836]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01558000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01558000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01558000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01558000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ01568000001.vrt

echo '{"type":"Polygon","coordinates":[[[5.006862015258686,52.289378265246135],[5.00680435439874,52.296118922667624],[5.020730076141755,52.296162891000456],[5.020785625329296,52.28942222495953],[5.006862015258686,52.289378265246135]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01568000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01568000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01568000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01568000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01576000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01576000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01576000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01576000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 3496 2048 4.973245 52.286833 \
-gcp 3748 3032 4.973888 52.285317 \
-gcp 4436 4444 4.975626 52.283197 \
-gcp 5700 1504 4.978706 52.287666 \
   ../output/publieke-werken/downloads/DUIZ01576000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01576000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.965155356894075,52.28249590795702],[4.965091383447318,52.289236546293836],[4.979014893135784,52.28928542590512],[4.979076755698427,52.28254477798733],[4.965155356894075,52.28249590795702]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01576000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01576000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01576000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01576000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ01582000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.99299818912759,52.282592008381236],[4.992938437466873,52.2893326655587],[5.006862015258686,52.289378265246135],[5.006919656000269,52.28263759913053],[4.99299818912759,52.282592008381236]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01582000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01582000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01582000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01582000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01586000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01586000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01586000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01586000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1388 624 4.967709 52.282705 \
-gcp 6032 4945 4.979339 52.275458 \
-gcp 5904 497 4.978738 52.283046 \
-gcp 544 4896 4.965348 52.275458 \
   ../output/publieke-werken/downloads/DUIZ01586000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01586000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.965219308024018,52.27575526096365],[4.965155356894075,52.28249590795702],[4.979076755698427,52.28254477798733],[4.979138596680509,52.27580412141589],[4.965219308024018,52.27575526096365]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01586000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01586000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01586000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01586000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00020000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00020000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00020000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00020000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 214 199 4.865967 52.430399 \
-gcp 198 4621 4.866046 52.423658 \
-gcp 5798 4630 4.880012 52.423719 \
   ../output/publieke-werken/downloads/DUIZ00020000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00020000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866047112601932,52.42365782273422],[4.865967783361889,52.43039819209272],[4.87993551377565,52.4304588004231],[4.880012716726138,52.42371841915835],[4.866047112601932,52.42365782273422]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00020000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00020000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00020000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00020000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01594000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01594000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01594000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01594000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 198 4622 4.782254 52.42326 \
-gcp 219 196 4.782161 52.430001 \
-gcp 5800 4627 4.796219 52.423331 \
   ../output/publieke-werken/downloads/DUIZ01594000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01594000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880012716726138,52.42371841915835],[4.87993551377565,52.4304588004231],[4.893903287571761,52.43051776209121],[4.893978364210307,52.42377736924362],[4.880012716726138,52.42371841915835]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01594000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01594000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01594000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01594000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01597000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01597000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01597000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01597000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 214 4629 4.768288 52.423188 \
-gcp 5800 4611 4.782254 52.42326 \
-gcp 211 211 4.768194 52.429928 \
   ../output/publieke-werken/downloads/DUIZ01597000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01597000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.893978364210307,52.42377736924362],[4.893903287571761,52.43051776209121],[4.90787110355561,52.43057507708661],[4.907944053860436,52.423834672979616],[4.893978364210307,52.42377736924362]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01597000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01597000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01597000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01597000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00024000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00024000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00024000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00024000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 2526 898 4.913732 52.429536 \
-gcp 3156 938 4.915277 52.429458 \
-gcp 4392 980 4.918367 52.429392 \
-gcp 2272 1560 4.913185 52.428516 \
-gcp 2730 3732 4.914258 52.425219 \
-gcp 946 3656 4.909859 52.42529 \
-gcp 5626 1036 4.921478 52.429333 \
-gcp 4308 3888 4.918249 52.424931 \
-gcp 3580 4060 4.916425 52.424721 \
   ../output/publieke-werken/downloads/DUIZ00024000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00024000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.907944053860436,52.423834672979616],[4.90787110355561,52.43057507708661],[4.921838960532559,52.43063074539914],[4.921909784482512,52.42389033035611],[4.907944053860436,52.423834672979616]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00024000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00024000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00024000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00024000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01607000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01607000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01607000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01607000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 888 3687 4.825981 52.418335 \
-gcp 1801 1980 4.828228 52.42093 \
-gcp 5585 884 4.837632 52.422621 \
   ../output/publieke-werken/downloads/DUIZ01607000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01607000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.824236250295367,52.41672581417984],[4.824150572328629,52.42346615553768],[4.838116039209247,52.423531690912704],[4.838199591701414,52.41679133668233],[4.824236250295367,52.41672581417984]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01607000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01607000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01607000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01607000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01613000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01613000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01613000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01613000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5796 1594 4.823953 52.42143 \
-gcp 2144 300 4.814849 52.423354 \
-gcp 524 4300 4.810858 52.417256 \
   ../output/publieke-werken/downloads/DUIZ01613000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01613000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.810272957000164,52.416658645706526],[4.810185153583697,52.423398973868586],[4.824150572328629,52.42346615553768],[4.824236250295367,52.41672581417984],[4.810272957000164,52.416658645706526]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01613000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01613000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01613000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01613000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01618000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01618000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01618000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01618000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 198 263 4.796219 52.423331 \
-gcp 5810 264 4.810184 52.4234 \
-gcp 5821 4676 4.810272 52.416659 \
   ../output/publieke-werken/downloads/DUIZ01618000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01618000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.796309713009052,52.41658983127432],[4.796219784168306,52.42333014591728],[4.810185153583697,52.423398973868586],[4.810272957000164,52.416658645706526],[4.796309713009052,52.41658983127432]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01618000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01618000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01618000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01618000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01622000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01622000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01622000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01622000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 206 274 4.782254 52.42326 \
-gcp 5816 4705 4.796309 52.41659 \
-gcp 194 4700 4.782346 52.41652 \
   ../output/publieke-werken/downloads/DUIZ01622000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01622000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.782346519515248,52.41651937089541],[4.782254465276297,52.423259671696],[4.796219784168306,52.42333014591728],[4.796309713009052,52.41658983127432],[4.782346519515248,52.41651937089541]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01622000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01622000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01622000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01622000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01626000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01626000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01626000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01626000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 2982 2794 4.774847 52.419611 \
-gcp 5536 3128 4.781295 52.419127 \
-gcp 5724 4752 4.781832 52.416608 \
   ../output/publieke-werken/downloads/DUIZ01626000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01626000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.768383377711945,52.41644726458229],[4.768289198101474,52.42318755121726],[4.782254465276297,52.423259671696],[4.782346519515248,52.41651937089541],[4.768383377711945,52.41644726458229]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01626000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01626000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01626000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01626000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01631000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01631000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01631000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01631000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 394 4799 4.754419 52.416374 \
-gcp 5963 4794 4.768382 52.416448 \
-gcp 398 381 4.754323 52.423114 \
   ../output/publieke-werken/downloads/DUIZ01631000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01631000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.754420288792304,52.41637351234775],[4.754323983837617,52.42311378449381],[4.768289198101474,52.42318755121726],[4.768383377711945,52.41644726458229],[4.754420288792304,52.41637351234775]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01631000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01631000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01631000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01631000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01639000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01639000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01639000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01639000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 224 289 4.824235 52.416726 \
-gcp 241 4692 4.824321 52.409986 \
-gcp 5832 4663 4.838282 52.410052 \
   ../output/publieke-werken/downloads/DUIZ01639000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01639000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.82432189827612,52.409985463209566],[4.824236250295367,52.41672581417984],[4.838199591701414,52.41679133668233],[4.838283114951327,52.41005097284346],[4.82432189827612,52.409985463209566]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01639000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01639000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01639000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01639000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01645000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01645000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01645000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01645000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 339 302 4.810272 52.416659 \
-gcp 5899 333 4.824235 52.416726 \
-gcp 5876 4722 4.824321 52.409986 \
   ../output/publieke-werken/downloads/DUIZ01645000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01645000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.810360729686936,52.409918307928024],[4.810272957000164,52.416658645706526],[4.824236250295367,52.41672581417984],[4.82432189827612,52.409985463209566],[4.810360729686936,52.409918307928024]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01645000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01645000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01645000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01645000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01650000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01650000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01650000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01650000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 379 429 4.796309 52.41659 \
-gcp 5942 434 4.810272 52.416659 \
-gcp 5940 4819 4.81036 52.409919 \
   ../output/publieke-werken/downloads/DUIZ01650000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01650000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.796399610376404,52.40984950701082],[4.796309713009052,52.41658983127432],[4.810272957000164,52.416658645706526],[4.810360729686936,52.409918307928024],[4.796399610376404,52.40984950701082]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01650000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01650000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01650000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01650000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01657000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01657000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01657000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01657000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 824 680 4.78387 52.415823 \
-gcp 2390 328 4.787791 52.416385 \
-gcp 802 2302 4.783924 52.413329 \
-gcp 2675 2538 4.788607 52.413012 \
   ../output/publieke-werken/downloads/DUIZ01657000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01657000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.782438541537126,52.40977906047005],[4.782346519515248,52.41651937089541],[4.796309713009052,52.41658983127432],[4.796399610376404,52.40984950701082],[4.782438541537126,52.40977906047005]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01657000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01657000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01657000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01657000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01661000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01661000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01661000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01661000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 3664 576 4.776607 52.416222 \
-gcp 5552 1208 4.781349 52.415319 \
-gcp 5720 3712 4.781907 52.41153 \
-gcp 1880 3808 4.772358 52.411484 \
   ../output/publieke-werken/downloads/DUIZ01661000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01661000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.768477524361685,52.40970696831825],[4.768383377711945,52.41644726458229],[4.782346519515248,52.41651937089541],[4.782438541537126,52.40977906047005],[4.768477524361685,52.40970696831825]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01661000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01661000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01661000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01661000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ01664000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.754516560042619,52.409633230568225],[4.754420288792304,52.41637351234775],[4.768383377711945,52.41644726458229],[4.768477524361685,52.40970696831825],[4.754516560042619,52.409633230568225]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01664000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01664000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01664000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01664000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01671000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01671000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01671000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01671000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1302 1299 4.827075 52.408621 \
-gcp 5358 1861 4.837171 52.407786 \
-gcp 866 4194 4.825997 52.404232 \
   ../output/publieke-werken/downloads/DUIZ01671000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01671000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.824407516286362,52.403245102673026],[4.82432189827612,52.409985463209566],[4.838283114951327,52.41005097284346],[4.838366608974079,52.403310599442186],[4.824407516286362,52.403245102673026]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01671000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01671000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01671000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01671000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01674000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01674000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01674000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01674000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4816 2160 4.821872 52.407321 \
-gcp 4536 688 4.821131 52.409566 \
-gcp 1968 624 4.814801 52.40975 \
-gcp 4672 3720 4.821432 52.404959 \
   ../output/publieke-werken/downloads/DUIZ01674000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01674000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.810448471659863,52.403177960579235],[4.810360729686936,52.409918307928024],[4.82432189827612,52.409985463209566],[4.824407516286362,52.403245102673026],[4.810448471659863,52.403177960579235]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01674000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01674000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01674000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01674000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01679000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01679000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01679000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01679000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 175 4642 4.796489 52.40311 \
-gcp 5775 4659 4.810448 52.403179 \
-gcp 194 229 4.796399 52.40985 \
   ../output/publieke-werken/downloads/DUIZ01679000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01679000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.796489476286598,52.40310917317286],[4.796399610376404,52.40984950701082],[4.810360729686936,52.409918307928024],[4.810448471659863,52.403177960579235],[4.796489476286598,52.40310917317286]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01679000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01679000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01679000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01679000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01683000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01683000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01683000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01683000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 256 4577 4.782271 52.402916 \
-gcp 272 192 4.7821 52.409959 \
-gcp 5776 289 4.796176 52.409697 \
-gcp 5728 4673 4.796047 52.403126 \
   ../output/publieke-werken/downloads/DUIZ01683000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01683000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.782530531358555,52.40303874046605],[4.782438541537126,52.40977906047005],[4.796399610376404,52.40984950701082],[4.796489476286598,52.40310917317286],[4.782530531358555,52.40303874046605]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01683000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01683000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01683000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01683000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ01685000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.768571638067697,52.402966662471314],[4.768477524361685,52.40970696831825],[4.782438541537126,52.40977906047005],[4.782530531358555,52.40303874046605],[4.768571638067697,52.402966662471314]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01685000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01685000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01685000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01685000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ01689000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.75461279760595,52.402892939201294],[4.754516560042619,52.409633230568225],[4.768477524361685,52.40970696831825],[4.768571638067697,52.402966662471314],[4.75461279760595,52.402892939201294]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01689000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01689000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01689000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01689000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01697000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01697000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01697000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01697000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 830 1546 4.826034 52.401378 \
-gcp 4438 705 4.835025 52.402655 \
-gcp 3770 3511 4.833319 52.398373 \
   ../output/publieke-werken/downloads/DUIZ01697000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01697000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.824493104341551,52.39650473261617],[4.824407516286362,52.403245102673026],[4.838366608974079,52.403310599442186],[4.838450073784739,52.39657021652458],[4.824493104341551,52.39650473261617]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01697000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01697000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01697000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01697000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01703000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01703000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01703000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01703000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 273 4661 4.810535 52.396438 \
-gcp 272 226 4.810448 52.403179 \
-gcp 5872 4650 4.824492 52.396505 \
   ../output/publieke-werken/downloads/DUIZ01703000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01703000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.810536182934792,52.396437603706175],[4.810448471659863,52.403177960579235],[4.824407516286362,52.403245102673026],[4.824493104341551,52.39650473261617],[4.810536182934792,52.396437603706175]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01703000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01703000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01703000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01703000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01707000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01707000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01707000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01707000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5802 4875 4.810535 52.396438 \
-gcp 223 4879 4.796578 52.396369 \
-gcp 221 478 4.796489 52.40311 \
   ../output/publieke-werken/downloads/DUIZ01707000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01707000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.796579310755865,52.39636882980655],[4.796489476286598,52.40310917317286],[4.810448471659863,52.403177960579235],[4.810536182934792,52.396437603706175],[4.796579310755865,52.39636882980655]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01707000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01707000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01707000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01707000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01713000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01713000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01713000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01713000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 231 208 4.78253 52.403039 \
-gcp 184 4626 4.782622 52.396299 \
-gcp 5777 4656 4.796578 52.396369 \
   ../output/publieke-werken/downloads/DUIZ01713000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01713000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.782622488996143,52.396298410929454],[4.782530531358555,52.40303874046605],[4.796489476286598,52.40310917317286],[4.796579310755865,52.39636882980655],[4.782622488996143,52.396298410929454]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01713000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01713000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01713000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01713000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01716000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01716000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01716000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01716000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 2236 3899 4.773688 52.397382 \
-gcp 4341 2032 4.778897 52.40021 \
-gcp 768 1304 4.769982 52.401336 \
   ../output/publieke-werken/downloads/DUIZ01716000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01716000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.768665718846976,52.39622634708739],[4.768571638067697,52.402966662471314],[4.782530531358555,52.40303874046605],[4.782622488996143,52.396298410929454],[4.768665718846976,52.39622634708739]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01716000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01716000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01716000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01716000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01719000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01719000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01719000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01719000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5485 1237 4.767787 52.401414 \
-gcp 5816 4629 4.768665 52.396227 \
-gcp 234 4652 4.754708 52.396153 \
   ../output/publieke-werken/downloads/DUIZ01719000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01719000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.754709001499672,52.39615263829311],[4.75461279760595,52.402892939201294],[4.768571638067697,52.402966662471314],[4.768665718846976,52.39622634708739],[4.754709001499672,52.39615263829311]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01719000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01719000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01719000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01719000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01725000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01725000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01725000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01725000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4369 2879 4.834945 52.392485 \
-gcp 1002 1646 4.826506 52.394301 \
-gcp 1338 4323 4.827408 52.390239 \
   ../output/publieke-werken/downloads/DUIZ01725000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01725000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.824578662457137,52.38976435308513],[4.824493104341551,52.39650473261617],[4.838450073784739,52.39657021652458],[4.838533509398378,52.38982982413669],[4.824578662457137,52.38976435308513]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01725000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01725000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01725000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01725000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ01730000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.810623863527553,52.38969723735488],[4.810536182934792,52.396437603706175],[4.824493104341551,52.39650473261617],[4.824578662457137,52.38976435308513],[4.810623863527553,52.38969723735488]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01730000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01730000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01730000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01730000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01738000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01738000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01738000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01738000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5840 606 4.811025 52.396609 \
-gcp 320 606 4.796863 52.396658 \
-gcp 5760 5022 4.811282 52.389954 \
   ../output/publieke-werken/downloads/DUIZ01738000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01738000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.796669113800418,52.38962847695788],[4.796579310755865,52.39636882980655],[4.810536182934792,52.396437603706175],[4.810623863527553,52.38969723735488],[4.796669113800418,52.38962847695788]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01738000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01738000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01738000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01738000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01744000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01744000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01744000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01744000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 222 359 4.782622 52.396299 \
-gcp 5771 4797 4.796668 52.389629 \
-gcp 192 4764 4.782714 52.389559 \
   ../output/publieke-werken/downloads/DUIZ01744000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01744000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.782714414466487,52.38955807190635],[4.782622488996143,52.396298410929454],[4.796579310755865,52.39636882980655],[4.796669113800418,52.38962847695788],[4.782714414466487,52.38955807190635]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01744000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01744000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01744000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01744000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01750000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01750000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01750000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01750000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 190 169 4.768665 52.396227 \
-gcp 173 4584 4.768759 52.389487 \
-gcp 5756 4591 4.782714 52.389559 \
   ../output/publieke-werken/downloads/DUIZ01750000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01750000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.7687597667165,52.38948602221266],[4.768665718846976,52.39622634708739],[4.782622488996143,52.396298410929454],[4.782714414466487,52.38955807190635],[4.7687597667165,52.38948602221266]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01750000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01750000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01750000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01750000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01754000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01754000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01754000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01754000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5808 334 4.770041 52.39546 \
-gcp 208 302 4.756136 52.39546 \
-gcp 5712 4670 4.770041 52.388906 \
   ../output/publieke-werken/downloads/DUIZ01754000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01754000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.754805171741151,52.38941232788965],[4.754709001499672,52.39615263829311],[4.768665718846976,52.39622634708739],[4.7687597667165,52.38948602221266],[4.754805171741151,52.38941232788965]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01754000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01754000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01754000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01754000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01761000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01761000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01761000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01761000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 338 4422 4.824951 52.383396 \
-gcp 1465 2643 4.827697 52.386114 \
-gcp 5303 4635 4.837305 52.383154 \
   ../output/publieke-werken/downloads/DUIZ01761000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01761000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.824664190648556,52.38302396412592],[4.824578662457137,52.38976435308513],[4.838533509398378,52.38982982413669],[4.838616915830047,52.38308942232453],[4.824664190648556,52.38302396412592]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01761000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01761000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01761000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01761000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01769000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01769000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01769000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01769000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 982 4162 4.812559 52.383743 \
-gcp 5340 4400 4.823416 52.383439 \
-gcp 1638 2206 4.814152 52.386719 \
   ../output/publieke-werken/downloads/DUIZ01769000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01769000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.810711513453968,52.38295686157143],[4.810623863527553,52.38969723735488],[4.824578662457137,52.38976435308513],[4.824664190648556,52.38302396412592],[4.810711513453968,52.38295686157143]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01769000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01769000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01769000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01769000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01777000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01777000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01777000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01777000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4144 4423 4.806465 52.383304 \
-gcp 264 225 4.796668 52.389629 \
-gcp 522 4276 4.797453 52.383455 \
   ../output/publieke-werken/downloads/DUIZ01777000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01777000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.796758885436461,52.382888114673015],[4.796669113800418,52.38962847695788],[4.810623863527553,52.38969723735488],[4.810711513453968,52.38295686157143],[4.796758885436461,52.382888114673015]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01777000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01777000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01777000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01777000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01781000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01781000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01781000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01781000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 406 4735 4.782806 52.382818 \
-gcp 416 320 4.782714 52.389559 \
-gcp 5986 4721 4.796758 52.382889 \
   ../output/publieke-werken/downloads/DUIZ01781000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01781000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.78280630778618,52.38281772344276],[4.782714414466487,52.38955807190635],[4.796669113800418,52.38962847695788],[4.796758885436461,52.382888114673015],[4.78280630778618,52.38281772344276]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01781000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01781000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01781000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01781000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01784000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01784000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01784000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01784000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5800 4638 4.782806 52.382818 \
-gcp 221 4631 4.768853 52.382746 \
-gcp 237 217 4.768759 52.389487 \
   ../output/publieke-werken/downloads/DUIZ01784000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01784000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.768853781693243,52.38274568789324],[4.7687597667165,52.38948602221266],[4.782714414466487,52.38955807190635],[4.78280630778618,52.38281772344276],[4.768853781693243,52.38274568789324]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01784000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01784000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01784000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01784000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01789000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01789000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01789000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01789000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 223 4642 4.7549 52.382673 \
-gcp 5795 4650 4.768853 52.382746 \
-gcp 236 231 4.754804 52.389413 \
   ../output/publieke-werken/downloads/DUIZ01789000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01789000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.75490130834774,52.3826720080371],[4.754805171741151,52.38941232788965],[4.7687597667165,52.38948602221266],[4.768853781693243,52.38274568789324],[4.75490130834774,52.3826720080371]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01789000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01789000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01789000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01789000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01797000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01797000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01797000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01797000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5787 4620 4.8387 52.37635 \
-gcp 210 4615 4.824749 52.376284 \
-gcp 221 208 4.824663 52.383025 \
   ../output/publieke-werken/downloads/DUIZ01797000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01797000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.824749688931237,52.376283565784696],[4.824664190648556,52.38302396412592],[4.838616915830047,52.38308942232453],[4.838700293094798,52.37634901113428],[4.824749688931237,52.376283565784696]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01797000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01797000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01797000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01797000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01807000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01807000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01807000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01807000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 972 263 4.812618 52.382905 \
-gcp 5698 372 4.824446 52.382787 \
-gcp 5631 4491 4.824339 52.376493 \
-gcp 792 4290 4.812242 52.376765 \
   ../output/publieke-werken/downloads/DUIZ01807000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01807000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.810799132729847,52.37621647640193],[4.810711513453968,52.38295686157143],[4.824664190648556,52.38302396412592],[4.824749688931237,52.376283565784696],[4.810799132729847,52.37621647640193]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01807000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01807000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01807000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01807000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ01812000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.79684862568019,52.376147742997965],[4.796758885436461,52.382888114673015],[4.810711513453968,52.38295686157143],[4.810799132729847,52.37621647640193],[4.79684862568019,52.376147742997965]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01812000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01812000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01812000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01812000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ01818000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.782898168971791,52.37607736558488],[4.78280630778618,52.38281772344276],[4.796758885436461,52.382888114673015],[4.79684862568019,52.376147742997965],[4.782898168971791,52.37607736558488]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01818000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01818000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01818000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01818000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01822000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01822000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01822000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01822000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 3328 1502 4.776263 52.381182 \
-gcp 5632 4558 4.781799 52.376647 \
-gcp 960 4558 4.770598 52.37649 \
   ../output/publieke-werken/downloads/DUIZ01822000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01822000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.768947763794162,52.37600534417511],[4.768853781693243,52.38274568789324],[4.78280630778618,52.38281772344276],[4.782898168971791,52.37607736558488],[4.768947763794162,52.37600534417511]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01822000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01822000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01822000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01822000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01827000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01827000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01827000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01827000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 260 4678 4.754997 52.375932 \
-gcp 269 266 4.7549 52.382673 \
-gcp 5850 4674 4.768947 52.376006 \
   ../output/publieke-werken/downloads/DUIZ01827000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01827000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.754997411336777,52.37593167878148],[4.75490130834774,52.3826720080371],[4.768853781693243,52.38274568789324],[4.768947763794162,52.37600534417511],[4.754997411336777,52.37593167878148]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01827000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01827000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01827000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01827000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01834000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01834000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01834000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01834000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 420 518 4.825294 52.375822 \
-gcp 3942 406 4.834086 52.376018 \
-gcp 2526 3528 4.830589 52.37124 \
   ../output/publieke-werken/downloads/DUIZ01834000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01834000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.824835157320601,52.36954315810752],[4.824749688931237,52.376283565784696],[4.838700293094798,52.37634901113428],[4.838783641207661,52.36960859061196],[4.824835157320601,52.36954315810752]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01834000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01834000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01834000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01834000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ01839000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.810886721370992,52.36947608189252],[4.810799132729847,52.37621647640193],[4.824749688931237,52.376283565784696],[4.824835157320601,52.36954315810752],[4.810886721370992,52.36947608189252]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01839000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01839000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01839000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01839000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ01844000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.79693833454778,52.36940736197884],[4.79684862568019,52.376147742997965],[4.810799132729847,52.37621647640193],[4.810886721370992,52.36947608189252],[4.79693833454778,52.36940736197884]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01844000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01844000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01844000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01844000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ01847000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.782989998039888,52.369336998378685],[4.782898168971791,52.37607736558488],[4.79684862568019,52.376147742997965],[4.79693833454778,52.36940736197884],[4.782989998039888,52.369336998378685]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01847000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01847000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01847000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01847000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ01853000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.769041713036203,52.36926499110442],[4.768947763794162,52.37600534417511],[4.782898168971791,52.37607736558488],[4.782989998039888,52.369336998378685],[4.769041713036203,52.36926499110442]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01853000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01853000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01853000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01853000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ01855000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.755093480725594,52.36919134016888],[4.754997411336777,52.37593167878148],[4.768947763794162,52.37600534417511],[4.769041713036203,52.36926499110442],[4.755093480725594,52.36919134016888]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01855000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01855000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01855000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01855000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01861000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01861000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01861000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01861000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 446 4090 4.825493 52.363615 \
-gcp 4952 4171 4.836742 52.363562 \
-gcp 4550 1524 4.835669 52.367598 \
   ../output/publieke-werken/downloads/DUIZ01861000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01861000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.824920595832052,52.362802741140385],[4.824835157320601,52.36954315810752],[4.838783641207661,52.36960859061196],[4.838866960183662,52.36286816080361],[4.824920595832052,52.362802741140385]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01861000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01861000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01861000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01861000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ01864000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.810974279393187,52.36273567808914],[4.810886721370992,52.36947608189252],[4.824835157320601,52.36954315810752],[4.824920595832052,52.362802741140385],[4.810974279393187,52.36273567808914]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01864000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01864000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01864000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01864000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ01868000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.797028012055409,52.36266697166171],[4.79693833454778,52.36940736197884],[4.810886721370992,52.36947608189252],[4.810974279393187,52.36273567808914],[4.797028012055409,52.36266697166171]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01868000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01868000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01868000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01868000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ01872000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.783081795007021,52.36259662187025],[4.782989998039888,52.369336998378685],[4.79693833454778,52.36940736197884],[4.797028012055409,52.36266697166171],[4.783081795007021,52.36259662187025]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01872000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01872000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01872000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01872000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ01877000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.769135629436302,52.36252462872722],[4.769041713036203,52.36926499110442],[4.782989998039888,52.369336998378685],[4.783081795007021,52.36259662187025],[4.769135629436302,52.36252462872722]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01877000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01877000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01877000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01877000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ01880000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.755189516531504,52.362450992245385],[4.755093480725594,52.36919134016888],[4.769041713036203,52.36926499110442],[4.769135629436302,52.36252462872722],[4.755189516531504,52.362450992245385]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01880000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01880000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01880000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01880000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01885000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01885000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01885000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01885000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 597 371 4.825884 52.36254 \
-gcp 5360 766 4.837798 52.36201 \
-gcp 5005 4273 4.836988 52.35665 \
-gcp 232 4415 4.825085 52.356371 \
   ../output/publieke-werken/downloads/DUIZ01885000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01885000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.825091383282787,52.34932187952074],[4.825006004480985,52.3560623149294],[4.838950250037817,52.356127721755314],[4.839033510785127,52.349387273513166],[4.825091383282787,52.34932187952074]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01885000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01885000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01885000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01885000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ01888000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.811061806812215,52.355995265037926],[4.810974279393187,52.36273567808914],[4.824920595832052,52.362802741140385],[4.825006004480985,52.3560623149294],[4.811061806812215,52.355995265037926]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01888000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01888000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01888000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01888000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01893000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01893000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01893000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01893000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 240 352 4.781456 52.36255 \
-gcp 6016 286 4.796691 52.362917 \
-gcp 160 4814 4.781542 52.355998 \
   ../output/publieke-werken/downloads/DUIZ01893000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01893000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.797117658219235,52.355926572092656],[4.797028012055409,52.36266697166171],[4.810974279393187,52.36273567808914],[4.811061806812215,52.355995265037926],[4.797117658219235,52.355926572092656]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01893000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01893000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01893000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01893000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ01897000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.783173559889732,52.355856236105765],[4.783081795007021,52.36259662187025],[4.797028012055409,52.36266697166171],[4.797117658219235,52.355926572092656],[4.783173559889732,52.355856236105765]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01897000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01897000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01897000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01897000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01903000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01903000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01903000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01903000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 3228 4452 4.762852 52.356008 \
-gcp 205 207 4.755189 52.362452 \
-gcp 5731 1200 4.769005 52.36101 \
   ../output/publieke-werken/downloads/DUIZ01903000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01903000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.769229513011379,52.35578425708965],[4.769135629436302,52.36252462872722],[4.783081795007021,52.36259662187025],[4.783173559889732,52.355856236105765],[4.769229513011379,52.35578425708965]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01903000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01903000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01903000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01903000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ01905000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.755285518771814,52.35571063505707],[4.755189516531504,52.362450992245385],[4.769135629436302,52.36252462872722],[4.769229513011379,52.35578425708965],[4.755285518771814,52.35571063505707]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01905000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01905000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01905000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01905000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ01912000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.811149303643843,52.34925484278501],[4.811061806812215,52.355995265037926],[4.825006004480985,52.3560623149294],[4.825091383282787,52.34932187952074],[4.811149303643843,52.34925484278501]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01912000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01912000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01912000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01912000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ01917000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.797207273055403,52.349186163317746],[4.797117658219235,52.355926572092656],[4.811061806812215,52.355995265037926],[4.811149303643843,52.34925484278501],[4.797207273055403,52.349186163317746]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01917000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01917000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01917000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01917000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ01923000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.783265292704551,52.34911584113118],[4.783173559889732,52.355856236105765],[4.797117658219235,52.355926572092656],[4.797207273055403,52.349186163317746],[4.783265292704551,52.34911584113118]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01923000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01923000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01923000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01923000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01928000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01928000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01928000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01928000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 220 234 4.755285 52.355711 \
-gcp 5802 4616 4.769323 52.349044 \
-gcp 5792 222 4.769229 52.355785 \
   ../output/publieke-werken/downloads/DUIZ01928000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01928000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.76932336377835,52.349043876237715],[4.769229513011379,52.35578425708965],[4.783173559889732,52.355856236105765],[4.783265292704551,52.34911584113118],[4.76932336377835,52.349043876237715]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01928000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01928000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01928000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01928000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ01931000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.755381487463817,52.3489702686501],[4.755285518771814,52.35571063505707],[4.769229513011379,52.35578425708965],[4.76932336377835,52.349043876237715],[4.755381487463817,52.3489702686501]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01931000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01931000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01931000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01931000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01935000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01935000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01935000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01935000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 3712 4537 4.819801 52.342501 \
-gcp 2005 4567 4.815879 52.342432 \
-gcp 5760 201 4.824328 52.349045 \
   ../output/publieke-werken/downloads/DUIZ01935000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01935000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.825176732252833,52.34258143496035],[4.825091383282787,52.34932187952074],[4.839033510785127,52.349387273513166],[4.839116742440587,52.34264681612326],[4.825176732252833,52.34258143496035]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01935000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01935000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01935000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01935000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01941000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01941000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01941000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01941000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 438 4379 4.797935 52.342471 \
-gcp 5764 4590 4.811078 52.342419 \
-gcp 5755 192 4.810976 52.349084 \
   ../output/publieke-werken/downloads/DUIZ01941000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01941000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.811236769903821,52.34251441137638],[4.811149303643843,52.34925484278501],[4.825091383282787,52.34932187952074],[4.825176732252833,52.34258143496035],[4.811236769903821,52.34251441137638]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01941000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01941000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01941000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01941000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01947000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01947000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01947000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01947000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4155 1235 4.793354 52.350343 \
-gcp 2370 4523 4.788666 52.345375 \
-gcp 167 211 4.783484 52.352105 \
   ../output/publieke-werken/downloads/DUIZ01947000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01947000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.797296856580052,52.342445745383074],[4.797207273055403,52.349186163317746],[4.811149303643843,52.34925484278501],[4.811236769903821,52.34251441137638],[4.797296856580052,52.342445745383074]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01947000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01947000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01947000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01947000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01952000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01952000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01952000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01952000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 188 204 4.769493 52.352341 \
-gcp 5733 188 4.783441 52.352122 \
-gcp 4953 4165 4.781247 52.346037 \
   ../output/publieke-werken/downloads/DUIZ01952000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01952000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.783356993468001,52.342375436992654],[4.783265292704551,52.34911584113118],[4.797207273055403,52.349186163317746],[4.797296856580052,52.342445745383074],[4.783356993468001,52.342375436992654]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01952000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01952000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01952000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01952000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ01956000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.76941718175411,52.34230348621756],[4.76932336377835,52.349043876237715],[4.783265292704551,52.34911584113118],[4.783356993468001,52.342375436992654],[4.76941718175411,52.34230348621756]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01956000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01956000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01956000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01956000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01963000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01963000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01963000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01963000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1394 2385 4.813852 52.341547 \
-gcp 3224 3020 4.818336 52.340465 \
-gcp 4672 2033 4.822043 52.341957 \
   ../output/publieke-werken/downloads/DUIZ01963000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01963000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.825262051406486,52.33584098129439],[4.825176732252833,52.34258143496035],[4.839116742440587,52.34264681612326],[4.83919994501918,52.335906349631614],[4.825262051406486,52.33584098129439]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01963000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01963000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01963000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01963000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01969000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01969000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01969000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01969000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 319 1758 4.797308 52.342717 \
-gcp 3722 2644 4.805741 52.341226 \
-gcp 256 2710 4.797125 52.341249 \
   ../output/publieke-werken/downloads/DUIZ01969000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01969000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.8113242056079,52.33577397085815],[4.811236769903821,52.34251441137638],[4.825176732252833,52.34258143496035],[4.825262051406486,52.33584098129439],[4.8113242056079,52.33577397085815]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01969000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01969000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01969000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01969000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01979000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01979000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01979000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01979000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 2886 2979 4.789701 52.341006 \
-gcp 1474 1144 4.786327 52.343805 \
-gcp 5427 2496 4.796047 52.341583 \
   ../output/publieke-werken/downloads/DUIZ01979000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01979000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.79738640880931,52.335705318334746],[4.797296856580052,52.342445745383074],[4.811236769903821,52.34251441137638],[4.8113242056079,52.33577397085815],[4.79738640880931,52.335705318334746]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01979000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01979000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01979000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01979000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01986000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01986000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01986000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01986000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 332 4712 4.825347 52.329101 \
-gcp 5900 4709 4.839283 52.329166 \
-gcp 334 315 4.825261 52.335842 \
   ../output/publieke-werken/downloads/DUIZ01986000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01986000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.783448662196585,52.33563502373626],[4.783356993468001,52.342375436992654],[4.797296856580052,52.342445745383074],[4.79738640880931,52.335705318334746],[4.783448662196585,52.33563502373626]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01986000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01986000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01986000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01986000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01992000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01992000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01992000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01992000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5733 4603 4.825347 52.329101 \
-gcp 173 199 4.811324 52.335775 \
-gcp 167 4607 4.811411 52.329034 \
   ../output/publieke-werken/downloads/DUIZ01992000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01992000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.825347340759101,52.32910051856891],[4.825262051406486,52.33584098129439],[4.83919994501918,52.335906349631614],[4.839283118535881,52.32916587408433],[4.825347340759101,52.32910051856891]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01992000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01992000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01992000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01992000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01995000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01995000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01995000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01995000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5784 390 4.811324 52.335775 \
-gcp 5772 4787 4.811411 52.329034 \
-gcp 211 378 4.797386 52.335706 \
   ../output/publieke-werken/downloads/DUIZ01995000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01995000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.811411610771811,52.32903352127638],[4.8113242056079,52.33577397085815],[4.825262051406486,52.33584098129439],[4.825347340759101,52.32910051856891],[4.811411610771811,52.32903352127638]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01995000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01995000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01995000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01995000001-warped.tif
    

# =============================================================================================
# Name: DUIZ01998000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ01998000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ01998000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ01998000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5940 316 4.839283 52.329166 \
-gcp 5932 4697 4.839366 52.322426 \
-gcp 366 308 4.825347 52.329101 \
   ../output/publieke-werken/downloads/DUIZ01998000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ01998000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.797475929759291,52.328964882218756],[4.79738640880931,52.335705318334746],[4.8113242056079,52.33577397085815],[4.811411610771811,52.32903352127638],[4.797475929759291,52.328964882218756]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ01998000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ01998000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ01998000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ01998000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ02013000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.811673643179732,52.308812118610874],[4.81158632954202,52.315552595106716],[4.825517830122578,52.31561956612359],[4.825603030164093,52.30887907649599],[4.811673643179732,52.308812118610874]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ02013000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ02013000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ02013000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ02013000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ02015000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.825688200465883,52.30213857799316],[4.825603030164093,52.30887907649599],[4.839532464864197,52.30894439356954],[4.839615522282848,52.30220388226047],[4.825688200465883,52.30213857799316]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ02015000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ02015000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ02015000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ02015000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ02017000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.797833701088368,52.302003048000536],[4.797744305094563,52.308743519926054],[4.811673643179732,52.308812118610874],[4.811760926340108,52.30207163323591],[4.797833701088368,52.302003048000536]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ02017000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ02017000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ02017000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ02017000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ02018000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.825773341043242,52.2953980706612],[4.825688200465883,52.30213857799316],[4.839615522282848,52.30220388226047],[4.839698550714314,52.295463362126235],[4.825773341043242,52.2953980706612]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ02018000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ02018000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ02018000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ02018000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00206000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00206000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00206000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00206000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4077 930 4.861654 52.402681 \
-gcp 2973 4054 4.85894 52.398042 \
-gcp 691 747 4.85328 52.402874 \
   ../output/publieke-werken/downloads/DUIZ00206000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00206000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.852407090072926,52.39663405541986],[4.852325748530966,52.40337445087526],[4.866284933764953,52.403436656960906],[4.866364152014656,52.39669624929073],[4.852407090072926,52.39663405541986]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00206000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00206000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00206000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00206000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00213000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00213000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00213000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00213000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 3962 910 4.875516 52.402471 \
-gcp 976 866 4.868059 52.402491 \
-gcp 1844 4268 4.870301 52.397326 \
   ../output/publieke-werken/downloads/DUIZ00213000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00213000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866364152014656,52.39669624929073],[4.866284933764953,52.403436656960906],[4.880244163483944,52.40349721768803],[4.880321258418444,52.39675679812611],[4.866364152014656,52.39669624929073]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00213000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00213000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00213000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00213000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ00218000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880321258418444,52.39675679812611],[4.880244163483944,52.40349721768803],[4.894203436495817,52.403556133045946],[4.894278408092785,52.39681570191528],[4.880321258418444,52.39675679812611]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00218000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00218000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00218000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00218000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00230000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00230000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00230000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00230000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 3616 3207 4.900407 52.400259 \
-gcp 5484 1356 4.903958 52.402439 \
-gcp 7064 4248 4.906865 52.3991 \
   ../output/publieke-werken/downloads/DUIZ00230000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00230000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894278408092785,52.39681570191528],[4.894203436495817,52.403556133045946],[4.908162751608423,52.40361340302422],[4.908235599846147,52.39687296064783],[4.894278408092785,52.39681570191528]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00230000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00230000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00230000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00230000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00242000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00242000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00242000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00242000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5957 4280 4.918501 52.399434 \
-gcp 1876 4808 4.910776 52.398783 \
-gcp 3672 6442 4.914188 52.396894 \
   ../output/publieke-werken/downloads/DUIZ00242000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00242000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908235599846147,52.39687296064783],[4.908162751608423,52.40361340302422],[4.92212210762959,52.4036690276127],[4.922192832486973,52.39692857431359],[4.908235599846147,52.39687296064783]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00242000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00242000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00242000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00242000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00248000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00248000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00248000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00248000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1095 6426 4.923211 52.397008 \
-gcp 1492 1058 4.923913 52.403211 \
-gcp 7770 2142 4.935801 52.401987 \
-gcp 7683 5627 4.935672 52.397951 \
   ../output/publieke-werken/downloads/DUIZ00248000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00248000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922192832486973,52.39692857431359],[4.92212210762959,52.4036690276127],[4.936081503367124,52.403723006801485],[4.936150104823677,52.39698254290268],[4.922192832486973,52.39692857431359]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00248000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00248000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00248000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00248000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00255000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00255000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00255000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00255000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1724 1528 4.938424 52.402697 \
-gcp 7564 3816 4.949523 52.400017 \
-gcp 1584 5928 4.938054 52.397614 \
   ../output/publieke-werken/downloads/DUIZ00255000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00255000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936150104823677,52.39698254290268],[4.936081503367124,52.403723006801485],[4.950040937628804,52.403775340581014],[4.950107415664664,52.397034866405576],[4.936150104823677,52.39698254290268]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00255000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00255000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00255000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00255000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00263000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00263000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00263000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00263000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1334 5800 4.951905 52.397509 \
-gcp 3488 5632 4.956009 52.397712 \
-gcp 5958 555 4.960644 52.403584 \
   ../output/publieke-werken/downloads/DUIZ00263000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00263000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.950107415664664,52.397034866405576],[4.950040937628804,52.403775340581014],[4.964000409222397,52.40382602894209],[4.964064763818304,52.39708554481305],[4.950107415664664,52.397034866405576]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00263000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00263000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00263000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00263000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00266000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00266000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00266000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00266000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4359 1177 4.971491 52.402939 \
-gcp 4386 4048 4.97156 52.39964 \
-gcp 7352 4437 4.977198 52.399172 \
   ../output/publieke-werken/downloads/DUIZ00266000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00266000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.964064763818304,52.39708554481305],[4.964000409222397,52.40382602894209],[4.977959916955641,52.40387507187561],[4.978022148092955,52.39713457811606],[4.964064763818304,52.39708554481305]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00266000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00266000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00266000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00266000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00270000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00270000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00270000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00270000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 3296 5384 5.011429 52.39821 \
-gcp 5648 2240 5.015881 52.401817 \
-gcp 4192 672 5.01307 52.403689 \
-gcp 6720 5088 5.017984 52.398622 \
   ../output/publieke-werken/downloads/DUIZ00270000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00270000001.vrt

echo '{"type":"Polygon","coordinates":[[[5.005937020238597,52.39722770937422],[5.005879036071925,52.40396822142579],[5.019838645070346,52.40401232802586],[5.019894505726199,52.3972718073129],[5.005937020238597,52.39722770937422]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00270000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00270000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00270000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00270000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00271000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00271000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00271000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00271000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 7096 2664 5.032554 52.401424 \
-gcp 4838 5736 5.028284 52.397863 \
-gcp 536 5136 5.020151 52.398531 \
-gcp 1452 480 5.021803 52.403859 \
   ../output/publieke-werken/downloads/DUIZ00271000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00271000001.vrt

echo '{"type":"Polygon","coordinates":[[[5.019894505726199,52.3972718073129],[5.019838645070346,52.40401232802586],[5.033798285439174,52.40405478916545],[5.033852022568026,52.39731426011416],[5.019894505726199,52.3972718073129]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00271000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00271000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00271000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00271000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00272000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00272000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00272000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00272000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 388 6234 5.033851 52.397315 \
-gcp 7762 6222 5.047809 52.397356 \
-gcp 394 389 5.033798 52.404056 \
   ../output/publieke-werken/downloads/DUIZ00272000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00272000001.vrt

echo '{"type":"Polygon","coordinates":[[[5.033852022568026,52.39731426011416],[5.033798285439174,52.40405478916545],[5.047757955986052,52.40409560483699],[5.047809569572339,52.397355067770356],[5.033852022568026,52.39731426011416]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00272000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00272000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00272000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00272000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00279000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00279000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00279000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00279000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 794 2018 4.839295 52.394655 \
-gcp 7548 5948 4.852052 52.390131 \
-gcp 7608 2210 4.852175 52.394478 \
   ../output/publieke-werken/downloads/DUIZ00279000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00279000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.838533509398378,52.38982982413669],[4.838450073784739,52.39657021652458],[4.852407090072926,52.39663405541986],[4.85248840316046,52.38989365049802],[4.838533509398378,52.38982982413669]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00279000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00279000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00279000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00279000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00285000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00285000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00285000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00285000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5514 5076 4.862196 52.391211 \
-gcp 830 2252 4.853307 52.394475 \
-gcp 602 5720 4.852894 52.390474 \
   ../output/publieke-werken/downloads/DUIZ00285000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00285000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.85248840316046,52.38989365049802],[4.852407090072926,52.39663405541986],[4.866364152014656,52.39669624929073],[4.866443342552547,52.38995583215781],[4.85248840316046,52.38989365049802]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00285000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00285000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00285000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00285000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00299000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00299000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00299000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00299000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 2792 3748 4.87102 52.392796 \
-gcp 7500 5064 4.879936 52.391293 \
-gcp 6786 6023 4.8786 52.390177 \
-gcp 3314 5120 4.872023 52.391201 \
   ../output/publieke-werken/downloads/DUIZ00299000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00299000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866443342552547,52.38995583215781],[4.866364152014656,52.39669624929073],[4.880321258418444,52.39675679812611],[4.880398326383764,52.39001636910505],[4.866443342552547,52.38995583215781]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00299000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00299000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00299000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00299000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00308000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00308000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00308000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00308000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 373 5619 4.880432 52.390661 \
-gcp 4700 5900 4.888573 52.390386 \
-gcp 5044 2184 4.889182 52.394675 \
   ../output/publieke-werken/downloads/DUIZ00308000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00308000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880398326383764,52.39001636910505],[4.880321258418444,52.39675679812611],[4.894278408092785,52.39681570191528],[4.89435335346322,52.39007526132898],[4.880398326383764,52.39001636910505]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00308000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00308000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00308000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00308000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00319000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00319000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00319000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00319000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1418 1190 4.896319 52.395905 \
-gcp 7485 4684 4.907804 52.391863 \
-gcp 3492 5419 4.900224 52.391024 \
   ../output/publieke-werken/downloads/DUIZ00319000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00319000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.89435335346322,52.39007526132898],[4.894278408092785,52.39681570191528],[4.908235599846147,52.39687296064783],[4.908308422599998,52.3901325088192],[4.89435335346322,52.39007526132898]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00319000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00319000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00319000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00319000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00330000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00330000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00330000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00330000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4572 5441 4.916248 52.391031 \
-gcp 5444 438 4.917873 52.396809 \
-gcp 587 4104 4.908711 52.392579 \
   ../output/publieke-werken/downloads/DUIZ00330000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00330000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908308422599998,52.3901325088192],[4.908235599846147,52.39687296064783],[4.922192832486973,52.39692857431359],[4.922263532603153,52.3901881115656],[4.908308422599998,52.3901325088192]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00330000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00330000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00330000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00330000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00340000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00340000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00340000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00340000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1356 6313 4.923828 52.390357 \
-gcp 7791 5505 4.935983 52.391273 \
-gcp 7673 2102 4.935774 52.395228 \
-gcp 1103 807 4.923323 52.39673 \
   ../output/publieke-werken/downloads/DUIZ00340000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00340000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922263532603153,52.3901881115656],[4.922192832486973,52.39692857431359],[4.936150104823677,52.39698254290268],[4.936218682281719,52.390242069558234],[4.922263532603153,52.3901881115656]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00340000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00340000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00340000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00340000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00350000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00350000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00350000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00350000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 2485 2670 4.940141 52.394373 \
-gcp 7788 336 4.950107 52.397036 \
-gcp 7844 6204 4.950173 52.390295 \
   ../output/publieke-werken/downloads/DUIZ00350000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00350000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936218682281719,52.390242069558234],[4.936150104823677,52.39698254290268],[4.950107415664664,52.397034866405576],[4.95017387044471,52.390294382787665],[4.936218682281719,52.390242069558234]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00350000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00350000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00350000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00350000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00360000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00360000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00360000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00360000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 426 6053 4.950264 52.390501 \
-gcp 7064 5732 4.962816 52.390861 \
-gcp 5460 1272 4.959801 52.395984 \
-gcp 1051 577 4.951438 52.396819 \
   ../output/publieke-werken/downloads/DUIZ00360000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00360000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.95017387044471,52.390294382787665],[4.950107415664664,52.397034866405576],[4.964064763818304,52.39708554481305],[4.964129095901116,52.390345051244516],[4.95017387044471,52.390294382787665]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00360000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00360000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00360000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00360000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00361000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00361000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00361000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00361000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4184 928 4.97112 52.396815 \
-gcp 1472 4424 4.966207 52.392717 \
-gcp 5688 6072 4.97391 52.391205 \
-gcp 6432 2504 4.975562 52.395012 \
   ../output/publieke-werken/downloads/DUIZ00361000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00361000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.964129095901116,52.390345051244516],[4.964064763818304,52.39708554481305],[4.978022148092955,52.39713457811606],[4.978084357459904,52.390394074919904],[4.964129095901116,52.390345051244516]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00361000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00361000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00361000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00361000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ00369000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.992039653930022,52.390441453805074],[4.99197956729695,52.39718196630592],[5.005937020238597,52.39722770937422],[5.005994984120399,52.390487187891644],[4.992039653930022,52.390441453805074]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00369000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00369000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00369000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00369000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00372000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00372000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00372000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00372000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 2873 1286 5.010704 52.396167 \
-gcp 6868 578 5.018279 52.397015 \
-gcp 1396 4200 5.007958 52.392799 \
   ../output/publieke-werken/downloads/DUIZ00372000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00372000001.vrt

echo '{"type":"Polygon","coordinates":[[[5.005994984120399,52.390487187891644],[5.005937020238597,52.39722770937422],[5.019894505726199,52.3972718073129],[5.019950346839944,52.390531277171554],[5.005994984120399,52.390487187891644]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00372000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00372000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00372000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00372000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00373000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00373000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00373000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00373000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 392 410 5.019894 52.397273 \
-gcp 7760 388 5.033851 52.397315 \
-gcp 7784 6229 5.033905 52.390574 \
   ../output/publieke-werken/downloads/DUIZ00373000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00373000001.vrt

echo '{"type":"Polygon","coordinates":[[[5.019950346839944,52.390531277171554],[5.019894505726199,52.3972718073129],[5.033852022568026,52.39731426011416],[5.033905740897546,52.39057372163698],[5.019950346839944,52.390531277171554]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00373000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00373000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00373000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00373000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00382000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00382000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00382000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00382000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1612 6104 4.840926 52.383216 \
-gcp 4750 448 4.846838 52.389751 \
-gcp 7508 5681 4.852084 52.383733 \
   ../output/publieke-werken/downloads/DUIZ00382000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00382000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.838616915830047,52.38308942232453],[4.838533509398378,52.38982982413669],[4.85248840316046,52.38989365049802],[4.852569687808244,52.383153236155735],[4.838616915830047,52.38308942232453]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00382000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00382000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00382000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00382000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00391000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00391000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00391000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00391000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 384 6214 4.852569 52.383154 \
-gcp 7774 6170 4.866522 52.383216 \
-gcp 358 386 4.852488 52.389894 \
   ../output/publieke-werken/downloads/DUIZ00391000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00391000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.852569687808244,52.383153236155735],[4.85248840316046,52.38989365049802],[4.866443342552547,52.38995583215781],[4.866522505392917,52.383215405608176],[4.852569687808244,52.383153236155735]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00391000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00391000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00391000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00391000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00403000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00403000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00403000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00403000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 6072 5230 4.877324 52.384352 \
-gcp 1877 3258 4.869384 52.386608 \
-gcp 5000 906 4.875242 52.389358 \
   ../output/publieke-werken/downloads/DUIZ00403000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00403000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866522505392917,52.383215405608176],[4.866443342552547,52.38995583215781],[4.880398326383764,52.39001636910505],[4.880475367393809,52.38327593067091],[4.866522505392917,52.383215405608176]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00403000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00403000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00403000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00403000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00416000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00416000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00416000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00416000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 568 2244 4.880816 52.387878 \
-gcp 4603 5709 4.888444 52.383871 \
-gcp 6088 983 4.891276 52.389342 \
   ../output/publieke-werken/downloads/DUIZ00416000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00416000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880475367393809,52.38327593067091],[4.880398326383764,52.39001636910505],[4.89435335346322,52.39007526132898],[4.894428272620641,52.3833348113331],[4.880475367393809,52.38327593067091]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00416000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00416000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00416000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00416000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00428000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00428000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00428000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00428000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 6130 5618 4.905192 52.384034 \
-gcp 5136 1736 4.90325 52.388441 \
-gcp 7638 552 4.907976 52.389849 \
   ../output/publieke-werken/downloads/DUIZ00428000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00428000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894428272620641,52.3833348113331],[4.89435335346322,52.39007526132898],[4.908308422599998,52.3901325088192],[4.908381219883111,52.38339204758446],[4.894428272620641,52.3833348113331]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00428000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00428000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00428000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00428000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00439000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00439000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00439000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00439000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 803 3276 4.909199 52.386759 \
-gcp 7032 2533 4.920797 52.387649 \
-gcp 2928 6070 4.913174 52.383596 \
   ../output/publieke-werken/downloads/DUIZ00439000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00439000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908381219883111,52.38339204758446],[4.908308422599998,52.3901325088192],[4.922263532603153,52.3901881115656],[4.922334207990888,52.3834476394148],[4.908381219883111,52.38339204758446]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00439000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00439000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00439000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00439000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00449000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00449000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00449000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00449000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1182 326 4.923817 52.390177 \
-gcp 991 4218 4.923511 52.38574 \
-gcp 3658 3675 4.928479 52.386369 \
   ../output/publieke-werken/downloads/DUIZ00449000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00449000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922334207990888,52.3834476394148],[4.922263532603153,52.3901881115656],[4.936218682281719,52.390242069558234],[4.936287235753624,52.38350158681422],[4.922334207990888,52.3834476394148]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00449000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00449000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00449000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00449000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00457000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00457000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00457000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00457000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5680 2772 4.949593 52.38651 \
-gcp 3189 584 4.943451 52.389807 \
-gcp 5278 828 4.948606 52.389453 \
   ../output/publieke-werken/downloads/DUIZ00457000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00457000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936287235753624,52.38350158681422],[4.936218682281719,52.390242069558234],[4.95017387044471,52.390294382787665],[4.950240301980939,52.38355388977322],[4.936287235753624,52.38350158681422]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00457000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00457000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00457000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00457000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00465000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00465000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00465000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00465000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1928 608 4.954308 52.389797 \
-gcp 5342 1584 4.96272 52.388343 \
-gcp 5610 4564 4.963412 52.383851 \
   ../output/publieke-werken/downloads/DUIZ00465000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00465000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.950240301980939,52.38355388977322],[4.95017387044471,52.390294382787665],[4.964129095901116,52.390345051244516],[4.964193405482441,52.38360454828254],[4.950240301980939,52.38355388977322]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00465000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00465000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00465000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00465000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00469000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00469000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00469000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00469000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5228 3464 4.976077 52.385699 \
-gcp 4496 1808 4.974264 52.388174 \
-gcp 1856 2760 4.967805 52.38674 \
-gcp 1056 4340 4.96582 52.38435 \
   ../output/publieke-werken/downloads/DUIZ00469000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00469000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.964193405482441,52.38360454828254],[4.964129095901116,52.390345051244516],[4.978084357459904,52.390394074919904],[4.978146545067712,52.38365356233319],[4.964193405482441,52.38360454828254]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00469000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00469000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00469000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00469000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ00472000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.978146545067712,52.38365356233319],[4.978084357459904,52.390394074919904],[4.992039653930022,52.390441453805074],[4.992099719546314,52.38370093191648],[4.978146545067712,52.38365356233319]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00472000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00472000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00472000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00472000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ00476000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.992099719546314,52.38370093191648],[4.992039653930022,52.390441453805074],[5.005994984120399,52.390487187891644],[5.006052927727788,52.38374665702412],[4.992099719546314,52.38370093191648]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00476000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00476000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00476000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00476000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00478000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00478000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00478000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00478000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5504 2028 5.018891 52.387915 \
-gcp 2953 3635 5.012614 52.385472 \
-gcp 1153 475 5.008199 52.390206 \
   ../output/publieke-werken/downloads/DUIZ00478000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00478000001.vrt

echo '{"type":"Polygon","coordinates":[[[5.006052927727788,52.38374665702412],[5.005994984120399,52.390487187891644],[5.019950346839944,52.390531277171554],[5.020006168421657,52.38379073764786],[5.006052927727788,52.38374665702412]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00478000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00478000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00478000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00478000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00479000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00479000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00479000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00479000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 2384 1832 5.024979 52.388186 \
-gcp 632 2212 5.020849 52.387643 \
-gcp 2596 324 5.025558 52.390491 \
   ../output/publieke-werken/downloads/DUIZ00479000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00479000001.vrt

echo '{"type":"Polygon","coordinates":[[[5.020006168421657,52.38379073764786],[5.019950346839944,52.390531277171554],[5.033905740897546,52.39057372163698],[5.033959440437426,52.38383317378],[5.020006168421657,52.38379073764786]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00479000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00479000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00479000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00479000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00488000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00488000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00488000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00488000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5916 4125 4.852577 52.377338 \
-gcp 5276 452 4.850963 52.382879 \
-gcp 518 3074 4.839263 52.378903 \
   ../output/publieke-werken/downloads/DUIZ00488000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00488000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.838700293094798,52.37634901113428],[4.838616915830047,52.38308942232453],[4.852569687808244,52.383153236155735],[4.852650944030937,52.37641281243913],[4.838700293094798,52.37634901113428]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00488000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00488000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00488000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00488000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00498000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00498000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00498000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00498000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1009 774 4.854337 52.382492 \
-gcp 3262 922 4.859873 52.382296 \
-gcp 4186 4744 4.862212 52.376559 \
-gcp 546 4676 4.853269 52.376627 \
   ../output/publieke-werken/downloads/DUIZ00498000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00498000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.852650944030937,52.37641281243913],[4.852569687808244,52.383153236155735],[4.866522505392917,52.383215405608176],[4.866601640550044,52.376474969687905],[4.852650944030937,52.37641281243913]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00498000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00498000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00498000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00498000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00513000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00513000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00513000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00513000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5646 514 4.879746 52.382922 \
-gcp 5840 3978 4.880303 52.377703 \
-gcp 1071 1034 4.868491 52.382081 \
   ../output/publieke-werken/downloads/DUIZ00513000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00513000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866601640550044,52.376474969687905],[4.866522505392917,52.383215405608176],[4.880475367393809,52.38327593067091],[4.880552381462476,52.376535482869734],[4.866601640550044,52.376474969687905]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00513000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00513000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00513000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00513000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00530000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00530000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00530000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00530000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 286 288 4.880475 52.383277 \
-gcp 5924 282 4.894428 52.383335 \
-gcp 5936 4736 4.894503 52.376595 \
   ../output/publieke-werken/downloads/DUIZ00530000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00530000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880552381462476,52.376535482869734],[4.880475367393809,52.38327593067091],[4.894428272620641,52.3833348113331],[4.894503165578564,52.37659435197376],[4.880552381462476,52.376535482869734]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00530000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00530000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00530000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00530000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00544000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00544000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00544000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00544000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5882 1086 4.907981 52.382492 \
-gcp 1244 1232 4.896571 52.382201 \
-gcp 431 4922 4.894629 52.376618 \
-gcp 6008 4510 4.908383 52.377296 \
   ../output/publieke-werken/downloads/DUIZ00544000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00544000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894503165578564,52.37659435197376],[4.894428272620641,52.3833348113331],[4.908381219883111,52.38339204758446],[4.908453991708622,52.376651576989644],[4.894503165578564,52.37659435197376]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00544000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00544000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00544000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00544000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00555000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00555000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00555000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00555000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1941 372 4.91249 52.383263 \
-gcp 4068 2747 4.917718 52.379708 \
-gcp 1004 3884 4.910213 52.37795 \
   ../output/publieke-werken/downloads/DUIZ00555000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00555000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908453991708622,52.376651576989644],[4.908381219883111,52.38339204758446],[4.922334207990888,52.3834476394148],[4.922404858662931,52.37670715790718],[4.908453991708622,52.376651576989644]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00555000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00555000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00555000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00555000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00563000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00563000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00563000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00563000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 2195 744 4.926907 52.383091 \
-gcp 472 2600 4.922653 52.380236 \
-gcp 5779 4877 4.935876 52.376837 \
   ../output/publieke-werken/downloads/DUIZ00563000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00563000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922404858662931,52.37670715790718],[4.922334207990888,52.3834476394148],[4.936287235753624,52.38350158681422],[4.936355765251757,52.376761094716606],[4.922404858662931,52.37670715790718]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00563000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00563000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00563000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00563000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00569000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00569000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00569000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00569000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 280 281 4.936287 52.383502 \
-gcp 5891 4702 4.950306 52.376814 \
-gcp 283 4714 4.936355 52.376762 \
   ../output/publieke-werken/downloads/DUIZ00569000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00569000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936355765251757,52.376761094716606],[4.936287235753624,52.38350158681422],[4.950240301980939,52.38355388977322],[4.950306710285336,52.37681338740837],[4.936355765251757,52.376761094716606]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00569000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00569000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00569000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00569000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00575000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00575000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00575000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00575000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4520 688 4.960708 52.38299 \
-gcp 5126 382 4.96221 52.383458 \
-gcp 5920 464 4.964173 52.383353 \
-gcp 2703 4227 4.956245 52.377662 \
   ../output/publieke-werken/downloads/DUIZ00575000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00575000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.950306710285336,52.37681338740837],[4.950240301980939,52.38355388977322],[4.964193405482441,52.38360454828254],[4.964257692573884,52.37686403597314],[4.950306710285336,52.37681338740837]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00575000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00575000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00575000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00575000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00585000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00585000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00585000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00585000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 808 375 4.965434 52.38355 \
-gcp 365 600 4.964297 52.383213 \
-gcp 1206 1576 4.966448 52.381713 \
-gcp 4048 454 4.973443 52.383445 \
-gcp 5038 337 4.975884 52.383622 \
-gcp 5482 3008 4.977032 52.379555 \
-gcp 5368 4076 4.976721 52.377996 \
-gcp 2044 2984 4.968454 52.379624 \
-gcp 552 4784 4.964817 52.37686 \
   ../output/publieke-werken/downloads/DUIZ00585000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00585000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.964257692573884,52.37686403597314],[4.964193405482441,52.38360454828254],[4.978146545067712,52.38365356233319],[4.9782087109276,52.376913040402066],[4.964257692573884,52.37686403597314]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00585000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00585000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00585000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00585000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00589000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00589000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00589000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00589000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5861 3931 4.991899 52.378233 \
-gcp 4162 4758 4.987678 52.376985 \
-gcp 2200 1328 4.982826 52.382142 \
   ../output/publieke-werken/downloads/DUIZ00589000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00589000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.9782087109276,52.376913040402066],[4.978146545067712,52.38365356233319],[4.992099719546314,52.38370093191648],[4.99215976415666,52.37696040068631],[4.9782087109276,52.376913040402066]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00589000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00589000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00589000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00589000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00593000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00593000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00593000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00593000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 320 316 4.992099 52.383702 \
-gcp 5948 336 5.006052 52.383747 \
-gcp 5960 4788 5.00611 52.377007 \
   ../output/publieke-werken/downloads/DUIZ00593000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00593000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.99215976415666,52.37696040068631],[4.992099719546314,52.38370093191648],[5.006052927727788,52.38374665702412],[5.006110851071218,52.37700611681764],[4.99215976415666,52.37696040068631]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00593000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00593000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00593000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00593000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00594000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00594000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00594000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00594000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1182 1020 5.008307 52.382633 \
-gcp 2400 4584 5.011311 52.37725 \
-gcp 1306 4110 5.008591 52.378 \
-gcp 492 4050 5.00659 52.378111 \
-gcp 1272 4752 5.008473 52.37703 \
   ../output/publieke-werken/downloads/DUIZ00594000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00594000001.vrt

echo '{"type":"Polygon","coordinates":[[[5.006110851071218,52.37700611681764],[5.006052927727788,52.38374665702412],[5.020006168421657,52.38379073764786],[5.020061970481409,52.37705018878786],[5.006110851071218,52.37700611681764]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00594000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00594000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00594000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00594000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00604000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00604000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00604000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00604000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 3173 2406 4.84592 52.373146 \
-gcp 2316 1247 4.843801 52.374892 \
-gcp 2514 829 4.844289 52.37555 \
-gcp 767 423 4.839939 52.37614 \
-gcp 4831 324 4.850029 52.376326 \
-gcp 5021 1997 4.850475 52.373831 \
-gcp 5617 3619 4.852009 52.371342 \
-gcp 5789 4670 4.852449 52.369724 \
-gcp 4490 4689 4.849214 52.369691 \
-gcp 281 2747 4.838877 52.372567 \
   ../output/publieke-werken/downloads/DUIZ00604000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00604000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.838783641207661,52.36960859061196],[4.838700293094798,52.37634901113428],[4.852650944030937,52.37641281243913],[4.852732171843194,52.36967237939424],[4.838783641207661,52.36960859061196]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00604000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00604000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00604000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00604000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00618000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00618000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00618000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00618000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1544 4824 4.85556 52.369737 \
-gcp 6012 4448 4.866638 52.370248 \
-gcp 4346 395 4.862545 52.376421 \
   ../output/publieke-werken/downloads/DUIZ00618000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00618000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.852732171843194,52.36967237939424],[4.852650944030937,52.37641281243913],[4.866601640550044,52.376474969687905],[4.866680748038203,52.36973452444315],[4.852732171843194,52.36967237939424]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00618000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00618000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00618000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00618000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00637000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00637000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00637000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00637000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1550 955 4.869829 52.375403 \
-gcp 5053 433 4.878482 52.376267 \
-gcp 5681 4339 4.880167 52.370359 \
-gcp 412 4448 4.867123 52.37009 \
   ../output/publieke-werken/downloads/DUIZ00637000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00637000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866680748038203,52.36973452444315],[4.866601640550044,52.376474969687905],[4.880552381462476,52.376535482869734],[4.880629368603654,52.36979502574763],[4.866680748038203,52.36973452444315]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00637000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00637000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00637000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00637000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00658000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00658000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00658000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00658000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5632 560 4.89383 52.376179 \
-gcp 1052 588 4.882463 52.376074 \
-gcp 1272 4290 4.883106 52.370447 \
-gcp 5795 4412 4.894326 52.370307 \
   ../output/publieke-werken/downloads/DUIZ00658000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00658000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880629368603654,52.36979502574763],[4.880552381462476,52.376535482869734],[4.894503165578564,52.37659435197376],[4.894578032350497,52.36985388329698],[4.880629368603654,52.36979502574763]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00658000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00658000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00658000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00658000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00678000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00678000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00678000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00678000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 880 817 4.895643 52.37613 \
-gcp 978 4686 4.895938 52.370254 \
-gcp 5680 4120 4.907579 52.371171 \
-gcp 4541 2075 4.904741 52.374263 \
   ../output/publieke-werken/downloads/DUIZ00678000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00678000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894578032350497,52.36985388329698],[4.894503165578564,52.37659435197376],[4.908453991708622,52.376651576989644],[4.908526738089654,52.369911097080795],[4.894578032350497,52.36985388329698]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00678000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00678000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00678000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00678000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00692000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00692000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00692000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00692000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 2812 1222 4.914317 52.375635 \
-gcp 1523 4582 4.911216 52.37051 \
-gcp 4576 4965 4.91879 52.369969 \
   ../output/publieke-werken/downloads/DUIZ00692000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00692000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908526738089654,52.369911097080795],[4.908453991708622,52.376651576989644],[4.922404858662931,52.37670715790718],[4.922475484632021,52.369966667088896],[4.908526738089654,52.369911097080795]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00692000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00692000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00692000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00692000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00704000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00704000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00704000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00704000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 2148 688 4.927089 52.3761 \
-gcp 551 4615 4.923141 52.370153 \
-gcp 5690 2002 4.935871 52.374129 \
   ../output/publieke-werken/downloads/DUIZ00704000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00704000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922475484632021,52.369966667088896],[4.922404858662931,52.37670715790718],[4.936355765251757,52.376761094716606],[4.936424270788476,52.370020593311544],[4.922475484632021,52.369966667088896]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00704000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00704000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00704000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00704000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ00711000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936424270788476,52.370020593311544],[4.936355765251757,52.376761094716606],[4.950306710285336,52.37681338740837],[4.950373095369869,52.37007287573915],[4.936424270788476,52.370020593311544]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00711000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00711000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00711000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00711000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ00719000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.950373095369869,52.37007287573915],[4.950306710285336,52.37681338740837],[4.964257692573884,52.37686403597314],[4.964321957187033,52.37012351436243],[4.950373095369869,52.37007287573915]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00719000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00719000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00719000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00719000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00722000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00722000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00722000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00722000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 360 328 4.964705 52.376703 \
-gcp 5976 359 4.978437 52.376831 \
-gcp 344 4743 4.965091 52.369652 \
   ../output/publieke-werken/downloads/DUIZ00722000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00722000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.964321957187033,52.37012351436243],[4.964257692573884,52.37686403597314],[4.9782087109276,52.376913040402066],[4.978270855050775,52.37017250917245],[4.964321957187033,52.37012351436243]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00722000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00722000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00722000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00722000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00727000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00727000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00727000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00727000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1508 2188 4.981291 52.374024 \
-gcp 3884 615 4.987149 52.376447 \
-gcp 672 832 4.979183 52.376071 \
   ../output/publieke-werken/downloads/DUIZ00727000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00727000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.978270855050775,52.37017250917245],[4.9782087109276,52.376913040402066],[4.99215976415666,52.37696040068631],[4.992219787771885,52.37021986016053],[4.978270855050775,52.37017250917245]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00727000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00727000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00727000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00727000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00728000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00728000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00728000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00728000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 3978 1054 5.001349 52.375822 \
-gcp 5702 2250 5.005643 52.374017 \
-gcp 5766 716 5.005809 52.376346 \
   ../output/publieke-werken/downloads/DUIZ00728000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00728000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.992219787771885,52.37021986016053],[4.99215976415666,52.37696040068631],[5.006110851071218,52.37700611681764],[5.006168754161131,52.3702655673183],[4.992219787771885,52.37021986016053]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00728000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00728000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00728000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00728000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00729000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00729000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00729000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00729000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 3062 3511 5.013065 52.372147 \
-gcp 2071 424 5.010581 52.376791 \
-gcp 396 2431 5.00645 52.373765 \
   ../output/publieke-werken/downloads/DUIZ00729000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00729000001.vrt

echo '{"type":"Polygon","coordinates":[[[5.006168754161131,52.3702655673183],[5.006110851071218,52.37700611681764],[5.020061970481409,52.37705018878786],[5.020117753029265,52.370309630637635],[5.006168754161131,52.3702655673183]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00729000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00729000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00729000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00729000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00736000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00736000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00736000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00736000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 282 507 4.838799 52.369265 \
-gcp 1080 4477 4.840878 52.363245 \
-gcp 4510 332 4.849294 52.369596 \
   ../output/publieke-werken/downloads/DUIZ00736000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00736000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.838866960183662,52.36286816080361],[4.838783641207661,52.36960859061196],[4.852732171843194,52.36967237939424],[4.852813371259659,52.362931937067145],[4.838866960183662,52.36286816080361]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00736000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00736000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00736000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00736000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00752000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00752000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00752000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00752000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5695 3180 4.866192 52.365325 \
-gcp 5490 943 4.865688 52.368728 \
-gcp 507 1470 4.853345 52.367909 \
   ../output/publieke-werken/downloads/DUIZ00752000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00752000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.852813371259659,52.362931937067145],[4.852732171843194,52.36967237939424],[4.866680748038203,52.36973452444315],[4.866759827871651,52.36299406991982],[4.852813371259659,52.362931937067145]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00752000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00752000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00752000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00752000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00770000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00770000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00770000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00770000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5301 3989 4.879185 52.364145 \
-gcp 5006 784 4.878434 52.369023 \
-gcp 622 2703 4.867582 52.366081 \
   ../output/publieke-werken/downloads/DUIZ00770000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00770000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866759827871651,52.36299406991982],[4.866680748038203,52.36973452444315],[4.880629368603654,52.36979502574763],[4.880706328831223,52.363054559350616],[4.866759827871651,52.36299406991982]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00770000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00770000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00770000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00770000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00791000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00791000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00791000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00791000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5086 4095 4.892607 52.36405 \
-gcp 1298 3878 4.88324 52.364349 \
-gcp 3389 436 4.888358 52.369599 \
   ../output/publieke-werken/downloads/DUIZ00791000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00791000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880706328831223,52.363054559350616],[4.880629368603654,52.36979502574763],[4.894578032350497,52.36985388329698],[4.894652872949933,52.36311340534883],[4.880706328831223,52.363054559350616]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00791000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00791000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00791000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00791000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00815000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00815000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00815000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00815000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5794 1070 4.908507 52.368625 \
-gcp 5648 4362 4.908223 52.363594 \
-gcp 428 4539 4.895208 52.36324 \
-gcp 1256 271 4.897161 52.369755 \
   ../output/publieke-werken/downloads/DUIZ00815000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00815000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894652872949933,52.36311340534883],[4.894578032350497,52.36985388329698],[4.908526738089654,52.369911097080795],[4.908599459039319,52.36317060790397],[4.894652872949933,52.36311340534883]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00815000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00815000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00815000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00815000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00007000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00007000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00007000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00007000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 196 390 4.851918 52.437077 \
-gcp 5825 382 4.865888 52.437139 \
-gcp 181 4831 4.851999 52.430337 \
   ../output/publieke-werken/downloads/DUIZ00007000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00007000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.852000097525061,52.43033593711086],[4.85191861349053,52.43707628454289],[4.865888426338436,52.437138551758146],[4.865967783361889,52.43039819209272],[4.852000097525061,52.43033593711086]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00007000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00007000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00007000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00007000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00008000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00008000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00008000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00008000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 168 4687 4.865967 52.430399 \
-gcp 167 263 4.865888 52.437139 \
-gcp 5787 4685 4.879935 52.430459 \
   ../output/publieke-werken/downloads/DUIZ00008000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00008000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.865967783361889,52.43039819209272],[4.865888426338436,52.437138551758146],[4.8798582837863,52.43719917199841],[4.87993551377565,52.4304588004231],[4.865967783361889,52.43039819209272]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00008000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00008000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00008000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00008000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00009000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00009000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00009000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00009000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1004 1960 4.89582 52.434658 \
-gcp 2604 2708 4.899811 52.433507 \
-gcp 5660 1636 4.90745 52.435123 \
-gcp 2048 3796 4.898438 52.431911 \
   ../output/publieke-werken/downloads/DUIZ00009000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00009000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.893903287571761,52.43051776209121],[4.893828184638918,52.437258145252876],[4.907798127701064,52.437315471511155],[4.90787110355561,52.43057507708661],[4.893903287571761,52.43051776209121]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00009000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00009000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00009000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00009000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00010000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00010000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00010000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00010000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 2938 2606 4.914687 52.433867 \
-gcp 3940 1624 4.916639 52.435358 \
-gcp 5748 1724 4.921575 52.435227 \
-gcp 5656 3472 4.921446 52.432591 \
-gcp 5604 4556 4.921285 52.430923 \
-gcp 3284 4548 4.915491 52.430884 \
-gcp 2688 4390 4.914011 52.431152 \
-gcp 1224 4070 4.910427 52.431597 \
-gcp 596 3368 4.908764 52.43267 \
-gcp 1806 602 4.911747 52.436882 \
-gcp 3370 346 4.915642 52.437297 \
   ../output/publieke-werken/downloads/DUIZ00010000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00010000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.90787110355561,52.43057507708661],[4.907798127701064,52.437315471511155],[4.921768111777485,52.437371150763006],[4.921838960532559,52.43063074539914],[4.90787110355561,52.43057507708661]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00010000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00010000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00010000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00010000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ00011000001.vrt

echo '{"type":"Polygon","coordinates":[]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00011000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00011000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00011000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00011000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00016000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00016000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00016000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00016000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4453 616 4.862663 52.429713 \
-gcp 1596 3860 4.855592 52.424774 \
-gcp 2058 2212 4.856649 52.427253 \
   ../output/publieke-werken/downloads/DUIZ00016000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00016000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.852081553031653,52.42359557998199],[4.852000097525061,52.43033593711086],[4.865967783361889,52.43039819209272],[4.866047112601932,52.42365782273422],[4.852081553031653,52.42359557998199]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00016000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00016000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00016000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00016000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00030000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00030000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00030000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00030000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 2288 2632 4.84319 52.419965 \
-gcp 3120 1680 4.845142 52.421358 \
-gcp 5728 1656 4.851751 52.421319 \
-gcp 608 2096 4.83922 52.420665 \
-gcp 2624 712 4.844027 52.422863 \
   ../output/publieke-werken/downloads/DUIZ00030000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00030000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.838199591701414,52.41679133668233],[4.838116039209247,52.423531690912704],[4.852081553031653,52.42359557998199],[4.852162980025028,52.416855213202396],[4.838199591701414,52.41679133668233]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00030000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00030000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00030000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00030000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00034000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00034000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00034000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00034000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 552 840 4.852937 52.422788 \
-gcp 646 3164 4.853168 52.419268 \
-gcp 2176 764 4.856987 52.422919 \
-gcp 3196 2084 4.859562 52.420926 \
   ../output/publieke-werken/downloads/DUIZ00034000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00034000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.852162980025028,52.416855213202396],[4.852081553031653,52.42359557998199],[4.866047112601932,52.42365782273422],[4.866126414072907,52.41691744372869],[4.852162980025028,52.416855213202396]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00034000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00034000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00034000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00034000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00037000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00037000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00037000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00037000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 3370 3644 4.873799 52.418512 \
-gcp 5829 3597 4.879995 52.418571 \
-gcp 4655 4554 4.877071 52.417102 \
   ../output/publieke-werken/downloads/DUIZ00037000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00037000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866126414072907,52.41691744372869],[4.866047112601932,52.42365782273422],[4.880012716726138,52.42371841915835],[4.880089892651725,52.41697802825022],[4.866126414072907,52.41691744372869]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00037000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00037000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00037000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00037000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00040000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00040000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00040000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00040000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5069 4555 4.892258 52.417132 \
-gcp 364 4188 4.880531 52.417671 \
-gcp 5510 2862 4.893293 52.419742 \
-gcp 3287 1895 4.887768 52.421159 \
   ../output/publieke-werken/downloads/DUIZ00040000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00040000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880089892651725,52.41697802825022],[4.880012716726138,52.42371841915835],[4.893978364210307,52.42377736924362],[4.894053414568123,52.417036966756214],[4.880089892651725,52.41697802825022]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00040000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00040000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00040000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00040000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00043000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00043000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00043000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00043000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 372 356 4.893978 52.423778 \
-gcp 371 4789 4.894053 52.417038 \
-gcp 5981 4778 4.908016 52.417095 \
   ../output/publieke-werken/downloads/DUIZ00043000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00043000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894053414568123,52.417036966756214],[4.893978364210307,52.42377736924362],[4.907944053860436,52.423834672979616],[4.90801697862873,52.417094259236194],[4.894053414568123,52.417036966756214]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00043000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00043000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00043000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00043000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00045000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00045000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00045000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00045000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 328 319 4.907606 52.423465 \
-gcp 5912 351 4.923291 52.423203 \
-gcp 5856 4791 4.923227 52.416398 \
   ../output/publieke-werken/downloads/DUIZ00045000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00045000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.90801697862873,52.417094259236194],[4.907944053860436,52.423834672979616],[4.921909784482512,52.42389033035611],[4.921980583640138,52.41714990568002],[4.90801697862873,52.417094259236194]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00045000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00045000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00045000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00045000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00046000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00046000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00046000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00046000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 239 241 4.921909 52.423891 \
-gcp 240 4665 4.92198 52.417151 \
-gcp 5843 4649 4.935944 52.417205 \
   ../output/publieke-werken/downloads/DUIZ00046000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00046000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.921980583640138,52.41714990568002],[4.921909784482512,52.42389033035611],[4.935875554882493,52.4239443413633],[4.935944228408925,52.41720390607779],[4.921980583640138,52.41714990568002]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00046000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00046000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00046000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00046000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00048000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00048000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00048000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00048000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 307 4728 4.935944 52.417205 \
-gcp 5895 4725 4.949907 52.417257 \
-gcp 315 306 4.935875 52.423945 \
   ../output/publieke-werken/downloads/DUIZ00048000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00048000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.935944228408925,52.41720390607779],[4.935875554882493,52.4239443413633],[4.949841363866311,52.42399670599152],[4.949907911741644,52.41725626042006],[4.935944228408925,52.41720390607779]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00048000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00048000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00048000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00048000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00060000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00060000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00060000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00060000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 3065 1966 4.845024 52.414537 \
-gcp 5561 1514 4.851204 52.41525 \
-gcp 4396 4264 4.848361 52.411085 \
   ../output/publieke-werken/downloads/DUIZ00060000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00060000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.838283114951327,52.41005097284346],[4.838199591701414,52.41679133668233],[4.852162980025028,52.416855213202396],[4.852244378519897,52.41011483681815],[4.838283114951327,52.41005097284346]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00060000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00060000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00060000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00060000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00077000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00077000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00077000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00077000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1119 1806 4.854444 52.414481 \
-gcp 3212 3198 4.859626 52.412338 \
-gcp 1428 4440 4.855195 52.410456 \
   ../output/publieke-werken/downloads/DUIZ00077000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00077000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.852244378519897,52.41011483681815],[4.852162980025028,52.416855213202396],[4.866126414072907,52.41691744372869],[4.86620568778914,52.41017705512224],[4.852244378519897,52.41011483681815]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00077000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00077000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00077000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00077000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00084000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00084000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00084000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00084000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5538 450 4.879292 52.416614 \
-gcp 5346 1482 4.878788 52.415057 \
-gcp 4272 534 4.876095 52.416484 \
   ../output/publieke-werken/downloads/DUIZ00084000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00084000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.86620568778914,52.41017705512224],[4.866126414072907,52.41691744372869],[4.880089892651725,52.41697802825022],[4.880167041566348,52.410237627744756],[4.86620568778914,52.41017705512224]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00084000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00084000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00084000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00084000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00091000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00091000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00091000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00091000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 586 1493 4.881071 52.415029 \
-gcp 5396 1810 4.89306 52.414597 \
-gcp 4946 4159 4.891993 52.41102 \
   ../output/publieke-werken/downloads/DUIZ00091000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00091000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880167041566348,52.410237627744756],[4.880089892651725,52.41697802825022],[4.894053414568123,52.417036966756214],[4.894128438658778,52.41029655467496],[4.880167041566348,52.410237627744756]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00091000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00091000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00091000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00091000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00097000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00097000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00097000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00097000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 310 909 4.894323 52.415986 \
-gcp 5160 414 4.906436 52.416788 \
-gcp 5533 4586 4.907445 52.410411 \
-gcp 472 3983 4.894795 52.411288 \
   ../output/publieke-werken/downloads/DUIZ00097000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00097000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894128438658778,52.41029655467496],[4.894053414568123,52.417036966756214],[4.90801697862873,52.417094259236194],[4.908089877873669,52.41035383590237],[4.894128438658778,52.41029655467496]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00097000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00097000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00097000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00097000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00099000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00099000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00099000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00099000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 492 4160 4.908378 52.411432 \
-gcp 432 2188 4.908217 52.414396 \
-gcp 2296 1568 4.912798 52.415417 \
-gcp 1696 4320 4.911318 52.411111 \
   ../output/publieke-werken/downloads/DUIZ00099000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00099000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908089877873669,52.41035383590237],[4.90801697862873,52.417094259236194],[4.921980583640138,52.41714990568002],[4.922051358018237,52.410409471416834],[4.908089877873669,52.41035383590237]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00099000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00099000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00099000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00099000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00831000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00831000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00831000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00831000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1016 995 4.910588 52.368736 \
-gcp 536 1975 4.909408 52.367243 \
-gcp 4152 4063 4.918345 52.364144 \
-gcp 5392 2971 4.921499 52.365795 \
   ../output/publieke-werken/downloads/DUIZ00831000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00831000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908599459039319,52.36317060790397],[4.908526738089654,52.369911097080795],[4.922475484632021,52.369966667088896],[4.92254608591089,52.363226167005976],[4.908599459039319,52.36317060790397]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00831000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00831000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00831000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00831000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00847000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00847000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00847000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00847000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 1484 278 4.925593 52.369874 \
-gcp 5330 1116 4.935232 52.368656 \
-gcp 5336 4264 4.935334 52.363854 \
-gcp 616 4368 4.923559 52.363631 \
   ../output/publieke-werken/downloads/DUIZ00847000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00847000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.92254608591089,52.363226167005976],[4.922475484632021,52.369966667088896],[4.936424270788476,52.370020593311544],[4.936492752376134,52.36328008264504],[4.92254608591089,52.363226167005976]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00847000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00847000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00847000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00847000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00859000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00859000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00859000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00859000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 4101 4623 4.946181 52.363333 \
-gcp 1996 747 4.94087 52.369213 \
-gcp 323 2849 4.936751 52.365986 \
   ../output/publieke-werken/downloads/DUIZ00859000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00859000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.936492752376134,52.36328008264504],[4.936424270788476,52.370020593311544],[4.950373095369869,52.37007287573915],[4.950439457246515,52.363332354811625],[4.936492752376134,52.36328008264504]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00859000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00859000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00859000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00859000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ00868000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.950439457246515,52.363332354811625],[4.950373095369869,52.37007287573915],[4.964321957187033,52.37012351436243],[4.964386199333477,52.36338298349643],[4.950439457246515,52.363332354811625]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00868000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00868000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00868000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00868000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00872000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00872000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00872000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00872000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 272 398 4.964018 52.369998 \
-gcp 5920 430 4.978867 52.369894 \
-gcp 288 4846 4.964275 52.363762 \
   ../output/publieke-werken/downloads/DUIZ00872000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00872000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.964386199333477,52.36338298349643],[4.964321957187033,52.37012351436243],[4.978270855050775,52.37017250917245],[4.978332977448442,52.363431968690506],[4.964386199333477,52.36338298349643]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00872000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00872000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00872000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00872000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ00875000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.978332977448442,52.363431968690506],[4.978270855050775,52.37017250917245],[4.992219787771885,52.37021986016053],[4.992279790402813,52.36347931038522],[4.978332977448442,52.363431968690506]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00875000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00875000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00875000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00875000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ00877000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.992279790402813,52.36347931038522],[4.992219787771885,52.37021986016053],[5.006168754161131,52.3702655673183],[5.006226637007972,52.36352500857213],[4.992279790402813,52.36347931038522]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00877000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00877000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00877000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00877000001-warped.tif
    

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
   ../output/publieke-werken/1980/28992/warped/DUIZ00879000001.vrt

echo '{"type":"Polygon","coordinates":[[[5.006226637007972,52.36352500857213],[5.006168754161131,52.3702655673183],[5.020117753029265,52.370309630637635],[5.020173516075278,52.36356906324324],[5.006226637007972,52.36352500857213]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00879000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00879000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00879000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00879000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00891000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00891000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00891000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00891000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5539 263 4.852154 52.362882 \
-gcp 5753 4608 4.852797 52.356232 \
-gcp 984 1087 4.840803 52.361551 \
   ../output/publieke-werken/downloads/DUIZ00891000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00891000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.838950250037817,52.356127721755314],[4.838866960183662,52.36286816080361],[4.852813371259659,52.362931937067145],[4.85289454229496,52.35619148550395],[4.838950250037817,52.356127721755314]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00891000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00891000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00891000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00891000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00904000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00904000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00904000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00904000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5304 351 4.865533 52.362786 \
-gcp 494 327 4.853548 52.362774 \
-gcp 2254 3998 4.857974 52.357187 \
-gcp 5400 2915 4.865798 52.358855 \
   ../output/publieke-werken/downloads/DUIZ00904000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00904000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.85289454229496,52.35619148550395],[4.852813371259659,52.362931937067145],[4.866759827871651,52.36299406991982],[4.866838880064639,52.35625360616411],[4.85289454229496,52.35619148550395]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00904000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00904000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00904000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00904000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00923000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00923000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00923000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00923000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5048 350 4.878836 52.362832 \
-gcp 472 538 4.867432 52.362504 \
-gcp 2082 3916 4.871482 52.357367 \
-gcp 5059 4373 4.878919 52.356679 \
   ../output/publieke-werken/downloads/DUIZ00923000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00923000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.866838880064639,52.35625360616411],[4.866759827871651,52.36299406991982],[4.880706328831223,52.363054559350616],[4.880783262159048,52.35631408372479],[4.866838880064639,52.35625360616411]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00923000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00923000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00923000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00923000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00941000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00941000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00941000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00941000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5779 588 4.894608 52.362528 \
-gcp 711 289 4.881937 52.36296 \
-gcp 3357 4618 4.888589 52.356371 \
   ../output/publieke-werken/downloads/DUIZ00941000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00941000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.880783262159048,52.35631408372479],[4.880706328831223,52.363054559350616],[4.894652872949933,52.36311340534883],[4.894727687390359,52.356372918175296],[4.880783262159048,52.35631408372479]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00941000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00941000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00941000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00941000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00960000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00960000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00960000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00960000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 3832 2804 4.903711 52.359209 \
-gcp 4370 525 4.905004 52.362684 \
-gcp 922 2180 4.896442 52.360116 \
   ../output/publieke-werken/downloads/DUIZ00960000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00960000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.894727687390359,52.356372918175296],[4.894652872949933,52.36311340534883],[4.908599459039319,52.36317060790397],[4.908672154570724,52.35643010950521],[4.894727687390359,52.356372918175296]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00960000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00960000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00960000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00960000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00975000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00975000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00975000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00975000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5562 3650 4.921998 52.357987 \
-gcp 841 4418 4.91024 52.356755 \
-gcp 2982 1384 4.915497 52.36141 \
   ../output/publieke-werken/downloads/DUIZ00975000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00975000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.908672154570724,52.35643010950521],[4.908599459039319,52.36317060790397],[4.92254608591089,52.363226167005976],[4.922616662512259,52.35648565770449],[4.908672154570724,52.35643010950521]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00975000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00975000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00975000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00975000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00988000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00988000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00988000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00988000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 5326 3117 4.935281 52.358914 \
-gcp 903 3680 4.924246 52.358019 \
-gcp 2315 693 4.927722 52.362583 \
   ../output/publieke-werken/downloads/DUIZ00988000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00988000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.922616662512259,52.35648565770449],[4.92254608591089,52.363226167005976],[4.936492752376134,52.36328008264504],[4.93656121002707,52.35653956276317],[4.922616662512259,52.35648565770449]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00988000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00988000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00988000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00988000001-warped.tif
    

# =============================================================================================
# Name: DUIZ00999000001 🗺️
# =============================================================================================

if [ ! -f ../output/publieke-werken/downloads/DUIZ00999000001.jpg ]; then
  wget -O ../output/publieke-werken/downloads/DUIZ00999000001.jpg "https://beeldbank.amsterdam.nl/component/ams_memorixbeeld_download/?format=download&id=DUIZ00999000001"
fi

#  -a_srs EPSG:28992 \

gdal_translate -of vrt \
  -a_srs EPSG:4326 \
-gcp 228 240 4.936536 52.363248 \
-gcp 959 4613 4.93843 52.356575 \
-gcp 4852 4184 4.948161 52.357269 \
-gcp 5692 1052 4.950199 52.362046 \
   ../output/publieke-werken/downloads/DUIZ00999000001.jpg \
   ../output/publieke-werken/1980/28992/warped/DUIZ00999000001.vrt

echo '{"type":"Polygon","coordinates":[[[4.93656121002707,52.35653956276317],[4.936492752376134,52.36328008264504],[4.950439457246515,52.363332354811625],[4.950505795927228,52.35659182467182],[4.93656121002707,52.35653956276317]]]}' > ../output/publieke-werken/1980/28992/warped/DUIZ00999000001.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=75 \
  -dstalpha -overwrite \
  -cutline ../output/publieke-werken/1980/28992/warped/DUIZ00999000001.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  ../output/publieke-werken/1980/28992/warped/DUIZ00999000001.vrt \
  ../output/publieke-werken/1980/28992/warped/DUIZ00999000001-warped.tif
    

# =============================================================================================
# Add overviews and create index:
# =============================================================================================

mkdir -p ../output/publieke-werken/1980/28992/index

for j in ../output/publieke-werken/1980/28992/warped/*.tif; do
  gdaladdo -r cubic \
    --config COMPRESS_OVERVIEW JPEG \
    --config PHOTOMETRIC_OVERVIEW YCBCR \
    --config INTERLEAVE_OVERVIEW PIXEL \
    $j 2 4 8 16 32 64 128
done

# Create tile indices
cd ../output/publieke-werken/1980/28992/index
gdaltindex index.shp ../warped/*.tif
ogrinfo -sql "CREATE SPATIAL INDEX ON index" index.shp
    
