# mapproxy

This project contains all the mapproxy files for the Datapunt Map project.

To Run this:

    docker-compose build
    
    docker-compose run topo-kbk

seed.yaml - Caching configuratie
mapproxy.yaml - Mapproxy server config

---------------------

Luchtfoto tegels
----------------

Creating a new Lufo year of tiles and service follow these steps:

- Copy the aerial pictures (tif) to localhost
- Run mapserver/lufopyramids.sh (see comments in file)
- Start mapserver docker
- Run mapproxy docker: 
```
docker-compose run topo-lufo
```
- Move generated tiles from /mnt/tiles/lufo_rd_cache_EPSG28992/ to: /mnt/tiles/lufo<YEAR>_rd_cache_EPSG28992/
- Upload the tiles to the objectstore using rclone
```
rclone sync lufo2018_rd_cache_EPSG28992 tilesacc:/ -vvv --transfers=20 --checkers=20
rclone sync lufo2018_rd_cache_EPSG28992 tiles:/ -vvv --transfers=20 --checkers=20
```
- Upload pyramid directory to objectstore
