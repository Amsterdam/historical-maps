export function getGeoMask(feature) {
  return {
    type: 'Polygon',
    coordinates: [
      [...feature.geometry.coordinates, feature.geometry.coordinates[0]]
    ]
  }
}

export function getGcps(feature) {
  return feature.properties.gcps.map((gcp, index) => ({
    image: gcp,
    world: feature.geometry.coordinates[index]
  }))
}
