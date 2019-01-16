#!/bin/sh

set -e
set -u

DIR="$(dirname $0)"

dc() {
	docker-compose pull
	docker-compose -p mapproxy -f ${DIR}/docker-compose.yml $*
}

trap 'dc kill ; dc rm -f' EXIT


# create dirs
sudo mkdir -p /mnt/tiles
sudo chmod 755 /mnt/tiles

# generate geojson
dc build

# start database
dc up -d mapserver
sleep 10

dc run topo-kaart
