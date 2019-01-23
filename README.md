# Dienst der Publieke Werken

Tools, scripts and data to generate tiles for _Dienst der Publieke Werken_ maps.

[![Dienst der Publieke Werken (1943)](screenshots/1943.png)](https://amsterdam.github.io/publieke-werken/viewer/28992.html)

This repository contains:

- GDAL scripts to create tiles from scanned maps
- MapServer and MapProxy Dockerfiles, to turn warped GeoTIFFs into tiles
- GeoJSON data of map sheets, collected and georectified by [Jan Hartmann](http://www.uva.nl/en/profile/h/a/j.l.h.hartmann/j.l.h.hartmann.html)

This repository will eventually contain:

- Links to [Stadsarchief Beeldbank](https://beeldbank.amsterdam.nl/beeldbank)
- Links to generated tiles (both in EPSG:28992 and EPSG:3857)
- Leaflet viewers to display those tiles

## Maps

 - [Dienst der Publieke Werken (1943)](https://amsterdam.github.io/publieke-werken/viewer/28992.html)

## Usage

### Generate GDAL script

[`index.js`](index.js) is a Node.js tool to generate a shell script which downloads map sheets, translates and warps them, and creates a tile index.

First, make sure you have GDAL and Node.js installed, then install the dependencies:

    npm install

To see all available options, run:

    ./index.js

To generate a script to download the 1943 map and create EPSG:28922 GeoTIFFs:

    ./index.js -s sheets/sheets.geojson -g sheets/1943.json \
      -o 1943 -b /srv/mapserver/publieke-werken -k \
      --retile false -p 28992 > 1943-28992.sh

Then, run this script:

    chmod +x 1943-28992.sh && ./1943-28992.sh

In the end, the directory `./1943/28992/` will contain warped GeoTIFFs and the tile index.

## See Also

- https://github.com/Amsterdam/mapserver/blob/master/lufopyramids.sh
- https://gis.stackexchange.com/questions/27426/creating-a-mask-with-transparent-pixels-in-python
- http://www.gdal.org/frmt_gtiff.html
- https://smathermather.wordpress.com/2016/05/01/efficient-delivery-of-raster-data-part-4/
- https://smathermather.wordpress.com/2016/04/15/whichever-tiler-you-use-and-efficient-delivery-of-raster-data-image-pyramid-layer-update2/
- https://astuntech.atlassian.net/wiki/display/ISHAREHELP/Mosaic+thousands+of+raster+images
- http://blog.cleverelephant.ca/2015/02/geotiff-compression-for-dummies.html
- https://www.slidesearch.net/slide/geoserver-in-production-we-do-it-here-is-how-foss4g-2016
- https://www.mapbox.com/blog/super-sharp-pleiades-imagery-on-mapbox/
- https://github.com/boundlessgeo/workshops/blob/master/workshops/data_configs/sphinx/source/raster.rst
- http://www.ianturton.com/tutorials/bluemarble.html
