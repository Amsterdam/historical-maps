#!/bin/bash


# =============================================================================================
# Name: A 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/A.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 5174 2522 121414 487283 \
  -gcp 1829 2584 121319 486939 \
  -gcp 5174 2522 121414 487283 \
  -gcp 2141 3378 121412 486945 \
  output/atlas-loman/A.tif \
  output/atlas-loman/28992/warped/A.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8923163,52.3690885],[4.8931776,52.3727675],[4.8940065,52.3726013],[4.894215,52.372397],[4.8959122,52.3718701],[4.8954673,52.3715764],[4.8950325,52.3711868],[4.8947696,52.3708345],[4.8947696,52.3708345],[4.8947696,52.3708345],[4.8942561,52.3692564],[4.8942561,52.3692564],[4.8931482,52.369152],[4.8923163,52.3690885]]]]}' > output/atlas-loman/28992/warped/A.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/A.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/A.vrt \
  output/atlas-loman/28992/warped/A-warped.tif

rm output/atlas-loman/28992/warped/A.geojson

  

# =============================================================================================
# Name: AA 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/AA.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 6558 2293 121300 486308 \
  -gcp 2990 1294 121215 485927 \
  -gcp 6558 2293 121300 486308 \
  -gcp 2508 4326 121536 485892 \
  output/atlas-loman/AA.tif \
  output/atlas-loman/28992/warped/AA.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8908815,52.3583163],[4.8909425,52.3600901],[4.8923287,52.3638744],[4.8959081,52.3633737],[4.8961585,52.3600421],[4.8963692,52.359431],[4.8961804,52.3580564],[4.8961804,52.3580564],[4.8908815,52.3583163]]]]}' > output/atlas-loman/28992/warped/AA.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/AA.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/AA.vrt \
  output/atlas-loman/28992/warped/AA-warped.tif

rm output/atlas-loman/28992/warped/AA.geojson

  

# =============================================================================================
# Name: B 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/B.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 5866 2049 121554 487208 \
  -gcp 1619 3025 121417 486763 \
  -gcp 5866 2049 121554 487208 \
  -gcp 2744 3650 121536 486838 \
  output/atlas-loman/B.tif \
  output/atlas-loman/28992/warped/B.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8923163,52.3690885],[4.8931482,52.369152],[4.8942561,52.3692564],[4.8947696,52.3708345],[4.8947696,52.3708345],[4.8947696,52.3708345],[4.8950325,52.3711868],[4.8954673,52.3715764],[4.8959122,52.3718701],[4.8968176,52.3715266],[4.898717,52.3709904],[4.8973625,52.3694758],[4.8957917,52.3678256],[4.8940652,52.3672683],[4.8929042,52.3682924],[4.8923163,52.3690885],[4.8923163,52.3690885]]]]}' > output/atlas-loman/28992/warped/B.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/B.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/B.vrt \
  output/atlas-loman/28992/warped/B-warped.tif

rm output/atlas-loman/28992/warped/B.geojson

  

# =============================================================================================
# Name: BB 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/BB.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 6215 2219 121087 486354 \
  -gcp 3432 1515 120953 486085 \
  -gcp 6215 2219 121087 486354 \
  -gcp 3174 3907 121196 486004 \
  output/atlas-loman/BB.tif \
  output/atlas-loman/28992/warped/BB.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8860555,52.3609356],[4.8879605,52.3628657],[4.8882024,52.3629244],[4.8893954,52.3642845],[4.8923287,52.3638744],[4.8909425,52.3600901],[4.8908815,52.3583163],[4.889557,52.3586881],[4.8883766,52.3594173],[4.8879396,52.3599352],[4.8879396,52.3599352],[4.8860555,52.3609356]]]]}' > output/atlas-loman/28992/warped/BB.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/BB.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/BB.vrt \
  output/atlas-loman/28992/warped/BB-warped.tif

rm output/atlas-loman/28992/warped/BB.geojson

  

# =============================================================================================
# Name: C 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/C.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 6237 2295 121833 487241 \
  -gcp 1087 2450 121557 486768 \
  -gcp 6237 2295 121833 487241 \
  -gcp 1691 3573 121690 486759 \
  output/atlas-loman/C.tif \
  output/atlas-loman/28992/warped/C.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8973625,52.3694758],[4.8998643,52.3722447],[4.9008289,52.372055],[4.9012908,52.3708061],[4.9013726,52.3705643],[4.9017639,52.3700343],[4.900975,52.3695459],[4.900304,52.3690828],[4.8990271,52.368053],[4.8984182,52.3674667],[4.8982444,52.3672993],[4.8957917,52.3678256],[4.8957917,52.3678256],[4.8973625,52.3694758]]]]}' > output/atlas-loman/28992/warped/C.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/C.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/C.vrt \
  output/atlas-loman/28992/warped/C-warped.tif

rm output/atlas-loman/28992/warped/C.geojson

  

# =============================================================================================
# Name: CC 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/CC.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 5868 2248 120877 486550 \
  -gcp 3144 1480 120660 486344 \
  -gcp 5868 2248 120877 486550 \
  -gcp 2467 4596 120914 486117 \
  output/atlas-loman/CC.tif \
  output/atlas-loman/28992/warped/CC.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8860555,52.3609356],[4.8838975,52.3618877],[4.8822681,52.3620309],[4.8810569,52.3626537],[4.8803662,52.3625962],[4.8799841,52.3628676],[4.8801587,52.3631959],[4.8809586,52.3634451],[4.8821608,52.3640659],[4.8821608,52.3640659],[4.8831248,52.3644367],[4.8864666,52.3659308],[4.8864666,52.3659308],[4.8893954,52.3642845],[4.8882024,52.3629244],[4.8879605,52.3628657],[4.8860555,52.3609356],[4.8860555,52.3609356]]]]}' > output/atlas-loman/28992/warped/CC.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/CC.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/CC.vrt \
  output/atlas-loman/28992/warped/CC-warped.tif

rm output/atlas-loman/28992/warped/CC.geojson

  

# =============================================================================================
# Name: D 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/D.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 2560 2229 121123 486870 \
  -gcp 2876 3502 121141 486731 \
  -gcp 2560 2229 121123 486870 \
  -gcp 4682 3472 121333 486708 \
  output/atlas-loman/D.tif \
  output/atlas-loman/28992/warped/D.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8940652,52.3672683],[4.8931697,52.3669074],[4.8918628,52.3668818],[4.8907075,52.3670451],[4.8897824,52.3672631],[4.8892627,52.3675635],[4.8886089,52.3680651],[4.8889333,52.3685237],[4.8891946,52.3687332],[4.8907195,52.3689212],[4.8917507,52.3690465],[4.8923163,52.3690885],[4.8923163,52.3690885],[4.8929042,52.3682924],[4.8940652,52.3672683]]]]}' > output/atlas-loman/28992/warped/D.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/D.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/D.vrt \
  output/atlas-loman/28992/warped/D-warped.tif

rm output/atlas-loman/28992/warped/D.geojson

  

# =============================================================================================
# Name: DD 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/DD.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 2065 2315 120260 487438 \
  -gcp 1349 3381 120232 487307 \
  -gcp 2065 2315 120260 487438 \
  -gcp 5618 3336 120647 487472 \
  output/atlas-loman/DD.tif \
  output/atlas-loman/28992/warped/DD.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8763683,52.3724286],[4.8768657,52.37384],[4.8831372,52.3752435],[4.8834747,52.3751582],[4.8831611,52.3747016],[4.8830629,52.3739858],[4.8830629,52.3739858],[4.8763683,52.3724286]]]]}' > output/atlas-loman/28992/warped/DD.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/DD.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/DD.vrt \
  output/atlas-loman/28992/warped/DD-warped.tif

rm output/atlas-loman/28992/warped/DD.geojson

  

# =============================================================================================
# Name: E 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/E.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 1648 3277 121199 487299 \
  -gcp 5546 3670 121098 486897 \
  -gcp 1648 3277 121199 487299 \
  -gcp 5161 2222 121258 486916 \
  output/atlas-loman/E.tif \
  output/atlas-loman/28992/warped/E.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8891946,52.3687332],[4.8892864,52.3693657],[4.8902692,52.370876],[4.8905453,52.3717244],[4.8905469,52.372565],[4.8913801,52.3727164],[4.8922475,52.3727671],[4.8931776,52.3727675],[4.8923163,52.3690885],[4.8917507,52.3690465],[4.8907195,52.3689212],[4.8891946,52.3687332],[4.8891946,52.3687332],[4.8891946,52.3687332]]]]}' > output/atlas-loman/28992/warped/E.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/E.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/E.vrt \
  output/atlas-loman/28992/warped/E-warped.tif

rm output/atlas-loman/28992/warped/E.geojson

  

# =============================================================================================
# Name: EE 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/EE.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 1877 2137 120223 487271 \
  -gcp 1682 3210 120246 487161 \
  -gcp 1877 2137 120223 487271 \
  -gcp 5695 3243 120635 487317 \
  output/atlas-loman/EE.tif \
  output/atlas-loman/28992/warped/EE.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8758749,52.373749],[4.8768657,52.37384],[4.8763683,52.3724286],[4.8830629,52.3739858],[4.8829889,52.3727063],[4.8750064,52.3707426],[4.8744974,52.3718786],[4.8744378,52.3724311],[4.8755826,52.3729889],[4.8757745,52.3732391],[4.8758749,52.373749]]]]}' > output/atlas-loman/28992/warped/EE.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/EE.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/EE.vrt \
  output/atlas-loman/28992/warped/EE-warped.tif

rm output/atlas-loman/28992/warped/EE.geojson

  

# =============================================================================================
# Name: F 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/F.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 5401 2319 121062 487255 \
  -gcp 1863 2311 121013 486882 \
  -gcp 5401 2319 121062 487255 \
  -gcp 2088 2892 121078 486896 \
  output/atlas-loman/F.tif \
  output/atlas-loman/28992/warped/F.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8886089,52.3680651],[4.8877877,52.368808],[4.8885077,52.3721866],[4.8888374,52.3721745],[4.8896377,52.3723258],[4.8905469,52.372565],[4.8905453,52.3717244],[4.8902692,52.370876],[4.8892864,52.3693657],[4.8891946,52.3687332],[4.8889333,52.3685237],[4.8889333,52.3685237],[4.8886089,52.3680651]]]]}' > output/atlas-loman/28992/warped/F.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/F.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/F.vrt \
  output/atlas-loman/28992/warped/F-warped.tif

rm output/atlas-loman/28992/warped/F.geojson

  

# =============================================================================================
# Name: FF 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/FF.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 2276 1758 120249 487152 \
  -gcp 2303 3393 120317 486992 \
  -gcp 2276 1758 120249 487152 \
  -gcp 5527 3186 120625 487136 \
  output/atlas-loman/FF.tif \
  output/atlas-loman/28992/warped/FF.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8829889,52.3727063],[4.8829605,52.3724164],[4.8828302,52.3710905],[4.8758574,52.3691202],[4.8750064,52.3707426],[4.8829889,52.3727063]]]]}' > output/atlas-loman/28992/warped/FF.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/FF.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/FF.vrt \
  output/atlas-loman/28992/warped/FF-warped.tif

rm output/atlas-loman/28992/warped/FF.geojson

  

# =============================================================================================
# Name: G 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/G.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 2529 911 121308 487788 \
  -gcp 244 1426 121062 487266 \
  -gcp 2529 911 121308 487788 \
  -gcp 1281 1335 121201 487484 \
  output/atlas-loman/G.tif \
  output/atlas-loman/28992/warped/G.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8885077,52.3721866],[4.8893707,52.3745773],[4.8912579,52.3763585],[4.892024,52.3770361],[4.8928278,52.3768848],[4.8932683,52.3767992],[4.8940615,52.3766008],[4.8936898,52.3763367],[4.8917288,52.3749436],[4.8909696,52.3740595],[4.890506,52.3732709],[4.8905469,52.372565],[4.8896377,52.3723258],[4.8888374,52.3721745],[4.8885077,52.3721866],[4.8885077,52.3721866],[4.8885077,52.3721866]]]]}' > output/atlas-loman/28992/warped/G.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/G.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/G.vrt \
  output/atlas-loman/28992/warped/G-warped.tif

rm output/atlas-loman/28992/warped/G.geojson

  

# =============================================================================================
# Name: GG 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/GG.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 2619 1651 120320 486984 \
  -gcp 2536 3603 120400 486794 \
  -gcp 2619 1651 120320 486984 \
  -gcp 4803 3514 120613 486904 \
  output/atlas-loman/GG.tif \
  output/atlas-loman/28992/warped/GG.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8828302,52.3710905],[4.8826072,52.3688999],[4.8772253,52.3672075],[4.87684,52.3683765],[4.8758574,52.3691202],[4.8758574,52.3691202],[4.8828302,52.3710905]]]]}' > output/atlas-loman/28992/warped/GG.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/GG.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/GG.vrt \
  output/atlas-loman/28992/warped/GG-warped.tif

rm output/atlas-loman/28992/warped/GG.geojson

  

# =============================================================================================
# Name: H 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/H.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 5224 1736 121405 487704 \
  -gcp 1452 2338 121197 487357 \
  -gcp 5224 1736 121405 487704 \
  -gcp 2584 3240 121347 487388 \
  output/atlas-loman/H.tif \
  output/atlas-loman/28992/warped/H.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8936898,52.3763367],[4.8948367,52.3762201],[4.8952966,52.3761957],[4.8956049,52.3761365],[4.8956715,52.3760762],[4.8963116,52.3758167],[4.8964664,52.3757299],[4.8932642,52.3732152],[4.8931776,52.3727675],[4.8922475,52.3727671],[4.8913801,52.3727164],[4.8905469,52.372565],[4.890506,52.3732709],[4.8909696,52.3740595],[4.8917288,52.3749436],[4.8936898,52.3763367],[4.8936898,52.3763367],[4.8936898,52.3763367]]]]}' > output/atlas-loman/28992/warped/H.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/H.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/H.vrt \
  output/atlas-loman/28992/warped/H-warped.tif

rm output/atlas-loman/28992/warped/H.geojson

  

# =============================================================================================
# Name: HH 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/HH.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 1941 1692 120411 486766 \
  -gcp 1702 4047 120507 486543 \
  -gcp 1941 1692 120411 486766 \
  -gcp 5784 4031 120885 486751 \
  output/atlas-loman/HH.tif \
  output/atlas-loman/28992/warped/HH.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8772253,52.3672075],[4.8826072,52.3688999],[4.884748,52.3688648],[4.8867561,52.3687732],[4.8866922,52.3675708],[4.8848723,52.3668746],[4.8796731,52.3652006],[4.8791195,52.3648569],[4.8791725,52.3653084],[4.8791725,52.3653084],[4.8772253,52.3672075]]]]}' > output/atlas-loman/28992/warped/HH.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/HH.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/HH.vrt \
  output/atlas-loman/28992/warped/HH-warped.tif

rm output/atlas-loman/28992/warped/HH.geojson

  

# =============================================================================================
# Name: I 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/I.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 5545 2397 121691 487594 \
  -gcp 1935 2461 121431 487311 \
  -gcp 5545 2397 121691 487594 \
  -gcp 2213 3571 121537 487251 \
  output/atlas-loman/I.tif \
  output/atlas-loman/28992/warped/I.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8931776,52.3727675],[4.8932642,52.3732152],[4.8964664,52.3757299],[4.8973295,52.3754209],[4.897904,52.3751842],[4.898029,52.3752359],[4.8994015,52.3747464],[4.8959122,52.3718701],[4.894215,52.372397],[4.8940065,52.3726013],[4.8931776,52.3727675],[4.8931776,52.3727675],[4.8931776,52.3727675]]]]}' > output/atlas-loman/28992/warped/I.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/I.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/I.vrt \
  output/atlas-loman/28992/warped/I-warped.tif

rm output/atlas-loman/28992/warped/I.geojson

  

# =============================================================================================
# Name: II1 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/II1.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 1646 2339 120671 486591 \
  -gcp 1824 3707 120771 486486 \
  -gcp 1646 2339 120671 486591 \
  -gcp 5542 3721 121089 486710 \
  output/atlas-loman/II1.tif \
  output/atlas-loman/28992/warped/II1.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8809586,52.3634451],[4.8795838,52.3640288],[4.8791829,52.3645641],[4.8791195,52.3648569],[4.8796731,52.3652006],[4.883001,52.3662988],[4.8866922,52.3675708],[4.8867561,52.3687732],[4.8877877,52.368808],[4.8886089,52.3680651],[4.8892627,52.3675635],[4.8897824,52.3672631],[4.887953,52.3666806],[4.8848986,52.3652731],[4.8809586,52.3634451]]]]}' > output/atlas-loman/28992/warped/II1.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/II1.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/II1.vrt \
  output/atlas-loman/28992/warped/II1-warped.tif

rm output/atlas-loman/28992/warped/II1.geojson

  

# =============================================================================================
# Name: II2 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/II2.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 3897 2061 120555 486528 \
  -gcp 4043 3582 120663 486406 \
  -gcp 3897 2061 120555 486528 \
  -gcp 4886 3559 120734 486460 \
  output/atlas-loman/II2.tif \
  output/atlas-loman/28992/warped/II2.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8809586,52.3634451],[4.8795838,52.3640288],[4.8791829,52.3645641],[4.8791195,52.3648569],[4.8796731,52.3652006],[4.883001,52.3662988],[4.8866922,52.3675708],[4.8867561,52.3687732],[4.8877877,52.368808],[4.8886089,52.3680651],[4.8892627,52.3675635],[4.8897824,52.3672631],[4.887953,52.3666806],[4.8848986,52.3652731],[4.8809586,52.3634451]]]]}' > output/atlas-loman/28992/warped/II2.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/II2.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/II2.vrt \
  output/atlas-loman/28992/warped/II2-warped.tif

rm output/atlas-loman/28992/warped/II2.geojson

  

# =============================================================================================
# Name: II3 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/II3.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 2876 1901 120464 486474 \
  -gcp 2563 3432 120530 486321 \
  -gcp 2876 1901 120464 486474 \
  -gcp 4886 3488 120734 486460 \
  output/atlas-loman/II3.tif \
  output/atlas-loman/28992/warped/II3.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8809586,52.3634451],[4.8795838,52.3640288],[4.8791829,52.3645641],[4.8791195,52.3648569],[4.8796731,52.3652006],[4.883001,52.3662988],[4.8866922,52.3675708],[4.8867561,52.3687732],[4.8877877,52.368808],[4.8886089,52.3680651],[4.8892627,52.3675635],[4.8897824,52.3672631],[4.887953,52.3666806],[4.8848986,52.3652731],[4.8809586,52.3634451]]]]}' > output/atlas-loman/28992/warped/II3.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/II3.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/II3.vrt \
  output/atlas-loman/28992/warped/II3-warped.tif

rm output/atlas-loman/28992/warped/II3.geojson

  

# =============================================================================================
# Name: K 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/K.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 5375 1775 121800 487531 \
  -gcp 1684 2252 121561 487217 \
  -gcp 5375 1775 121800 487531 \
  -gcp 2198 3825 121716 487138 \
  output/atlas-loman/K.tif \
  output/atlas-loman/28992/warped/K.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8994015,52.3747464],[4.9003535,52.374443],[4.9006474,52.3743588],[4.9013333,52.3741396],[4.9010719,52.3735238],[4.9006398,52.372506],[4.8998643,52.3722447],[4.898717,52.3709904],[4.8973603,52.3713655],[4.8968176,52.3715266],[4.8959122,52.3718701],[4.8994015,52.3747464],[4.8994015,52.3747464],[4.8994015,52.3747464]]]]}' > output/atlas-loman/28992/warped/K.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/K.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/K.vrt \
  output/atlas-loman/28992/warped/K-warped.tif

rm output/atlas-loman/28992/warped/K.geojson

  

# =============================================================================================
# Name: KK 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/KK.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 2095 1209 120681 487284 \
  -gcp 2154 4790 120658 486905 \
  -gcp 2095 1209 120681 487284 \
  -gcp 5069 4758 120965 486885 \
  output/atlas-loman/KK.tif \
  output/atlas-loman/28992/warped/KK.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8826072,52.3688999],[4.8828302,52.3710905],[4.8829605,52.3724164],[4.8848607,52.3723724],[4.886784,52.3723063],[4.8869922,52.3722754],[4.8885077,52.3721866],[4.8877877,52.368808],[4.8867561,52.3687732],[4.884748,52.3688648],[4.884748,52.3688648],[4.8826072,52.3688999]]]]}' > output/atlas-loman/28992/warped/KK.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/KK.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/KK.vrt \
  output/atlas-loman/28992/warped/KK-warped.tif

rm output/atlas-loman/28992/warped/KK.geojson

  

# =============================================================================================
# Name: L 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/L.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 4459 1309 121464 487999 \
  -gcp 2078 1367 121312 487794 \
  -gcp 4459 1309 121464 487999 \
  -gcp 2583 4039 121574 487664 \
  output/atlas-loman/L.tif \
  output/atlas-loman/28992/warped/L.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.892024,52.3770361],[4.8945534,52.3791831],[4.8954717,52.3794089],[4.8976168,52.378453],[4.8972037,52.3779647],[4.8985251,52.3770566],[4.8964664,52.3757299],[4.8963116,52.3758167],[4.8956715,52.3760762],[4.8956049,52.3761365],[4.8952966,52.3761957],[4.8948367,52.3762201],[4.8936898,52.3763367],[4.8940615,52.3766008],[4.8932683,52.3767992],[4.8928278,52.3768848],[4.892024,52.3770361],[4.892024,52.3770361],[4.892024,52.3770361]]]]}' > output/atlas-loman/28992/warped/L.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/L.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/L.vrt \
  output/atlas-loman/28992/warped/L-warped.tif

rm output/atlas-loman/28992/warped/L.geojson

  

# =============================================================================================
# Name: LL 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/LL.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 2492 984 120764 487659 \
  -gcp 1954 4516 120682 487292 \
  -gcp 2492 984 120764 487659 \
  -gcp 5118 4530 121010 487267 \
  output/atlas-loman/LL.tif \
  output/atlas-loman/28992/warped/LL.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8830629,52.3739858],[4.8831611,52.3747016],[4.8834747,52.3751582],[4.884305,52.3759298],[4.8876105,52.3748173],[4.8878863,52.374738],[4.8880165,52.3748556],[4.8890958,52.3745383],[4.8893707,52.3745773],[4.8885077,52.3721866],[4.8869922,52.3722754],[4.886784,52.3723063],[4.8848607,52.3723724],[4.8829605,52.3724164],[4.8829889,52.3727063],[4.8830629,52.3739858],[4.8830629,52.3739858]]]]}' > output/atlas-loman/28992/warped/LL.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/LL.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/LL.vrt \
  output/atlas-loman/28992/warped/LL-warped.tif

rm output/atlas-loman/28992/warped/LL.geojson

  

# =============================================================================================
# Name: M 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/M.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 3834 1660 121775 487742 \
  -gcp 2218 1971 121680 487594 \
  -gcp 3834 1660 121775 487742 \
  -gcp 2872 4050 121888 487493 \
  output/atlas-loman/M.tif \
  output/atlas-loman/28992/warped/M.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8964664,52.3757299],[4.8985251,52.3770566],[4.8995308,52.3767597],[4.9003251,52.376988],[4.9009827,52.3771032],[4.9016113,52.3770683],[4.9020406,52.3770419],[4.9025988,52.3764441],[4.9013333,52.3741396],[4.9006474,52.3743588],[4.9003535,52.374443],[4.8994015,52.3747464],[4.898029,52.3752359],[4.897904,52.3751842],[4.8973295,52.3754209],[4.8964664,52.3757299],[4.8964664,52.3757299],[4.8964664,52.3757299]]]]}' > output/atlas-loman/28992/warped/M.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/M.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/M.vrt \
  output/atlas-loman/28992/warped/M-warped.tif

rm output/atlas-loman/28992/warped/M.geojson

  

# =============================================================================================
# Name: MM 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/MM.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 2057 2309 120306 487585 \
  -gcp 1353 3208 120268 487472 \
  -gcp 2057 2309 120306 487585 \
  -gcp 5651 3177 120693 487626 \
  output/atlas-loman/MM.tif \
  output/atlas-loman/28992/warped/MM.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8758749,52.373749],[4.8754812,52.374058],[4.8759707,52.3750865],[4.8779741,52.375275],[4.8850022,52.376797],[4.884305,52.3759298],[4.8834747,52.3751582],[4.8831372,52.3752435],[4.8768657,52.37384],[4.8758749,52.373749],[4.8758749,52.373749]]]]}' > output/atlas-loman/28992/warped/MM.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/MM.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/MM.vrt \
  output/atlas-loman/28992/warped/MM-warped.tif

rm output/atlas-loman/28992/warped/MM.geojson

  

# =============================================================================================
# Name: N 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/N.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 2566 3956 121919 487400 \
  -gcp 5317 3956 122136 487202 \
  -gcp 2566 3956 121919 487400 \
  -gcp 5461 3284 122194 487245 \
  output/atlas-loman/N.tif \
  output/atlas-loman/28992/warped/N.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.9010719,52.3735238],[4.9013333,52.3741396],[4.9025988,52.3764441],[4.9032541,52.3757518],[4.9031542,52.3743764],[4.9036989,52.3735896],[4.9062299,52.3720842],[4.9048584,52.3714302],[4.9010719,52.3735238],[4.9010719,52.3735238],[4.9010719,52.3735238]]]]}' > output/atlas-loman/28992/warped/N.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/N.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/N.vrt \
  output/atlas-loman/28992/warped/N-warped.tif

rm output/atlas-loman/28992/warped/N.geojson

  

# =============================================================================================
# Name: NN 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/NN.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 1467 2420 120355 487711 \
  -gcp 854 3131 120319 487621 \
  -gcp 1467 2420 120355 487711 \
  -gcp 5478 3133 120782 487778 \
  output/atlas-loman/NN.tif \
  output/atlas-loman/28992/warped/NN.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8759707,52.3750865],[4.8765621,52.3759143],[4.8784694,52.3762261],[4.8843351,52.3774657],[4.885939,52.3778098],[4.8850022,52.376797],[4.8779741,52.375275],[4.8759707,52.3750865]]]]}' > output/atlas-loman/28992/warped/NN.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/NN.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/NN.vrt \
  output/atlas-loman/28992/warped/NN-warped.tif

rm output/atlas-loman/28992/warped/NN.geojson

  

# =============================================================================================
# Name: O 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/O.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 2856 3136 121881 487273 \
  -gcp 4804 3514 121960 487078 \
  -gcp 2856 3136 121881 487273 \
  -gcp 4733 1741 122115 487186 \
  output/atlas-loman/O.tif \
  output/atlas-loman/28992/warped/O.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.9017639,52.3700343],[4.9013726,52.3705643],[4.9012908,52.3708061],[4.9008289,52.372055],[4.8998643,52.3722447],[4.9006398,52.372506],[4.9010719,52.3735238],[4.9048584,52.3714302],[4.9017639,52.3700343]]]]}' > output/atlas-loman/28992/warped/O.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/O.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/O.vrt \
  output/atlas-loman/28992/warped/O-warped.tif

rm output/atlas-loman/28992/warped/O.geojson

  

# =============================================================================================
# Name: OO1 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/OO1.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 3571 2219 120418 487860 \
  -gcp 2643 3313 120359 487720 \
  -gcp 3571 2219 120418 487860 \
  -gcp 4970 3240 120591 487799 \
  output/atlas-loman/OO1.tif \
  output/atlas-loman/28992/warped/OO1.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8765621,52.3759143],[4.8775822,52.3774818],[4.8795825,52.377704],[4.887046,52.3790402],[4.886185,52.3780833],[4.885939,52.3778098],[4.8843351,52.3774657],[4.8784694,52.3762261],[4.8765621,52.3759143],[4.8765621,52.3759143]]]]}' > output/atlas-loman/28992/warped/OO1.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/OO1.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/OO1.vrt \
  output/atlas-loman/28992/warped/OO1-warped.tif

rm output/atlas-loman/28992/warped/OO1.geojson

  

# =============================================================================================
# Name: OO2 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/OO2.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 2027 2160 120563 487903 \
  -gcp 2063 3153 120598 487801 \
  -gcp 2027 2160 120563 487903 \
  -gcp 4477 3068 120840 487884 \
  output/atlas-loman/OO2.tif \
  output/atlas-loman/28992/warped/OO2.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8765621,52.3759143],[4.8775822,52.3774818],[4.8795825,52.377704],[4.887046,52.3790402],[4.886185,52.3780833],[4.885939,52.3778098],[4.8843351,52.3774657],[4.8784694,52.3762261],[4.8765621,52.3759143],[4.8765621,52.3759143]]]]}' > output/atlas-loman/28992/warped/OO2.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/OO2.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/OO2.vrt \
  output/atlas-loman/28992/warped/OO2-warped.tif

rm output/atlas-loman/28992/warped/OO2.geojson

  

# =============================================================================================
# Name: P 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/P.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 1021 1641 121788 486789 \
  -gcp 2381 2097 121950 486582 \
  -gcp 1021 1641 121788 486789 \
  -gcp 3004 1353 122121 486634 \
  output/atlas-loman/P.tif \
  output/atlas-loman/28992/warped/P.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8984182,52.3674667],[4.8990271,52.368053],[4.900304,52.3690828],[4.900304,52.3690828],[4.900304,52.3690828],[4.9040913,52.3675159],[4.9060858,52.3666906],[4.9014445,52.3658498],[4.9006748,52.3666278],[4.8984182,52.3674667],[4.8984182,52.3674667],[4.8984182,52.3674667]]]]}' > output/atlas-loman/28992/warped/P.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/P.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/P.vrt \
  output/atlas-loman/28992/warped/P-warped.tif

rm output/atlas-loman/28992/warped/P.geojson

  

# =============================================================================================
# Name: PP1 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/PP1.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 3706 2083 120496 488074 \
  -gcp 2592 3548 120425 487893 \
  -gcp 3706 2083 120496 488074 \
  -gcp 5071 3542 120678 487966 \
  output/atlas-loman/PP1.tif \
  output/atlas-loman/28992/warped/PP1.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.887046,52.3790402],[4.887046,52.3790402],[4.8795825,52.377704],[4.8775822,52.3774818],[4.8788897,52.3796352],[4.8804695,52.3796757],[4.8878806,52.3808092],[4.88838,52.380519],[4.887046,52.3790402]]]]}' > output/atlas-loman/28992/warped/PP1.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/PP1.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/PP1.vrt \
  output/atlas-loman/28992/warped/PP1-warped.tif

rm output/atlas-loman/28992/warped/PP1.geojson

  

# =============================================================================================
# Name: PP2 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/PP2.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp NaN NaN 120496 488074 \
  -gcp NaN NaN 120425 487893 \
  -gcp NaN NaN 120496 488074 \
  -gcp NaN NaN 120892 488027 \
  output/atlas-loman/PP2.tif \
  output/atlas-loman/28992/warped/PP2.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.887046,52.3790402],[4.887046,52.3790402],[4.8795825,52.377704],[4.8775822,52.3774818],[4.8788897,52.3796352],[4.8804695,52.3796757],[4.8878806,52.3808092],[4.88838,52.380519],[4.887046,52.3790402]]]]}' > output/atlas-loman/28992/warped/PP2.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/PP2.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/PP2.vrt \
  output/atlas-loman/28992/warped/PP2-warped.tif

rm output/atlas-loman/28992/warped/PP2.geojson

  

# =============================================================================================
# Name: Q 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/Q.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 2192 3136 121877 486913 \
  -gcp 4263 3146 122061 486790 \
  -gcp 2192 3136 121877 486913 \
  -gcp 5050 2267 122180 486821 \
  output/atlas-loman/Q.tif \
  output/atlas-loman/28992/warped/Q.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.900304,52.3690828],[4.900975,52.3695459],[4.9017639,52.3700343],[4.904048,52.3691762],[4.9055769,52.368578],[4.9044891,52.3677172],[4.9040913,52.3675159],[4.900304,52.3690828]]]]}' > output/atlas-loman/28992/warped/Q.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/Q.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/Q.vrt \
  output/atlas-loman/28992/warped/Q-warped.tif

rm output/atlas-loman/28992/warped/Q.geojson

  

# =============================================================================================
# Name: QQ 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/QQ.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 4139 1428 120671 488502 \
  -gcp 1854 4715 120509 488107 \
  -gcp 4139 1428 120671 488502 \
  -gcp 6350 4720 120975 488217 \
  output/atlas-loman/QQ.tif \
  output/atlas-loman/28992/warped/QQ.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8878806,52.3808092],[4.8804695,52.3796757],[4.8804695,52.3796757],[4.8788897,52.3796352],[4.8798463,52.3811462],[4.8794148,52.3819203],[4.8803851,52.3822393],[4.8820839,52.3847542],[4.883022,52.3846795],[4.8831454,52.3835218],[4.8878806,52.3808092]]]]}' > output/atlas-loman/28992/warped/QQ.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/QQ.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/QQ.vrt \
  output/atlas-loman/28992/warped/QQ-warped.tif

rm output/atlas-loman/28992/warped/QQ.geojson

  

# =============================================================================================
# Name: R 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/R.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 5177 2359 122260 487200 \
  -gcp 2199 2323 121995 487022 \
  -gcp 5177 2359 122260 487200 \
  -gcp 2178 2886 122027 486971 \
  output/atlas-loman/R.tif \
  output/atlas-loman/28992/warped/R.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.9017639,52.3700343],[4.9048584,52.3714302],[4.9062299,52.3720842],[4.9081837,52.3710484],[4.904048,52.3691762],[4.9017639,52.3700343],[4.9017639,52.3700343],[4.9017639,52.3700343]]]]}' > output/atlas-loman/28992/warped/R.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/R.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/R.vrt \
  output/atlas-loman/28992/warped/R-warped.tif

rm output/atlas-loman/28992/warped/R.geojson

  

# =============================================================================================
# Name: RR 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/RR.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 2136 1671 120902 487904 \
  -gcp 2158 4028 120780 487687 \
  -gcp 2136 1671 120902 487904 \
  -gcp 5320 3927 121072 487533 \
  output/atlas-loman/RR.tif \
  output/atlas-loman/28992/warped/RR.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.886185,52.3780833],[4.8876742,52.3775558],[4.8882837,52.3773778],[4.8896953,52.3768738],[4.8902694,52.3767594],[4.8912579,52.3763585],[4.8912579,52.3763585],[4.8893707,52.3745773],[4.8890958,52.3745383],[4.8880165,52.3748556],[4.8878863,52.374738],[4.8876105,52.3748173],[4.884305,52.3759298],[4.8850022,52.376797],[4.885939,52.3778098],[4.886185,52.3780833]]]]}' > output/atlas-loman/28992/warped/RR.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/RR.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/RR.vrt \
  output/atlas-loman/28992/warped/RR-warped.tif

rm output/atlas-loman/28992/warped/RR.geojson

  

# =============================================================================================
# Name: S 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/S.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 5182 2504 122387 487093 \
  -gcp 2457 2860 122164 486909 \
  -gcp 5182 2504 122387 487093 \
  -gcp 2421 3266 122182 486869 \
  output/atlas-loman/S.tif \
  output/atlas-loman/28992/warped/S.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.904048,52.3691762],[4.9081837,52.3710484],[4.9098797,52.3702241],[4.9055769,52.368578],[4.9055769,52.368578],[4.904048,52.3691762]]]]}' > output/atlas-loman/28992/warped/S.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/S.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/S.vrt \
  output/atlas-loman/28992/warped/S-warped.tif

rm output/atlas-loman/28992/warped/S.geojson

  

# =============================================================================================
# Name: SS 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/SS.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 1873 1695 121044 488153 \
  -gcp 1894 4320 120907 487912 \
  -gcp 1873 1695 121044 488153 \
  -gcp 5260 4215 121217 487745 \
  output/atlas-loman/SS.tif \
  output/atlas-loman/28992/warped/SS.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.886185,52.3780833],[4.887046,52.3790402],[4.88838,52.380519],[4.8898547,52.3796895],[4.8920816,52.3792421],[4.8938391,52.3788564],[4.8945534,52.3791831],[4.892024,52.3770361],[4.8912579,52.3763585],[4.8902694,52.3767594],[4.8896953,52.3768738],[4.8882837,52.3773778],[4.8876742,52.3775558],[4.886185,52.3780833],[4.886185,52.3780833]]]]}' > output/atlas-loman/28992/warped/SS.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/SS.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/SS.vrt \
  output/atlas-loman/28992/warped/SS-warped.tif

rm output/atlas-loman/28992/warped/SS.geojson

  

# =============================================================================================
# Name: T1 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/T1.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 5460 2122 123216 487460 \
  -gcp 1450 1810 122895 487177 \
  -gcp 5460 2122 123216 487460 \
  -gcp 1153 2634 122939 487094 \
  output/atlas-loman/T1.tif \
  output/atlas-loman/28992/warped/T1.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.9098809,52.3730016],[4.9141989,52.3761484],[4.9270052,52.3739683],[4.9312603,52.3727862],[4.9332433,52.3703635],[4.9272939,52.3671112],[4.9263622,52.36653],[4.9092454,52.3726661],[4.9092454,52.3726661],[4.9098809,52.3730016]]]]}' > output/atlas-loman/28992/warped/T1.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/T1.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/T1.vrt \
  output/atlas-loman/28992/warped/T1-warped.tif

rm output/atlas-loman/28992/warped/T1.geojson

  

# =============================================================================================
# Name: T2 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/T2.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 4382 909 122804 487646 \
  -gcp 662 1130 122535 487342 \
  -gcp 4382 909 122804 487646 \
  -gcp 1142 4227 122816 487159 \
  output/atlas-loman/T2.tif \
  output/atlas-loman/28992/warped/T2.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.9098809,52.3730016],[4.9141989,52.3761484],[4.9270052,52.3739683],[4.9312603,52.3727862],[4.9332433,52.3703635],[4.9272939,52.3671112],[4.9263622,52.36653],[4.9092454,52.3726661],[4.9092454,52.3726661],[4.9098809,52.3730016]]]]}' > output/atlas-loman/28992/warped/T2.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/T2.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/T2.vrt \
  output/atlas-loman/28992/warped/T2-warped.tif

rm output/atlas-loman/28992/warped/T2.geojson

  

# =============================================================================================
# Name: T3 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/T3.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 6015 2302 123435 487434 \
  -gcp 732 1742 123018 487051 \
  -gcp 6015 2302 123435 487434 \
  -gcp 1208 3937 123224 486932 \
  output/atlas-loman/T3.tif \
  output/atlas-loman/28992/warped/T3.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.9098809,52.3730016],[4.9141989,52.3761484],[4.9270052,52.3739683],[4.9312603,52.3727862],[4.9332433,52.3703635],[4.9272939,52.3671112],[4.9263622,52.36653],[4.9092454,52.3726661],[4.9092454,52.3726661],[4.9098809,52.3730016]]]]}' > output/atlas-loman/28992/warped/T3.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/T3.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/T3.vrt \
  output/atlas-loman/28992/warped/T3-warped.tif

rm output/atlas-loman/28992/warped/T3.geojson

  

# =============================================================================================
# Name: T4 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/T4.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 3473 2503 123450 487071 \
  -gcp 1067 2074 123234 486926 \
  -gcp 3473 2503 123450 487071 \
  -gcp 1531 3776 123395 486832 \
  output/atlas-loman/T4.tif \
  output/atlas-loman/28992/warped/T4.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.9098809,52.3730016],[4.9141989,52.3761484],[4.9270052,52.3739683],[4.9312603,52.3727862],[4.9332433,52.3703635],[4.9272939,52.3671112],[4.9263622,52.36653],[4.9092454,52.3726661],[4.9092454,52.3726661],[4.9098809,52.3730016]]]]}' > output/atlas-loman/28992/warped/T4.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/T4.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/T4.vrt \
  output/atlas-loman/28992/warped/T4-warped.tif

rm output/atlas-loman/28992/warped/T4.geojson

  

# =============================================================================================
# Name: T5 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/T5.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 5644 1721 123853 487146 \
  -gcp 728 1698 123479 486779 \
  -gcp 5644 1721 123853 487146 \
  -gcp 2066 4133 123750 486707 \
  output/atlas-loman/T5.tif \
  output/atlas-loman/28992/warped/T5.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.9098809,52.3730016],[4.9141989,52.3761484],[4.9270052,52.3739683],[4.9312603,52.3727862],[4.9332433,52.3703635],[4.9272939,52.3671112],[4.9263622,52.36653],[4.9092454,52.3726661],[4.9092454,52.3726661],[4.9098809,52.3730016]]]]}' > output/atlas-loman/28992/warped/T5.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/T5.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/T5.vrt \
  output/atlas-loman/28992/warped/T5-warped.tif

rm output/atlas-loman/28992/warped/T5.geojson

  

# =============================================================================================
# Name: T6 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/T6.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 516 NaN 122805 487642 \
  -gcp 5139 NaN 122535 487342 \
  -gcp 516 NaN 122805 487642 \
  -gcp 4893 NaN 123566 486707 \
  output/atlas-loman/T6.tif \
  output/atlas-loman/28992/warped/T6.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.9098809,52.3730016],[4.9141989,52.3761484],[4.9270052,52.3739683],[4.9312603,52.3727862],[4.9332433,52.3703635],[4.9272939,52.3671112],[4.9263622,52.36653],[4.9092454,52.3726661],[4.9092454,52.3726661],[4.9098809,52.3730016]]]]}' > output/atlas-loman/28992/warped/T6.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/T6.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/T6.vrt \
  output/atlas-loman/28992/warped/T6-warped.tif

rm output/atlas-loman/28992/warped/T6.geojson

  

# =============================================================================================
# Name: T7 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/T7.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 1321 3515 123344 487523 \
  -gcp 1368 4444 123320 487429 \
  -gcp 1321 3515 123344 487523 \
  -gcp 2495 4102 123436 487433 \
  output/atlas-loman/T7.tif \
  output/atlas-loman/28992/warped/T7.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.9098809,52.3730016],[4.9141989,52.3761484],[4.9270052,52.3739683],[4.9312603,52.3727862],[4.9332433,52.3703635],[4.9272939,52.3671112],[4.9263622,52.36653],[4.9092454,52.3726661],[4.9092454,52.3726661],[4.9098809,52.3730016]]]]}' > output/atlas-loman/28992/warped/T7.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/T7.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/T7.vrt \
  output/atlas-loman/28992/warped/T7-warped.tif

rm output/atlas-loman/28992/warped/T7.geojson

  

# =============================================================================================
# Name: TT 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/TT.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 2293 684 121153 488339 \
  -gcp 694 688 121069 488190 \
  -gcp 2293 684 121153 488339 \
  -gcp 872 4226 121405 488019 \
  output/atlas-loman/TT.tif \
  output/atlas-loman/28992/warped/TT.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.88838,52.380519],[4.8901145,52.3826305],[4.8912814,52.3840508],[4.8945534,52.3791831],[4.8938391,52.3788564],[4.8920816,52.3792421],[4.8898547,52.3796895],[4.88838,52.380519],[4.88838,52.380519]]]]}' > output/atlas-loman/28992/warped/TT.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/TT.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/TT.vrt \
  output/atlas-loman/28992/warped/TT-warped.tif

rm output/atlas-loman/28992/warped/TT.geojson

  

# =============================================================================================
# Name: U1 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/U1.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 4065 2390 122225 487414 \
  -gcp 2471 2758 122073 487499 \
  -gcp 4065 2390 122225 487414 \
  -gcp 5076 3030 122257 487291 \
  output/atlas-loman/U1.tif \
  output/atlas-loman/28992/warped/U1.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.9108066,52.3698157],[4.9098797,52.3702241],[4.9081837,52.3710484],[4.9062299,52.3720842],[4.9080876,52.3728974],[4.9092454,52.3726661],[4.9132926,52.3712333],[4.9108066,52.3698157],[4.9108066,52.3698157],[4.9108066,52.3698157]]]]}' > output/atlas-loman/28992/warped/U1.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/U1.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/U1.vrt \
  output/atlas-loman/28992/warped/U1-warped.tif

rm output/atlas-loman/28992/warped/U1.geojson

  

# =============================================================================================
# Name: U2 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/U2.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 1820 2815 122179 487739 \
  -gcp 364 4102 122055 487579 \
  -gcp 1820 2815 122179 487739 \
  -gcp 6291 4565 122685 487643 \
  output/atlas-loman/U2.tif \
  output/atlas-loman/28992/warped/U2.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.9108066,52.3698157],[4.9098797,52.3702241],[4.9081837,52.3710484],[4.9062299,52.3720842],[4.9080876,52.3728974],[4.9092454,52.3726661],[4.9132926,52.3712333],[4.9108066,52.3698157],[4.9108066,52.3698157],[4.9108066,52.3698157]]]]}' > output/atlas-loman/28992/warped/U2.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/U2.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/U2.vrt \
  output/atlas-loman/28992/warped/U2-warped.tif

rm output/atlas-loman/28992/warped/U2.geojson

  

# =============================================================================================
# Name: U3 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/U3.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 2231 2627 122371 487272 \
  -gcp 2081 3200 122318 487237 \
  -gcp 2231 2627 122371 487272 \
  -gcp 4973 3194 122548 487037 \
  output/atlas-loman/U3.tif \
  output/atlas-loman/28992/warped/U3.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.9108066,52.3698157],[4.9098797,52.3702241],[4.9081837,52.3710484],[4.9062299,52.3720842],[4.9080876,52.3728974],[4.9092454,52.3726661],[4.9132926,52.3712333],[4.9108066,52.3698157],[4.9108066,52.3698157],[4.9108066,52.3698157]]]]}' > output/atlas-loman/28992/warped/U3.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/U3.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/U3.vrt \
  output/atlas-loman/28992/warped/U3-warped.tif

rm output/atlas-loman/28992/warped/U3.geojson

  

# =============================================================================================
# Name: U4 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/U4.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 2027 1457 123184 486827 \
  -gcp 2059 2793 123117 486705 \
  -gcp 2027 1457 123184 486827 \
  -gcp 4822 4639 123270 486382 \
  output/atlas-loman/U4.tif \
  output/atlas-loman/28992/warped/U4.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.9108066,52.3698157],[4.9098797,52.3702241],[4.9081837,52.3710484],[4.9062299,52.3720842],[4.9080876,52.3728974],[4.9092454,52.3726661],[4.9132926,52.3712333],[4.9108066,52.3698157],[4.9108066,52.3698157],[4.9108066,52.3698157]]]]}' > output/atlas-loman/28992/warped/U4.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/U4.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/U4.vrt \
  output/atlas-loman/28992/warped/U4-warped.tif

rm output/atlas-loman/28992/warped/U4.geojson

  

# =============================================================================================
# Name: U5 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/U5.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 1434 2479 122665 487043 \
  -gcp 999 3302 122580 486990 \
  -gcp 1434 2479 122665 487043 \
  -gcp 6234 3121 123072 486732 \
  output/atlas-loman/U5.tif \
  output/atlas-loman/28992/warped/U5.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.9108066,52.3698157],[4.9098797,52.3702241],[4.9081837,52.3710484],[4.9062299,52.3720842],[4.9080876,52.3728974],[4.9092454,52.3726661],[4.9132926,52.3712333],[4.9108066,52.3698157],[4.9108066,52.3698157],[4.9108066,52.3698157]]]]}' > output/atlas-loman/28992/warped/U5.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/U5.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/U5.vrt \
  output/atlas-loman/28992/warped/U5-warped.tif

rm output/atlas-loman/28992/warped/U5.geojson

  

# =============================================================================================
# Name: UU1 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/UU1.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 4229 3445 120817 488971 \
  -gcp 2311 3232 120767 488775 \
  -gcp 4229 3445 120817 488971 \
  -gcp 2341 3887 120835 488770 \
  output/atlas-loman/UU1.tif \
  output/atlas-loman/28992/warped/UU1.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.88838,52.380519],[4.8878806,52.3808092],[4.8831454,52.3835218],[4.883022,52.3846795],[4.8820839,52.3847542],[4.8844362,52.3883689],[4.8860757,52.3880927],[4.8860622,52.3848969],[4.8879913,52.3838432],[4.8901145,52.3826305],[4.88838,52.380519],[4.88838,52.380519]]]]}' > output/atlas-loman/28992/warped/UU1.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/UU1.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/UU1.vrt \
  output/atlas-loman/28992/warped/UU1-warped.tif

rm output/atlas-loman/28992/warped/UU1.geojson

  

# =============================================================================================
# Name: UU2 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/UU2.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 1800 2145 120807 488663 \
  -gcp 1816 3723 120693 488542 \
  -gcp 1800 2145 120807 488663 \
  -gcp 6280 3698 121036 488223 \
  output/atlas-loman/UU2.tif \
  output/atlas-loman/28992/warped/UU2.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.88838,52.380519],[4.8878806,52.3808092],[4.8831454,52.3835218],[4.883022,52.3846795],[4.8820839,52.3847542],[4.8844362,52.3883689],[4.8860757,52.3880927],[4.8860622,52.3848969],[4.8879913,52.3838432],[4.8901145,52.3826305],[4.88838,52.380519],[4.88838,52.380519]]]]}' > output/atlas-loman/28992/warped/UU2.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/UU2.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/UU2.vrt \
  output/atlas-loman/28992/warped/UU2-warped.tif

rm output/atlas-loman/28992/warped/UU2.geojson

  

# =============================================================================================
# Name: V1 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/V1.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 6019 2852 122517 487052 \
  -gcp 1377 1990 122125 486747 \
  -gcp 6019 2852 122517 487052 \
  -gcp 1661 3168 122236 486684 \
  output/atlas-loman/V1.tif \
  output/atlas-loman/28992/warped/V1.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.9060858,52.3666906],[4.9040913,52.3675159],[4.9044891,52.3677172],[4.9055769,52.368578],[4.9098797,52.3702241],[4.9108066,52.3698157],[4.9241805,52.3649556],[4.9189222,52.3625476],[4.9060858,52.3666906],[4.9060858,52.3666906],[4.9060858,52.3666906]]]]}' > output/atlas-loman/28992/warped/V1.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/V1.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/V1.vrt \
  output/atlas-loman/28992/warped/V1-warped.tif

rm output/atlas-loman/28992/warped/V1.geojson

  

# =============================================================================================
# Name: V2 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/V2.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 2754 2216 122513 486789 \
  -gcp 2798 4111 122410 486608 \
  -gcp 2754 2216 122513 486789 \
  -gcp 5469 4069 122658 486465 \
  output/atlas-loman/V2.tif \
  output/atlas-loman/28992/warped/V2.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.9060858,52.3666906],[4.9040913,52.3675159],[4.9044891,52.3677172],[4.9055769,52.368578],[4.9098797,52.3702241],[4.9108066,52.3698157],[4.9241805,52.3649556],[4.9189222,52.3625476],[4.9060858,52.3666906],[4.9060858,52.3666906],[4.9060858,52.3666906]]]]}' > output/atlas-loman/28992/warped/V2.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/V2.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/V2.vrt \
  output/atlas-loman/28992/warped/V2-warped.tif

rm output/atlas-loman/28992/warped/V2.geojson

  

# =============================================================================================
# Name: V3 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/V3.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 1409 3047 122783 486498 \
  -gcp 1399 3903 122737 486419 \
  -gcp 1409 3047 122783 486498 \
  -gcp 3383 3917 122921 486314 \
  output/atlas-loman/V3.tif \
  output/atlas-loman/28992/warped/V3.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.9060858,52.3666906],[4.9040913,52.3675159],[4.9044891,52.3677172],[4.9055769,52.368578],[4.9098797,52.3702241],[4.9108066,52.3698157],[4.9241805,52.3649556],[4.9189222,52.3625476],[4.9060858,52.3666906],[4.9060858,52.3666906],[4.9060858,52.3666906]]]]}' > output/atlas-loman/28992/warped/V3.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/V3.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/V3.vrt \
  output/atlas-loman/28992/warped/V3-warped.tif

rm output/atlas-loman/28992/warped/V3.geojson

  

# =============================================================================================
# Name: VV1 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/VV1.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 2029 3357 120886 488984 \
  -gcp 4445 3899 121147 488951 \
  -gcp 2029 3357 120886 488984 \
  -gcp 4445 3901 121147 488951 \
  output/atlas-loman/VV1.tif \
  output/atlas-loman/28992/warped/VV1.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8879913,52.3838432],[4.8860622,52.3848969],[4.8860757,52.3880927],[4.8844362,52.3883689],[4.8849875,52.3893118],[4.8878678,52.3889397],[4.8908223,52.3893162],[4.8907649,52.3841076],[4.8912814,52.3840508],[4.8879913,52.3838432],[4.8879913,52.3838432]]]]}' > output/atlas-loman/28992/warped/VV1.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/VV1.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/VV1.vrt \
  output/atlas-loman/28992/warped/VV1-warped.tif

rm output/atlas-loman/28992/warped/VV1.geojson

  

# =============================================================================================
# Name: VV2 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/VV2.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 4988 2173 120930 488849 \
  -gcp 3532 2203 120918 488695 \
  -gcp 4988 2173 120930 488849 \
  -gcp 2251 3824 121083 488535 \
  output/atlas-loman/VV2.tif \
  output/atlas-loman/28992/warped/VV2.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8879913,52.3838432],[4.8860622,52.3848969],[4.8860757,52.3880927],[4.8844362,52.3883689],[4.8849875,52.3893118],[4.8878678,52.3889397],[4.8908223,52.3893162],[4.8907649,52.3841076],[4.8912814,52.3840508],[4.8879913,52.3838432],[4.8879913,52.3838432]]]]}' > output/atlas-loman/28992/warped/VV2.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/VV2.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/VV2.vrt \
  output/atlas-loman/28992/warped/VV2-warped.tif

rm output/atlas-loman/28992/warped/VV2.geojson

  

# =============================================================================================
# Name: W1 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/W1.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 1260 1373 121962 486538 \
  -gcp 1266 4247 122048 486251 \
  -gcp 1260 1373 121962 486538 \
  -gcp 6096 4288 122545 486398 \
  output/atlas-loman/W1.tif \
  output/atlas-loman/28992/warped/W1.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.9014445,52.3658498],[4.9060858,52.3666906],[4.9189222,52.3625476],[4.9044266,52.3594474],[4.9044266,52.3594474],[4.9020507,52.3645485],[4.9014445,52.3658498]]]]}' > output/atlas-loman/28992/warped/W1.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/W1.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/W1.vrt \
  output/atlas-loman/28992/warped/W1-warped.tif

rm output/atlas-loman/28992/warped/W1.geojson

  

# =============================================================================================
# Name: W2 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/W2.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 1602 1357 122063 486208 \
  -gcp 1643 4813 122165 485854 \
  -gcp 1602 1357 122063 486208 \
  -gcp 5977 3522 122570 486115 \
  output/atlas-loman/W2.tif \
  output/atlas-loman/28992/warped/W2.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.9014445,52.3658498],[4.9060858,52.3666906],[4.9189222,52.3625476],[4.9044266,52.3594474],[4.9044266,52.3594474],[4.9020507,52.3645485],[4.9014445,52.3658498]]]]}' > output/atlas-loman/28992/warped/W2.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/W2.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/W2.vrt \
  output/atlas-loman/28992/warped/W2-warped.tif

rm output/atlas-loman/28992/warped/W2.geojson

  

# =============================================================================================
# Name: W3 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/W3.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 1950 963 122487 486368 \
  -gcp 3163 3756 122716 486128 \
  -gcp 1950 963 122487 486368 \
  -gcp 5067 3127 122877 486257 \
  output/atlas-loman/W3.tif \
  output/atlas-loman/28992/warped/W3.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.9014445,52.3658498],[4.9060858,52.3666906],[4.9189222,52.3625476],[4.9044266,52.3594474],[4.9044266,52.3594474],[4.9020507,52.3645485],[4.9014445,52.3658498]]]]}' > output/atlas-loman/28992/warped/W3.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/W3.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/W3.vrt \
  output/atlas-loman/28992/warped/W3-warped.tif

rm output/atlas-loman/28992/warped/W3.geojson

  

# =============================================================================================
# Name: WW1 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/WW1.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 926 2606 119724 489742 \
  -gcp 1368 4126 119776 489583 \
  -gcp 926 2606 119724 489742 \
  -gcp 5662 4598 120235 489547 \
  output/atlas-loman/WW1.tif \
  output/atlas-loman/28992/warped/WW1.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8849875,52.3893118],[4.8849875,52.3893118],[4.8849875,52.3893118],[4.8844362,52.3883689],[4.8820839,52.3847542],[4.8803851,52.3822393],[4.8794148,52.3819203],[4.8798463,52.3811462],[4.8788897,52.3796352],[4.8775822,52.3774818],[4.8765621,52.3759143],[4.8759707,52.3750865],[4.8754812,52.374058],[4.8668906,52.3721626],[4.8734011,52.3806861],[4.8705007,52.3856492],[4.8716921,52.385533],[4.8659578,52.3952975],[4.8731568,52.3960571],[4.8765301,52.3959907],[4.8749524,52.3951749],[4.8801503,52.3916779],[4.8838562,52.3914105],[4.8849875,52.3893118]]]]}' > output/atlas-loman/28992/warped/WW1.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/WW1.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/WW1.vrt \
  output/atlas-loman/28992/warped/WW1-warped.tif

rm output/atlas-loman/28992/warped/WW1.geojson

  

# =============================================================================================
# Name: WW2 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/WW2.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 2989 4835 120608 489682 \
  -gcp 1296 4880 120403 489660 \
  -gcp 2989 4835 120608 489682 \
  -gcp 2985 3149 120595 489877 \
  output/atlas-loman/WW2.tif \
  output/atlas-loman/28992/warped/WW2.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8849875,52.3893118],[4.8849875,52.3893118],[4.8849875,52.3893118],[4.8844362,52.3883689],[4.8820839,52.3847542],[4.8803851,52.3822393],[4.8794148,52.3819203],[4.8798463,52.3811462],[4.8788897,52.3796352],[4.8775822,52.3774818],[4.8765621,52.3759143],[4.8759707,52.3750865],[4.8754812,52.374058],[4.8668906,52.3721626],[4.8734011,52.3806861],[4.8705007,52.3856492],[4.8716921,52.385533],[4.8659578,52.3952975],[4.8731568,52.3960571],[4.8765301,52.3959907],[4.8749524,52.3951749],[4.8801503,52.3916779],[4.8838562,52.3914105],[4.8849875,52.3893118]]]]}' > output/atlas-loman/28992/warped/WW2.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/WW2.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/WW2.vrt \
  output/atlas-loman/28992/warped/WW2-warped.tif

rm output/atlas-loman/28992/warped/WW2.geojson

  

# =============================================================================================
# Name: WW3 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/WW3.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 2786 4915 120668 489149 \
  -gcp 734 4891 120431 489124 \
  -gcp 2786 4915 120668 489149 \
  -gcp 4287 4904 120843 489163 \
  output/atlas-loman/WW3.tif \
  output/atlas-loman/28992/warped/WW3.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8849875,52.3893118],[4.8849875,52.3893118],[4.8849875,52.3893118],[4.8844362,52.3883689],[4.8820839,52.3847542],[4.8803851,52.3822393],[4.8794148,52.3819203],[4.8798463,52.3811462],[4.8788897,52.3796352],[4.8775822,52.3774818],[4.8765621,52.3759143],[4.8759707,52.3750865],[4.8754812,52.374058],[4.8668906,52.3721626],[4.8734011,52.3806861],[4.8705007,52.3856492],[4.8716921,52.385533],[4.8659578,52.3952975],[4.8731568,52.3960571],[4.8765301,52.3959907],[4.8749524,52.3951749],[4.8801503,52.3916779],[4.8838562,52.3914105],[4.8849875,52.3893118]]]]}' > output/atlas-loman/28992/warped/WW3.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/WW3.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/WW3.vrt \
  output/atlas-loman/28992/warped/WW3-warped.tif

rm output/atlas-loman/28992/warped/WW3.geojson

  

# =============================================================================================
# Name: WW4 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/WW4.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 3380 3913 120573 488794 \
  -gcp 4248 4848 120679 488698 \
  -gcp 3380 3913 120573 488794 \
  -gcp 4293 3854 120678 488804 \
  output/atlas-loman/WW4.tif \
  output/atlas-loman/28992/warped/WW4.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8849875,52.3893118],[4.8849875,52.3893118],[4.8849875,52.3893118],[4.8844362,52.3883689],[4.8820839,52.3847542],[4.8803851,52.3822393],[4.8794148,52.3819203],[4.8798463,52.3811462],[4.8788897,52.3796352],[4.8775822,52.3774818],[4.8765621,52.3759143],[4.8759707,52.3750865],[4.8754812,52.374058],[4.8668906,52.3721626],[4.8734011,52.3806861],[4.8705007,52.3856492],[4.8716921,52.385533],[4.8659578,52.3952975],[4.8731568,52.3960571],[4.8765301,52.3959907],[4.8749524,52.3951749],[4.8801503,52.3916779],[4.8838562,52.3914105],[4.8849875,52.3893118]]]]}' > output/atlas-loman/28992/warped/WW4.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/WW4.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/WW4.vrt \
  output/atlas-loman/28992/warped/WW4-warped.tif

rm output/atlas-loman/28992/warped/WW4.geojson

  

# =============================================================================================
# Name: WW5 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/WW5.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 1867 1992 119906 489378 \
  -gcp 1466 3887 119881 489174 \
  -gcp 1867 1992 119906 489378 \
  -gcp 5609 3820 120312 489227 \
  output/atlas-loman/WW5.tif \
  output/atlas-loman/28992/warped/WW5.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8849875,52.3893118],[4.8849875,52.3893118],[4.8849875,52.3893118],[4.8844362,52.3883689],[4.8820839,52.3847542],[4.8803851,52.3822393],[4.8794148,52.3819203],[4.8798463,52.3811462],[4.8788897,52.3796352],[4.8775822,52.3774818],[4.8765621,52.3759143],[4.8759707,52.3750865],[4.8754812,52.374058],[4.8668906,52.3721626],[4.8734011,52.3806861],[4.8705007,52.3856492],[4.8716921,52.385533],[4.8659578,52.3952975],[4.8731568,52.3960571],[4.8765301,52.3959907],[4.8749524,52.3951749],[4.8801503,52.3916779],[4.8838562,52.3914105],[4.8849875,52.3893118]]]]}' > output/atlas-loman/28992/warped/WW5.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/WW5.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/WW5.vrt \
  output/atlas-loman/28992/warped/WW5-warped.tif

rm output/atlas-loman/28992/warped/WW5.geojson

  

# =============================================================================================
# Name: WW6 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/WW6.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 1719 1610 119920 489046 \
  -gcp 2262 4309 119996 488756 \
  -gcp 1719 1610 119920 489046 \
  -gcp 5049 3921 120285 488820 \
  output/atlas-loman/WW6.tif \
  output/atlas-loman/28992/warped/WW6.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8849875,52.3893118],[4.8849875,52.3893118],[4.8849875,52.3893118],[4.8844362,52.3883689],[4.8820839,52.3847542],[4.8803851,52.3822393],[4.8794148,52.3819203],[4.8798463,52.3811462],[4.8788897,52.3796352],[4.8775822,52.3774818],[4.8765621,52.3759143],[4.8759707,52.3750865],[4.8754812,52.374058],[4.8668906,52.3721626],[4.8734011,52.3806861],[4.8705007,52.3856492],[4.8716921,52.385533],[4.8659578,52.3952975],[4.8731568,52.3960571],[4.8765301,52.3959907],[4.8749524,52.3951749],[4.8801503,52.3916779],[4.8838562,52.3914105],[4.8849875,52.3893118]]]]}' > output/atlas-loman/28992/warped/WW6.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/WW6.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/WW6.vrt \
  output/atlas-loman/28992/warped/WW6-warped.tif

rm output/atlas-loman/28992/warped/WW6.geojson

  

# =============================================================================================
# Name: WW7 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/WW7.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 806 3779 120514 488725 \
  -gcp 4075 957 120239 488359 \
  -gcp 806 3779 120514 488725 \
  -gcp 2509 1520 120390 488452 \
  output/atlas-loman/WW7.tif \
  output/atlas-loman/28992/warped/WW7.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8849875,52.3893118],[4.8849875,52.3893118],[4.8849875,52.3893118],[4.8844362,52.3883689],[4.8820839,52.3847542],[4.8803851,52.3822393],[4.8794148,52.3819203],[4.8798463,52.3811462],[4.8788897,52.3796352],[4.8775822,52.3774818],[4.8765621,52.3759143],[4.8759707,52.3750865],[4.8754812,52.374058],[4.8668906,52.3721626],[4.8734011,52.3806861],[4.8705007,52.3856492],[4.8716921,52.385533],[4.8659578,52.3952975],[4.8731568,52.3960571],[4.8765301,52.3959907],[4.8749524,52.3951749],[4.8801503,52.3916779],[4.8838562,52.3914105],[4.8849875,52.3893118]]]]}' > output/atlas-loman/28992/warped/WW7.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/WW7.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/WW7.vrt \
  output/atlas-loman/28992/warped/WW7-warped.tif

rm output/atlas-loman/28992/warped/WW7.geojson

  

# =============================================================================================
# Name: WW8 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/WW8.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 2904 2225 120062 488157 \
  -gcp 1135 4830 119931 487852 \
  -gcp 2904 2225 120062 488157 \
  -gcp 3375 3768 120142 488005 \
  output/atlas-loman/WW8.tif \
  output/atlas-loman/28992/warped/WW8.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8849875,52.3893118],[4.8849875,52.3893118],[4.8849875,52.3893118],[4.8844362,52.3883689],[4.8820839,52.3847542],[4.8803851,52.3822393],[4.8794148,52.3819203],[4.8798463,52.3811462],[4.8788897,52.3796352],[4.8775822,52.3774818],[4.8765621,52.3759143],[4.8759707,52.3750865],[4.8754812,52.374058],[4.8668906,52.3721626],[4.8734011,52.3806861],[4.8705007,52.3856492],[4.8716921,52.385533],[4.8659578,52.3952975],[4.8731568,52.3960571],[4.8765301,52.3959907],[4.8749524,52.3951749],[4.8801503,52.3916779],[4.8838562,52.3914105],[4.8849875,52.3893118]]]]}' > output/atlas-loman/28992/warped/WW8.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/WW8.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/WW8.vrt \
  output/atlas-loman/28992/warped/WW8-warped.tif

rm output/atlas-loman/28992/warped/WW8.geojson

  

# =============================================================================================
# Name: WW9 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/WW9.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 3616 4897 119906 487828 \
  -gcp 6359 316 119615 487340 \
  -gcp 3616 4897 119906 487828 \
  -gcp 2209 1654 120056 487488 \
  output/atlas-loman/WW9.tif \
  output/atlas-loman/28992/warped/WW9.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8849875,52.3893118],[4.8849875,52.3893118],[4.8849875,52.3893118],[4.8844362,52.3883689],[4.8820839,52.3847542],[4.8803851,52.3822393],[4.8794148,52.3819203],[4.8798463,52.3811462],[4.8788897,52.3796352],[4.8775822,52.3774818],[4.8765621,52.3759143],[4.8759707,52.3750865],[4.8754812,52.374058],[4.8668906,52.3721626],[4.8734011,52.3806861],[4.8705007,52.3856492],[4.8716921,52.385533],[4.8659578,52.3952975],[4.8731568,52.3960571],[4.8765301,52.3959907],[4.8749524,52.3951749],[4.8801503,52.3916779],[4.8838562,52.3914105],[4.8849875,52.3893118]]]]}' > output/atlas-loman/28992/warped/WW9.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/WW9.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/WW9.vrt \
  output/atlas-loman/28992/warped/WW9-warped.tif

rm output/atlas-loman/28992/warped/WW9.geojson

  

# =============================================================================================
# Name: X 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/X.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 2019 1405 121106 486692 \
  -gcp 507 2850 120918 486582 \
  -gcp 2019 1405 121106 486692 \
  -gcp 6684 3968 121520 486307 \
  output/atlas-loman/X.tif \
  output/atlas-loman/28992/warped/X.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8897824,52.3672631],[4.8907075,52.3670451],[4.8918628,52.3668818],[4.8931697,52.3669074],[4.8937432,52.3669222],[4.8957449,52.3663014],[4.8958567,52.3646432],[4.8959081,52.3633737],[4.8923287,52.3638744],[4.8893954,52.3642845],[4.8864666,52.3659308],[4.887953,52.3666806],[4.887953,52.3666806],[4.8897824,52.3672631]]]]}' > output/atlas-loman/28992/warped/X.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/X.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/X.vrt \
  output/atlas-loman/28992/warped/X-warped.tif

rm output/atlas-loman/28992/warped/X.geojson

  

# =============================================================================================
# Name: XX1 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/XX1.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 2025 2221 119604 487321 \
  -gcp 491 5169 119428 487015 \
  -gcp 2025 2221 119604 487321 \
  -gcp 5856 3266 120002 487199 \
  output/atlas-loman/XX1.tif \
  output/atlas-loman/28992/warped/XX1.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8754812,52.374058],[4.8754812,52.374058],[4.8758749,52.373749],[4.8757745,52.3732391],[4.8755826,52.3729889],[4.8744378,52.3724311],[4.8744974,52.3718786],[4.8750064,52.3707426],[4.8758574,52.3691202],[4.87684,52.3683765],[4.8772253,52.3672075],[4.8791725,52.3653084],[4.8791195,52.3648569],[4.8791829,52.3645641],[4.8795838,52.3640288],[4.8809586,52.3634451],[4.8801587,52.3631959],[4.8803662,52.3625962],[4.8810569,52.3626537],[4.8818208,52.3611432],[4.8728668,52.3583539],[4.8706564,52.3609332],[4.8690716,52.3608454],[4.8691816,52.3627472],[4.866552,52.3672259],[4.8661298,52.3694085],[4.8642833,52.3690767],[4.8668906,52.3721626],[4.8754812,52.374058]]]]}' > output/atlas-loman/28992/warped/XX1.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/XX1.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/XX1.vrt \
  output/atlas-loman/28992/warped/XX1-warped.tif

rm output/atlas-loman/28992/warped/XX1.geojson

  

# =============================================================================================
# Name: XX2 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/XX2.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 2183 1497 119674 486984 \
  -gcp 1852 4300 119739 486692 \
  -gcp 2183 1497 119674 486984 \
  -gcp 4996 4188 120050 486812 \
  output/atlas-loman/XX2.tif \
  output/atlas-loman/28992/warped/XX2.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8754812,52.374058],[4.8754812,52.374058],[4.8758749,52.373749],[4.8757745,52.3732391],[4.8755826,52.3729889],[4.8744378,52.3724311],[4.8744974,52.3718786],[4.8750064,52.3707426],[4.8758574,52.3691202],[4.87684,52.3683765],[4.8772253,52.3672075],[4.8791725,52.3653084],[4.8791195,52.3648569],[4.8791829,52.3645641],[4.8795838,52.3640288],[4.8809586,52.3634451],[4.8801587,52.3631959],[4.8803662,52.3625962],[4.8810569,52.3626537],[4.8818208,52.3611432],[4.8728668,52.3583539],[4.8706564,52.3609332],[4.8690716,52.3608454],[4.8691816,52.3627472],[4.866552,52.3672259],[4.8661298,52.3694085],[4.8642833,52.3690767],[4.8668906,52.3721626],[4.8754812,52.374058]]]]}' > output/atlas-loman/28992/warped/XX2.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/XX2.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/XX2.vrt \
  output/atlas-loman/28992/warped/XX2-warped.tif

rm output/atlas-loman/28992/warped/XX2.geojson

  

# =============================================================================================
# Name: XX3 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/XX3.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 2409 2989 119904 486376 \
  -gcp 2620 4656 119990 486224 \
  -gcp 2409 2989 119904 486376 \
  -gcp 6177 4815 120341 486347 \
  output/atlas-loman/XX3.tif \
  output/atlas-loman/28992/warped/XX3.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8754812,52.374058],[4.8754812,52.374058],[4.8758749,52.373749],[4.8757745,52.3732391],[4.8755826,52.3729889],[4.8744378,52.3724311],[4.8744974,52.3718786],[4.8750064,52.3707426],[4.8758574,52.3691202],[4.87684,52.3683765],[4.8772253,52.3672075],[4.8791725,52.3653084],[4.8791195,52.3648569],[4.8791829,52.3645641],[4.8795838,52.3640288],[4.8809586,52.3634451],[4.8801587,52.3631959],[4.8803662,52.3625962],[4.8810569,52.3626537],[4.8818208,52.3611432],[4.8728668,52.3583539],[4.8706564,52.3609332],[4.8690716,52.3608454],[4.8691816,52.3627472],[4.866552,52.3672259],[4.8661298,52.3694085],[4.8642833,52.3690767],[4.8668906,52.3721626],[4.8754812,52.374058]]]]}' > output/atlas-loman/28992/warped/XX3.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/XX3.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/XX3.vrt \
  output/atlas-loman/28992/warped/XX3-warped.tif

rm output/atlas-loman/28992/warped/XX3.geojson

  

# =============================================================================================
# Name: XX4 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/XX4.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 3615 1647 120123 486200 \
  -gcp 3333 2290 120156 486126 \
  -gcp 3615 1647 120123 486200 \
  -gcp 5642 4943 120532 486113 \
  output/atlas-loman/XX4.tif \
  output/atlas-loman/28992/warped/XX4.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8754812,52.374058],[4.8754812,52.374058],[4.8758749,52.373749],[4.8757745,52.3732391],[4.8755826,52.3729889],[4.8744378,52.3724311],[4.8744974,52.3718786],[4.8750064,52.3707426],[4.8758574,52.3691202],[4.87684,52.3683765],[4.8772253,52.3672075],[4.8791725,52.3653084],[4.8791195,52.3648569],[4.8791829,52.3645641],[4.8795838,52.3640288],[4.8809586,52.3634451],[4.8801587,52.3631959],[4.8803662,52.3625962],[4.8810569,52.3626537],[4.8818208,52.3611432],[4.8728668,52.3583539],[4.8706564,52.3609332],[4.8690716,52.3608454],[4.8691816,52.3627472],[4.866552,52.3672259],[4.8661298,52.3694085],[4.8642833,52.3690767],[4.8668906,52.3721626],[4.8754812,52.374058]]]]}' > output/atlas-loman/28992/warped/XX4.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/XX4.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/XX4.vrt \
  output/atlas-loman/28992/warped/XX4-warped.tif

rm output/atlas-loman/28992/warped/XX4.geojson

  

# =============================================================================================
# Name: Y 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/Y.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 1762 880 121397 486688 \
  -gcp 2237 4721 121555 486308 \
  -gcp 1762 880 121397 486688 \
  -gcp 5470 4692 121882 486408 \
  output/atlas-loman/Y.tif \
  output/atlas-loman/28992/warped/Y.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8959081,52.3633737],[4.8958567,52.3646432],[4.8957449,52.3663014],[4.8937432,52.3669222],[4.8931697,52.3669074],[4.8940652,52.3672683],[4.8957917,52.3678256],[4.8982444,52.3672993],[4.8984182,52.3674667],[4.9006748,52.3666278],[4.9014445,52.3658498],[4.9020507,52.3645485],[4.9020507,52.3645485],[4.8959081,52.3633737]]]]}' > output/atlas-loman/28992/warped/Y.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/Y.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/Y.vrt \
  output/atlas-loman/28992/warped/Y-warped.tif

rm output/atlas-loman/28992/warped/Y.geojson

  

# =============================================================================================
# Name: YY1 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/YY1.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 5303 5044 120231 485903 \
  -gcp 5169 4343 120292 485860 \
  -gcp 5303 5044 120231 485903 \
  -gcp 1867 3137 120634 486005 \
  output/atlas-loman/YY1.tif \
  output/atlas-loman/28992/warped/YY1.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8810569,52.3626537],[4.8810569,52.3626537],[4.8822681,52.3620309],[4.8838975,52.3618877],[4.8860555,52.3609356],[4.8879396,52.3599352],[4.8883766,52.3594173],[4.889557,52.3586881],[4.8908815,52.3583163],[4.8961804,52.3580564],[4.8982213,52.357965],[4.904573,52.3591276],[4.9065252,52.355785],[4.8856402,52.3506013],[4.8860496,52.3552955],[4.8812445,52.3537379],[4.8793009,52.3561567],[4.8776535,52.3557856],[4.8757757,52.3582047],[4.8729427,52.3575047],[4.8728668,52.3583539],[4.8818208,52.3611432],[4.8810569,52.3626537]]]]}' > output/atlas-loman/28992/warped/YY1.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/YY1.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/YY1.vrt \
  output/atlas-loman/28992/warped/YY1-warped.tif

rm output/atlas-loman/28992/warped/YY1.geojson

  

# =============================================================================================
# Name: YY1a 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/YY1a.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp NaN NaN 120914 485899 \
  -gcp NaN NaN 121018 485307 \
  -gcp NaN NaN 120914 485899 \
  -gcp NaN NaN 122084 485665 \
  output/atlas-loman/YY1a.tif \
  output/atlas-loman/28992/warped/YY1a.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8810569,52.3626537],[4.8810569,52.3626537],[4.8822681,52.3620309],[4.8838975,52.3618877],[4.8860555,52.3609356],[4.8879396,52.3599352],[4.8883766,52.3594173],[4.889557,52.3586881],[4.8908815,52.3583163],[4.8961804,52.3580564],[4.8982213,52.357965],[4.904573,52.3591276],[4.9065252,52.355785],[4.8856402,52.3506013],[4.8860496,52.3552955],[4.8812445,52.3537379],[4.8793009,52.3561567],[4.8776535,52.3557856],[4.8757757,52.3582047],[4.8729427,52.3575047],[4.8728668,52.3583539],[4.8818208,52.3611432],[4.8810569,52.3626537]]]]}' > output/atlas-loman/28992/warped/YY1a.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/YY1a.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/YY1a.vrt \
  output/atlas-loman/28992/warped/YY1a-warped.tif

rm output/atlas-loman/28992/warped/YY1a.geojson

  

# =============================================================================================
# Name: YY2 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/YY2.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 6679 4987 120359 485584 \
  -gcp 6406 1788 120587 485336 \
  -gcp 6679 4987 120359 485584 \
  -gcp 3517 927 120886 485447 \
  output/atlas-loman/YY2.tif \
  output/atlas-loman/28992/warped/YY2.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8810569,52.3626537],[4.8810569,52.3626537],[4.8822681,52.3620309],[4.8838975,52.3618877],[4.8860555,52.3609356],[4.8879396,52.3599352],[4.8883766,52.3594173],[4.889557,52.3586881],[4.8908815,52.3583163],[4.8961804,52.3580564],[4.8982213,52.357965],[4.904573,52.3591276],[4.9065252,52.355785],[4.8856402,52.3506013],[4.8860496,52.3552955],[4.8812445,52.3537379],[4.8793009,52.3561567],[4.8776535,52.3557856],[4.8757757,52.3582047],[4.8729427,52.3575047],[4.8728668,52.3583539],[4.8818208,52.3611432],[4.8810569,52.3626537]]]]}' > output/atlas-loman/28992/warped/YY2.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/YY2.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/YY2.vrt \
  output/atlas-loman/28992/warped/YY2-warped.tif

rm output/atlas-loman/28992/warped/YY2.geojson

  

# =============================================================================================
# Name: YY3 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/YY3.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 2497 922 120937 485804 \
  -gcp 1046 4533 120930 485389 \
  -gcp 2497 922 120937 485804 \
  -gcp 4569 5184 121293 485449 \
  output/atlas-loman/YY3.tif \
  output/atlas-loman/28992/warped/YY3.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8810569,52.3626537],[4.8810569,52.3626537],[4.8822681,52.3620309],[4.8838975,52.3618877],[4.8860555,52.3609356],[4.8879396,52.3599352],[4.8883766,52.3594173],[4.889557,52.3586881],[4.8908815,52.3583163],[4.8961804,52.3580564],[4.8982213,52.357965],[4.904573,52.3591276],[4.9065252,52.355785],[4.8856402,52.3506013],[4.8860496,52.3552955],[4.8812445,52.3537379],[4.8793009,52.3561567],[4.8776535,52.3557856],[4.8757757,52.3582047],[4.8729427,52.3575047],[4.8728668,52.3583539],[4.8818208,52.3611432],[4.8810569,52.3626537]]]]}' > output/atlas-loman/28992/warped/YY3.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/YY3.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/YY3.vrt \
  output/atlas-loman/28992/warped/YY3-warped.tif

rm output/atlas-loman/28992/warped/YY3.geojson

  

# =============================================================================================
# Name: YY4 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/YY4.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 1190 4370 121330 485661 \
  -gcp 2761 5116 121312 485476 \
  -gcp 1190 4370 121330 485661 \
  -gcp 2936 2262 121599 485565 \
  output/atlas-loman/YY4.tif \
  output/atlas-loman/28992/warped/YY4.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8810569,52.3626537],[4.8810569,52.3626537],[4.8822681,52.3620309],[4.8838975,52.3618877],[4.8860555,52.3609356],[4.8879396,52.3599352],[4.8883766,52.3594173],[4.889557,52.3586881],[4.8908815,52.3583163],[4.8961804,52.3580564],[4.8982213,52.357965],[4.904573,52.3591276],[4.9065252,52.355785],[4.8856402,52.3506013],[4.8860496,52.3552955],[4.8812445,52.3537379],[4.8793009,52.3561567],[4.8776535,52.3557856],[4.8757757,52.3582047],[4.8729427,52.3575047],[4.8728668,52.3583539],[4.8818208,52.3611432],[4.8810569,52.3626537]]]]}' > output/atlas-loman/28992/warped/YY4.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/YY4.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/YY4.vrt \
  output/atlas-loman/28992/warped/YY4-warped.tif

rm output/atlas-loman/28992/warped/YY4.geojson

  

# =============================================================================================
# Name: YY5 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/YY5.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 2455 4099 121868 485635 \
  -gcp 2780 3968 121892 485607 \
  -gcp 2455 4099 121868 485635 \
  -gcp 2357 2010 122072 485721 \
  output/atlas-loman/YY5.tif \
  output/atlas-loman/28992/warped/YY5.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8810569,52.3626537],[4.8810569,52.3626537],[4.8822681,52.3620309],[4.8838975,52.3618877],[4.8860555,52.3609356],[4.8879396,52.3599352],[4.8883766,52.3594173],[4.889557,52.3586881],[4.8908815,52.3583163],[4.8961804,52.3580564],[4.8982213,52.357965],[4.904573,52.3591276],[4.9065252,52.355785],[4.8856402,52.3506013],[4.8860496,52.3552955],[4.8812445,52.3537379],[4.8793009,52.3561567],[4.8776535,52.3557856],[4.8757757,52.3582047],[4.8729427,52.3575047],[4.8728668,52.3583539],[4.8818208,52.3611432],[4.8810569,52.3626537]]]]}' > output/atlas-loman/28992/warped/YY5.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/YY5.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/YY5.vrt \
  output/atlas-loman/28992/warped/YY5-warped.tif

rm output/atlas-loman/28992/warped/YY5.geojson

  

# =============================================================================================
# Name: YY6 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/YY6.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 5611 3789 121123 485360 \
  -gcp 3545 808 121426 485117 \
  -gcp 5611 3789 121123 485360 \
  -gcp 903 1925 121655 485312 \
  output/atlas-loman/YY6.tif \
  output/atlas-loman/28992/warped/YY6.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8810569,52.3626537],[4.8810569,52.3626537],[4.8822681,52.3620309],[4.8838975,52.3618877],[4.8860555,52.3609356],[4.8879396,52.3599352],[4.8883766,52.3594173],[4.889557,52.3586881],[4.8908815,52.3583163],[4.8961804,52.3580564],[4.8982213,52.357965],[4.904573,52.3591276],[4.9065252,52.355785],[4.8856402,52.3506013],[4.8860496,52.3552955],[4.8812445,52.3537379],[4.8793009,52.3561567],[4.8776535,52.3557856],[4.8757757,52.3582047],[4.8729427,52.3575047],[4.8728668,52.3583539],[4.8818208,52.3611432],[4.8810569,52.3626537]]]]}' > output/atlas-loman/28992/warped/YY6.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/YY6.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/YY6.vrt \
  output/atlas-loman/28992/warped/YY6-warped.tif

rm output/atlas-loman/28992/warped/YY6.geojson

  

# =============================================================================================
# Name: YY7 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/YY7.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 4854 4506 120885 485372 \
  -gcp 5811 984 120875 484994 \
  -gcp 4854 4506 120885 485372 \
  -gcp 2831 747 121175 485047 \
  output/atlas-loman/YY7.tif \
  output/atlas-loman/28992/warped/YY7.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8810569,52.3626537],[4.8810569,52.3626537],[4.8822681,52.3620309],[4.8838975,52.3618877],[4.8860555,52.3609356],[4.8879396,52.3599352],[4.8883766,52.3594173],[4.889557,52.3586881],[4.8908815,52.3583163],[4.8961804,52.3580564],[4.8982213,52.357965],[4.904573,52.3591276],[4.9065252,52.355785],[4.8856402,52.3506013],[4.8860496,52.3552955],[4.8812445,52.3537379],[4.8793009,52.3561567],[4.8776535,52.3557856],[4.8757757,52.3582047],[4.8729427,52.3575047],[4.8728668,52.3583539],[4.8818208,52.3611432],[4.8810569,52.3626537]]]]}' > output/atlas-loman/28992/warped/YY7.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/YY7.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/YY7.vrt \
  output/atlas-loman/28992/warped/YY7-warped.tif

rm output/atlas-loman/28992/warped/YY7.geojson

  

# =============================================================================================
# Name: Z1 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/Z1.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 2094 1913 121557 486258 \
  -gcp 3083 3271 121695 486146 \
  -gcp 2094 1913 121557 486258 \
  -gcp 5517 3238 121941 486219 \
  output/atlas-loman/Z1.tif \
  output/atlas-loman/28992/warped/Z1.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8961804,52.3580564],[4.8963692,52.359431],[4.8961585,52.3600421],[4.8959081,52.3633737],[4.9020507,52.3645485],[4.9044266,52.3594474],[4.904573,52.3591276],[4.8982213,52.357965],[4.8982213,52.357965],[4.8961804,52.3580564]]]]}' > output/atlas-loman/28992/warped/Z1.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/Z1.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/Z1.vrt \
  output/atlas-loman/28992/warped/Z1-warped.tif

rm output/atlas-loman/28992/warped/Z1.geojson

  

# =============================================================================================
# Name: Z2 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/Z2.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 2041 1227 121565 486063 \
  -gcp 1637 4674 121635 485704 \
  -gcp 2041 1227 121565 486063 \
  -gcp 5836 3233 122011 485983 \
  output/atlas-loman/Z2.tif \
  output/atlas-loman/28992/warped/Z2.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.8961804,52.3580564],[4.8963692,52.359431],[4.8961585,52.3600421],[4.8959081,52.3633737],[4.9020507,52.3645485],[4.9044266,52.3594474],[4.904573,52.3591276],[4.8982213,52.357965],[4.8982213,52.357965],[4.8961804,52.3580564]]]]}' > output/atlas-loman/28992/warped/Z2.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/Z2.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/Z2.vrt \
  output/atlas-loman/28992/warped/Z2-warped.tif

rm output/atlas-loman/28992/warped/Z2.geojson

  

# =============================================================================================
# Name: ZZ01 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/ZZ01.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 1060 4437 122225 485793 \
  -gcp 6616 4484 122450 485222 \
  -gcp 1060 4437 122225 485793 \
  -gcp 6641 2807 122611 485292 \
  output/atlas-loman/ZZ01.tif \
  output/atlas-loman/28992/warped/ZZ01.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.9332433,52.3703635],[4.9342547,52.3763193],[4.9418296,52.3754286],[4.9529161,52.3775386],[4.9551273,52.3763973],[4.955783,52.3751847],[4.9573506,52.3684582],[4.9400301,52.3676388],[4.9320381,52.3674769],[4.9332433,52.3703635],[4.9332433,52.3703635]]]]}' > output/atlas-loman/28992/warped/ZZ01.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/ZZ01.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/ZZ01.vrt \
  output/atlas-loman/28992/warped/ZZ01-warped.tif

rm output/atlas-loman/28992/warped/ZZ01.geojson

  

# =============================================================================================
# Name: ZZ02 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/ZZ02.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 724 4103 122747 485994 \
  -gcp 4856 5017 122810 485649 \
  -gcp 724 4103 122747 485994 \
  -gcp 4873 1140 123161 485818 \
  output/atlas-loman/ZZ02.tif \
  output/atlas-loman/28992/warped/ZZ02.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.9332433,52.3703635],[4.9342547,52.3763193],[4.9418296,52.3754286],[4.9529161,52.3775386],[4.9551273,52.3763973],[4.955783,52.3751847],[4.9573506,52.3684582],[4.9400301,52.3676388],[4.9320381,52.3674769],[4.9332433,52.3703635],[4.9332433,52.3703635]]]]}' > output/atlas-loman/28992/warped/ZZ02.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/ZZ02.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/ZZ02.vrt \
  output/atlas-loman/28992/warped/ZZ02-warped.tif

rm output/atlas-loman/28992/warped/ZZ02.geojson

  

# =============================================================================================
# Name: ZZ03 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/ZZ03.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 1727 4203 123090 486071 \
  -gcp 6434 4835 123294 485624 \
  -gcp 1727 4203 123090 486071 \
  -gcp 6321 1143 123571 485747 \
  output/atlas-loman/ZZ03.tif \
  output/atlas-loman/28992/warped/ZZ03.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.9332433,52.3703635],[4.9342547,52.3763193],[4.9418296,52.3754286],[4.9529161,52.3775386],[4.9551273,52.3763973],[4.955783,52.3751847],[4.9573506,52.3684582],[4.9400301,52.3676388],[4.9320381,52.3674769],[4.9332433,52.3703635],[4.9332433,52.3703635]]]]}' > output/atlas-loman/28992/warped/ZZ03.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/ZZ03.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/ZZ03.vrt \
  output/atlas-loman/28992/warped/ZZ03-warped.tif

rm output/atlas-loman/28992/warped/ZZ03.geojson

  

# =============================================================================================
# Name: ZZ04 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/ZZ04.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 410 1656 123464 486092 \
  -gcp 556 4445 123598 485752 \
  -gcp 410 1656 123464 486092 \
  -gcp 6528 4524 124205 485993 \
  output/atlas-loman/ZZ04.tif \
  output/atlas-loman/28992/warped/ZZ04.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.9332433,52.3703635],[4.9342547,52.3763193],[4.9418296,52.3754286],[4.9529161,52.3775386],[4.9551273,52.3763973],[4.955783,52.3751847],[4.9573506,52.3684582],[4.9400301,52.3676388],[4.9320381,52.3674769],[4.9332433,52.3703635],[4.9332433,52.3703635]]]]}' > output/atlas-loman/28992/warped/ZZ04.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/ZZ04.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/ZZ04.vrt \
  output/atlas-loman/28992/warped/ZZ04-warped.tif

rm output/atlas-loman/28992/warped/ZZ04.geojson

  

# =============================================================================================
# Name: ZZ05 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/ZZ05.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 1369 1472 123434 486417 \
  -gcp 640 3692 123445 486168 \
  -gcp 1369 1472 123434 486417 \
  -gcp 5327 3840 123909 486325 \
  output/atlas-loman/ZZ05.tif \
  output/atlas-loman/28992/warped/ZZ05.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.9332433,52.3703635],[4.9342547,52.3763193],[4.9418296,52.3754286],[4.9529161,52.3775386],[4.9551273,52.3763973],[4.955783,52.3751847],[4.9573506,52.3684582],[4.9400301,52.3676388],[4.9320381,52.3674769],[4.9332433,52.3703635],[4.9332433,52.3703635]]]]}' > output/atlas-loman/28992/warped/ZZ05.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/ZZ05.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/ZZ05.vrt \
  output/atlas-loman/28992/warped/ZZ05-warped.tif

rm output/atlas-loman/28992/warped/ZZ05.geojson

  

# =============================================================================================
# Name: ZZ06 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/ZZ06.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 2194 674 124481 486549 \
  -gcp 4262 4314 124205 486213 \
  -gcp 2194 674 124481 486549 \
  -gcp 4596 3442 124304 486221 \
  output/atlas-loman/ZZ06.tif \
  output/atlas-loman/28992/warped/ZZ06.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.9332433,52.3703635],[4.9342547,52.3763193],[4.9418296,52.3754286],[4.9529161,52.3775386],[4.9551273,52.3763973],[4.955783,52.3751847],[4.9573506,52.3684582],[4.9400301,52.3676388],[4.9320381,52.3674769],[4.9332433,52.3703635],[4.9332433,52.3703635]]]]}' > output/atlas-loman/28992/warped/ZZ06.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/ZZ06.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/ZZ06.vrt \
  output/atlas-loman/28992/warped/ZZ06-warped.tif

rm output/atlas-loman/28992/warped/ZZ06.geojson

  

# =============================================================================================
# Name: ZZ07 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/ZZ07.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 2251 1116 125124 486980 \
  -gcp 941 3430 124988 486713 \
  -gcp 2251 1116 125124 486980 \
  -gcp 6100 3374 125531 486719 \
  output/atlas-loman/ZZ07.tif \
  output/atlas-loman/28992/warped/ZZ07.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.9332433,52.3703635],[4.9342547,52.3763193],[4.9418296,52.3754286],[4.9529161,52.3775386],[4.9551273,52.3763973],[4.955783,52.3751847],[4.9573506,52.3684582],[4.9400301,52.3676388],[4.9320381,52.3674769],[4.9332433,52.3703635],[4.9332433,52.3703635]]]]}' > output/atlas-loman/28992/warped/ZZ07.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/ZZ07.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/ZZ07.vrt \
  output/atlas-loman/28992/warped/ZZ07-warped.tif

rm output/atlas-loman/28992/warped/ZZ07.geojson

  

# =============================================================================================
# Name: ZZ08 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/ZZ08.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 1318 1367 124359 486934 \
  -gcp 2051 3507 124434 486713 \
  -gcp 1318 1367 124359 486934 \
  -gcp 4058 3260 124648 486734 \
  output/atlas-loman/ZZ08.tif \
  output/atlas-loman/28992/warped/ZZ08.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.9332433,52.3703635],[4.9342547,52.3763193],[4.9418296,52.3754286],[4.9529161,52.3775386],[4.9551273,52.3763973],[4.955783,52.3751847],[4.9573506,52.3684582],[4.9400301,52.3676388],[4.9320381,52.3674769],[4.9332433,52.3703635],[4.9332433,52.3703635]]]]}' > output/atlas-loman/28992/warped/ZZ08.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/ZZ08.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/ZZ08.vrt \
  output/atlas-loman/28992/warped/ZZ08-warped.tif

rm output/atlas-loman/28992/warped/ZZ08.geojson

  

# =============================================================================================
# Name: ZZ09 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/ZZ09.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 3345 2375 123919 486794 \
  -gcp 2077 3234 123792 486703 \
  -gcp 3345 2375 123919 486794 \
  -gcp 6021 3289 124207 486715 \
  output/atlas-loman/ZZ09.tif \
  output/atlas-loman/28992/warped/ZZ09.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.9332433,52.3703635],[4.9342547,52.3763193],[4.9418296,52.3754286],[4.9529161,52.3775386],[4.9551273,52.3763973],[4.955783,52.3751847],[4.9573506,52.3684582],[4.9400301,52.3676388],[4.9320381,52.3674769],[4.9332433,52.3703635],[4.9332433,52.3703635]]]]}' > output/atlas-loman/28992/warped/ZZ09.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/ZZ09.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/ZZ09.vrt \
  output/atlas-loman/28992/warped/ZZ09-warped.tif

rm output/atlas-loman/28992/warped/ZZ09.geojson

  

# =============================================================================================
# Name: ZZ10 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/ZZ10.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 1385 1438 122682 487975 \
  -gcp 2092 4288 122674 487641 \
  -gcp 1385 1438 122682 487975 \
  -gcp 873 3272 122569 487792 \
  output/atlas-loman/ZZ10.tif \
  output/atlas-loman/28992/warped/ZZ10.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.9332433,52.3703635],[4.9342547,52.3763193],[4.9418296,52.3754286],[4.9529161,52.3775386],[4.9551273,52.3763973],[4.955783,52.3751847],[4.9573506,52.3684582],[4.9400301,52.3676388],[4.9320381,52.3674769],[4.9332433,52.3703635],[4.9332433,52.3703635]]]]}' > output/atlas-loman/28992/warped/ZZ10.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/ZZ10.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/ZZ10.vrt \
  output/atlas-loman/28992/warped/ZZ10-warped.tif

rm output/atlas-loman/28992/warped/ZZ10.geojson

  

# =============================================================================================
# Name: ZZ11 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/ZZ11.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 370 1554 123260 487809 \
  -gcp 342 2831 123227 487668 \
  -gcp 370 1554 123260 487809 \
  -gcp 1636 2822 123368 487636 \
  output/atlas-loman/ZZ11.tif \
  output/atlas-loman/28992/warped/ZZ11.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.9332433,52.3703635],[4.9342547,52.3763193],[4.9418296,52.3754286],[4.9529161,52.3775386],[4.9551273,52.3763973],[4.955783,52.3751847],[4.9573506,52.3684582],[4.9400301,52.3676388],[4.9320381,52.3674769],[4.9332433,52.3703635],[4.9332433,52.3703635]]]]}' > output/atlas-loman/28992/warped/ZZ11.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/ZZ11.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/ZZ11.vrt \
  output/atlas-loman/28992/warped/ZZ11-warped.tif

rm output/atlas-loman/28992/warped/ZZ11.geojson

  

# =============================================================================================
# Name: ZZ12 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/ZZ12.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 6586 1124 123951 487615 \
  -gcp 5236 789 123915 487472 \
  -gcp 6586 1124 123951 487615 \
  -gcp 1047 3735 124209 487002 \
  output/atlas-loman/ZZ12.tif \
  output/atlas-loman/28992/warped/ZZ12.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.9332433,52.3703635],[4.9342547,52.3763193],[4.9418296,52.3754286],[4.9529161,52.3775386],[4.9551273,52.3763973],[4.955783,52.3751847],[4.9573506,52.3684582],[4.9400301,52.3676388],[4.9320381,52.3674769],[4.9332433,52.3703635],[4.9332433,52.3703635]]]]}' > output/atlas-loman/28992/warped/ZZ12.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/ZZ12.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/ZZ12.vrt \
  output/atlas-loman/28992/warped/ZZ12-warped.tif

rm output/atlas-loman/28992/warped/ZZ12.geojson

  

# =============================================================================================
# Name: ZZ13 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/ZZ13.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 5705 1070 124318 487507 \
  -gcp 4821 1049 124313 487405 \
  -gcp 5705 1070 124318 487507 \
  -gcp 4609 1913 124413 487381 \
  output/atlas-loman/ZZ13.tif \
  output/atlas-loman/28992/warped/ZZ13.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.9332433,52.3703635],[4.9342547,52.3763193],[4.9418296,52.3754286],[4.9529161,52.3775386],[4.9551273,52.3763973],[4.955783,52.3751847],[4.9573506,52.3684582],[4.9400301,52.3676388],[4.9320381,52.3674769],[4.9332433,52.3703635],[4.9332433,52.3703635]]]]}' > output/atlas-loman/28992/warped/ZZ13.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/ZZ13.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/ZZ13.vrt \
  output/atlas-loman/28992/warped/ZZ13-warped.tif

rm output/atlas-loman/28992/warped/ZZ13.geojson

  

# =============================================================================================
# Name: ZZ14 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/ZZ14.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 5168 1077 124704 487423 \
  -gcp 1849 1122 124699 487073 \
  -gcp 5168 1077 124704 487423 \
  -gcp 1386 2262 124820 487023 \
  output/atlas-loman/ZZ14.tif \
  output/atlas-loman/28992/warped/ZZ14.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.9332433,52.3703635],[4.9342547,52.3763193],[4.9418296,52.3754286],[4.9529161,52.3775386],[4.9551273,52.3763973],[4.955783,52.3751847],[4.9573506,52.3684582],[4.9400301,52.3676388],[4.9320381,52.3674769],[4.9332433,52.3703635],[4.9332433,52.3703635]]]]}' > output/atlas-loman/28992/warped/ZZ14.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/ZZ14.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/ZZ14.vrt \
  output/atlas-loman/28992/warped/ZZ14-warped.tif

rm output/atlas-loman/28992/warped/ZZ14.geojson

  

# =============================================================================================
# Name: ZZ15 🗺️
# =============================================================================================

wget -N -P ./output/atlas-loman/ http://mapserver.fa.knaw.nl/loman/kaarten/serie_6/ZZ15.tif

gdal_translate -of vrt \
  -a_srs EPSG:28992 \
  -gcp 3141 1206 125137 487743 \
  -gcp 1380 1590 125197 487329 \
  -gcp 3141 1206 125137 487743 \
  -gcp 2324 4467 125630 487420 \
  output/atlas-loman/ZZ15.tif \
  output/atlas-loman/28992/warped/ZZ15.vrt

echo '{"type":"MultiPolygon","coordinates":[[[[4.9332433,52.3703635],[4.9342547,52.3763193],[4.9418296,52.3754286],[4.9529161,52.3775386],[4.9551273,52.3763973],[4.955783,52.3751847],[4.9573506,52.3684582],[4.9400301,52.3676388],[4.9320381,52.3674769],[4.9332433,52.3703635],[4.9332433,52.3703635]]]]}' > output/atlas-loman/28992/warped/ZZ15.geojson

gdalwarp -co TILED=YES \
  -co COMPRESS=JPEG -co JPEG_QUALITY=80 \
  -dstalpha -overwrite \
  -cutline output/atlas-loman/28992/warped/ZZ15.geojson -crop_to_cutline \
  -tr 0.1 0.1 -t_srs "EPSG:28992" \
  output/atlas-loman/28992/warped/ZZ15.vrt \
  output/atlas-loman/28992/warped/ZZ15-warped.tif

rm output/atlas-loman/28992/warped/ZZ15.geojson

  

mkdir -p output/atlas-loman/28992/index

for j in output/atlas-loman/28992/warped/*.tif; do
  gdaladdo -r cubic \
    --config COMPRESS_OVERVIEW JPEG \
    --config PHOTOMETRIC_OVERVIEW YCBCR \
    --config INTERLEAVE_OVERVIEW PIXEL \
    $j 2 4 8 16 32 64 128
done

# Create tile indices
cd output/atlas-loman/28992/index
gdaltindex index.shp ../warped/*.tif
ogrinfo -sql "CREATE SPATIAL INDEX ON index" index.shp
    
