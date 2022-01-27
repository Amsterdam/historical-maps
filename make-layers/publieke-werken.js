#!/usr/bin/env node

import H from 'highland'
import proj4 from 'proj4'
import { parse } from 'csv-parse/sync'
import yargs from 'yargs'
import { hideBin } from 'yargs/helpers'

import { getImageUrl } from '../lib/beeldbank.js'
import { sourceDataFilename, readFile, readJson } from '../lib/io.js'

const argv = yargs(hideBin(process.argv))
	.option('year', {
		alias: 'y',
		describe: 'Map series year',
		type: 'number',
		choices: [1909, 1943, 1985],
		demandOption: true
	})
	.argv

const EPSG_28992 = `+proj=sterea +lat_0=52.15616055555555 +lon_0=5.38763888888889 +k=0.9999079
  +x_0=155000 +y_0=463000 +ellps=bessel +towgs84=565.417,50.3319,465.552,-0.398957,0.343988,-1.8774,4.0725
  +units=m +no_defs`
const project = proj4(EPSG_28992, 'WGS84')

const sheetDimensions = [950, 750] // in meters

function after1940 ([x, y]) {
	return [
  	x + 155000,
  	y + 463000
	]
}

function before1940 ([x, y]) {
  // Transformation of map sheet coordinates of maps before 1940:
	// - Rotation 2 degrees,
	// - Point [0, 0] = https://nl.wikipedia.org/wiki/Prinsenhof_(Amsterdam)

  x += 33552
  y -= 24000

  const degrees = -2
  const radians = (degrees / 180) * Math.PI

  return [
    x * Math.cos(radians) - y * Math.sin(radians) + 121528,
    x * Math.sin(radians) + y * Math.cos(radians) + 487081
  ]
}

function cornerToRdBbox (corner) {
  const corner2 = [
    corner[0] + sheetDimensions[0],
    corner[1] + sheetDimensions[1]
  ]

  const bbox = [
    corner,
    [corner2[0], corner[1]],
    corner2,
    [corner[0], corner2[1]],
    corner
  ]

  return argv.year > 1940 ? bbox.map(after1940) : bbox.map(before1940)
}

function rdBboxToGeoMask (bbox) {
  return {
    type: 'Polygon',
    coordinates: [
      bbox.map(project.forward)
    ]
  }
}

const sheets = readJson(sourceDataFilename(`publieke-werken-${argv.year}.json`))
const geoMasks = readJson(sourceDataFilename('publieke-werken.geojson'))
const allMetadata = parse(readFile(sourceDataFilename('publieke-werken.csv')), {
  columns: true,
  skip_empty_lines: true
})

const cornersBySheetNumber = geoMasks.features
  .reduce((cornersBySheetNumber, feature) => ({
    ...cornersBySheetNumber,
    [feature.properties.BLAD]: [
      feature.properties.MINX2,
      feature.properties.MINY2
    ]
  }), {})

const metadataBySheetNumber = allMetadata
	.reduce((metadataBySheetNumber, row) => ({
		...metadataBySheetNumber,
    [row.blad]: {
			...metadataBySheetNumber[row.blad],
			[row['bestand-nr']]: row
		}
  }), {})

async function createMap (sheet) {
	const match = /(?<sheetNumber>\w+?)_(?<fileNumber>\d+?)_/
		.exec(sheet.filename)

	const { sheetNumber, fileNumber } = match.groups

	if (cornersBySheetNumber[sheetNumber]) {
		const corner = cornersBySheetNumber[sheetNumber]

		const rdBbox = cornerToRdBbox(corner)
		const geoMask = rdBboxToGeoMask(rdBbox)

		const metadata = metadataBySheetNumber[sheetNumber][parseInt(fileNumber)]

		if (!metadata) {
			throw new Error(`No metadata for ${sheet.filename}`)
		}

		const imageId = metadata.bestand
		const imageUrl = await getImageUrl(imageId)

		const mask = [
			[sheet.x1, sheet.scanHeight - sheet.y1],
			[sheet.x2, sheet.scanHeight - sheet.y2],
			[sheet.x3, sheet.scanHeight - sheet.y3],
			[sheet.x4, sheet.scanHeight - sheet.y4]
		]

		const gcps = mask.map((image, index) => ({
			image,
			world: geoMask.coordinates[0][index]
		}))

		return {
			id: imageId,
			imageUrl,
			mask,
			geoMask,
			gcps
		}
	} else {
		throw new Error(`No geoMask found for for ${sheetNumber}`)
	}
}

H(sheets)
	.flatMap((feature) => H(createMap(feature)))
	.map(JSON.stringify)
	.intersperse('\n')
	.pipe(process.stdout)

