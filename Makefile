.PHONY: layers

layers:
	@./make-layers/publieke-werken.js -y 1909 \
		> ./layers/publieke-werken-1909.ndjson

	@./make-layers/publieke-werken.js -y 1943 \
		> ./layers/publieke-werken-1943.ndjson

	@./make-layers/publieke-werken.js -y 1985 \
		> ./layers/publieke-werken-1985.ndjson

	@./make-layers/publieke-werken-1943-2500.js \
		> ./layers/publieke-werken-1943-2500.ndjson

gdal-scripts:
	@./layer-to-gdal-script.js -i publieke-werken-1909 -o ./output -p 3857 \
		< ./layers/publieke-werken-1909.ndjson \
		> ./gdal-scripts/publieke-werken-1909-3857.sh

	@./layer-to-gdal-script.js -i publieke-werken-1943 -o ./output -p 3857 \
		< ./layers/publieke-werken-1943.ndjson \
		> ./gdal-scripts/publieke-werken-1943-3857.sh

	@./layer-to-gdal-script.js -i publieke-werken-1985 -o ./output -p 3857 \
		< ./layers/publieke-werken-1985.ndjson \
		> ./gdal-scripts/publieke-werken-1985-3857.sh

	@./layer-to-gdal-script.js -i publieke-werken-1943-2500 -o ./output -p 3857 \
		< ./layers/publieke-werken-1943-2500.ndjson \
		> ./gdal-scripts/publieke-werken-1943-2500-3857.sh

	@chmod +x ./gdal-scripts/*.sh

gdal:
	@./gdal-scripts/publieke-werken-1909-3857.sh
	@./gdal-scripts/publieke-werken-1943-3857.sh
	@./gdal-scripts/publieke-werken-1985-3857.sh
	@./gdal-scripts/publieke-werken-1943-2500-3857.sh

min_zoom := 9
max_zoom := 19

tiles:
	@gdal2tiles.py -z $(min_zoom)-$(max_zoom) \
		./output/publieke-werken-1909/3857/index.vrt ./output/publieke-werken-1909/3857/tiles

	@gdal2tiles.py -z $(min_zoom)-$(max_zoom) \
		./output/publieke-werken-1943/3857/index.vrt ./output/publieke-werken-1943/3857/tiles

	@gdal2tiles.py -z $(min_zoom)-$(max_zoom) \
		./output/publieke-werken-1985/3857/index.vrt ./output/publieke-werken-1985/3857/tiles

	@gdal2tiles.py -z $(min_zoom)-$(max_zoom) \
		./output/publieke-werken-1943-2500/3857/index.vrt ./output/publieke-werken-1943-2500/3857/tiles
