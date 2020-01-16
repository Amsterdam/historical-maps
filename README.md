# Historical Maps for data.amsterdam.nl

__The Amsterdam City Archives recently [updated its image portal](https://archief.amsterdam/beeldbank). The links to high resolution maps used in this repository no longer work. There must be a way to download these maps from the new image portal as well, but [Picturae](https://picturae.com/en/) has made that annoyingly complicated.__

Tools, scripts and data to generate tiles for [data.amsterdam.nl](https://data.amsterdam.nl/data/?modus=kaart&center=52.3747993%2C4.8918253&lagen=pw1943-2500%3A1&legenda=true&zoom=10) from scanned historical maps from the [Amsterdam City Archives](https://www.amsterdam.nl/stadsarchief).

[![Dienst der Publieke Werken (1943)](screenshots/1943.png)](https://amsterdam.github.io/historical-maps/viewer/28992.html)

This repository contains:

- GDAL scripts to create tiles from scanned maps
- MapServer and MapProxy Dockerfiles, to turn warped GeoTIFFs into tiles
- GeoJSON data of map sheets, collected and georectified by [Jan Hartmann](http://www.uva.nl/en/profile/h/a/j.l.h.hartmann/j.l.h.hartmann.html)

## Maps & Tiles

The following historical maps are currently availeble on data.amsterdam.nl:

| Year | Scale | Projection  | ID                             |
|:-----|:-------|:-----------|:-------------------------------|
| 1909 | 1:1000 | EPSG:28992 | `publieke-werken-1909-rd`      |
| 1943 | 1:1000 | EPSG:28992 | `publieke-werken-1943-rd`      |
| 1943 | 1:2500 | EPSG:28992 | `publieke-werken-1943-2500-rd` |
| 1985 | 1:1000 | EPSG:28992 | `publieke-werken-1985-rd`      |

You can use the following tile URLs:

| Jaar                                       | Tile-URL                            |
|:-------------------------------------------|:------------------------------------|
| [Dienst der Publieke Werken (1909, 1:1000)](https://amsterdam.github.io/historical-maps/viewer/28992.html?layer=publieke-werken-1909-rd#13/52.3591/4.9088) | `https://{s}.data.amsterdam.nl/publieke-werken-1909-rd/{z}/{x}/{y}.png` |
| [Dienst der Publieke Werken (1943, 1:1000)](https://amsterdam.github.io/historical-maps/viewer/28992.html?layer=publieke-werken-1943-rd#14/52.3612/4.9571) | `https://{s}.data.amsterdam.nl/publieke-werken-1943-rd/{z}/{x}/{y}.png` |
| [Dienst der Publieke Werken (1943, 1:2500)](https://amsterdam.github.io/historical-maps/viewer/28992.html?publieke-werken-1943-2500-rd#12/52.3555/4.8546) | `https://{s}.data.amsterdam.nl/publieke-werken-1943-2500-rd/{z}/{x}/{y}.png` |
| [Dienst der Publieke Werken (1985, 1:1000)](https://amsterdam.github.io/historical-maps/viewer/28992.html?layer=publieke-werken-1985-rd#14/52.3627/4.8827) | `https://{s}.data.amsterdam.nl/publieke-werken-1985-rd/{z}/{x}/{y}.png` |

Bounding boxes:

| ID                             | Bounding box                             |
|:-------------------------------|------------------------------------------|
| `publieke-werken-1909-rd`      | `[[52.3361, 4.8404], [52.4185, 4.9662]]` |
| `publieke-werken-1943-rd`      | `[[52.3292, 4.8382], [52.4173, 4.9646]]` |
| `publieke-werken-1943-2500-rd` |                                          |
| `publieke-werken-1985-rd`      | `[[52.2756, 4.7402], [52.4374, 5.0479]]` |

Four subdomains are available for our tile servers, you can tell Leaflet to substitute the `{s}` template with one of the strings `t1`, `t2`, `t3` or `t4`:

```js
var tileUrl = 'https://{s}.data.amsterdam.nl/publieke-werken-1909-rd/{z}/{x}/{y}.png'

L.tileLayer(tileUrl, {
  subdomains: ['t1', 't2', 't3', 't4'],
  maxZoom: 17
}).addTo(map)
```

### Generate GDAL script

Georecticitation data for Amsterdam City Archives maps is available in the repository https://github.com/Amsterdam/city-archives-georectification. The scripts below expect this data to be available in `../city-archives-georectification`.

First, make sure you have GDAL and Node.js installed, then install the dependencies:

    npm install

Some examples:

		./publieke-werken.js -s ./source-data/publieke-werken/sheets.geojson --gcps ../city-archives-georectification/vele-handen.geojson --series ./source-data/publieke-werken/series.json -y 1950 -o ../output/publieke-werken > gdal-scripts/publieke-werken-1950-28992.sh

		./publieke-werken-2500.js -g ../city-archives-georectification/publieke-werken-2500.geojson -o ../output/publieke-werken-2500 -y 1943 -p 3857 > gdal-scripts/publieke-werken-2500-1943-3857.sh

		./publieke-werken-2500.js -g ../city-archives-georectification/publieke-werken-2500.geojson -o ../output/publieke-werken-2500 -y 1943 -p 28992 > gdal-scripts/publieke-werken-2500-1943-28992.sh

		./atlas-loman.js > gdal-scripts/atlas-loman-28992.sh

### Series

The following scripts create map series for Dienst der Publieke Werken maps. For each decade, the script picks the newest map available map for every sheet.

		cat ./source-data/publieke-werken/inventory/*.txt | ./parse-publieke-werken-inventory.js | ./group-by-sheet.js > ./source-data/publieke-werken/maps-by-sheet.ndjson

		./generate-series.js data < ./source-data/publieke-werken/maps-by-sheet.ndjson > ./source-data/publieke-werken/series.json
		./generate-series.js log < ./source-data/publieke-werken/maps-by-sheet.ndjson > ./source-data/publieke-werken/series.txt

## Generate tiles

To create tiles from a WMS layer, you can use the MapProxy Docker configuration in this repository. First, adapt the Mapfiles in the [`mapserver`](mapserver) directory: `publieke-werken.map` and/or `atlas-loman.map`, or create a new Mapfile.

Then:

		docker-compose build mapproxy

And:

		docker-compose run mapproxy seed.sh publieke_werken_2500_1943

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
