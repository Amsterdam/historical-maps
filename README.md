# Historical Maps for data.amsterdam.nl

Tools, scripts and data to generate tiles for [data.amsterdam.nl](https://data.amsterdam.nl/data/?modus=kaart&center=52.3747993%2C4.8918253&lagen=pw1943-2500%3A1&legenda=true&zoom=10) from digitized historical maps from the [Amsterdam City Archives](https://www.amsterdam.nl/stadsarchief).

[![Dienst der Publieke Werken (1943)](screenshots/1943.png)](https://amsterdam.github.io/historical-maps/viewer/28992.html)

This repository contains:

- JSON and GeoJSON data of map sheets, collected and georectified by [Jan Hartmann](http://www.uva.nl/en/profile/h/a/j.l.h.hartmann/j.l.h.hartmann.html)
- Scripts to download map sheets from the [Amsterdam City Archives](https://archief.amsterdam/beeldbank/)
- GDAL scripts to warp these map sheets, combine them, and turn them into XYZ map tiles
- A Leaflet-based viewer to view the historical maps produced by this repository

## Usage

All steps required to turn the map series in the [`source-data`](source-data) directory into XYZ map tiles are defined by the [Makefile](Makefile).

First, make sure you have GDAL and Node.js installed, then install the dependencies:

    npm install

The Makefile has the following targets/steps:

- `layers`: combines georeference data from the [`source-data`](source-data) directory.
- `gdal-scripts`: uses the newline-delimited JSON data in the [`layers`](layers) directory to create GDAL scripts.
- `gdal`: uses GDAL scripts from the [`gdal-scripts`](gdal-scripts) directory to download and warp map sheets.
- `tiles`: uses [gdal2tiles.py](https://gdal.org/programs/gdal2tiles.html) and the GeoTIFFs and VRTs in the output directory to create XYZ map tiles.

To exectute one of these steps, use make. For example:

	make layers

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
