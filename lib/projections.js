function maskFromGCPs (featureWithGCPs) {
  return {
    type: 'Polygon',
    coordinates: [[
      ...featureWithGCPs.geometry.coordinates,
      featureWithGCPs.geometry.coordinates[0]
    ]]
  }
}

module.exports = {
  maskFromGCPs
}
