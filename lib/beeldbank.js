import axios from 'axios'

async function fetchJson(url) {
  const response = await axios.get(url)
  return response.data
}

export async function getImageUrl(query) {
  const url = `https://webservices.picturae.com/mediabank/media?apiKey=eb37e65a-eb47-11e9-b95c-60f81db16c0e&facetFields%5B%5D=search_s_sk_documenttype&facetFields%5B%5D=search_s_dc_provenance&facetFields%5B%5D=search_s_sk_vervaardiger&facetFields%5B%5D=search_s_geografische_aanduiding_sk_geografische_naam&facetFields%5B%5D=search_s_geografische_aanduiding_sk_geografische_nummers_from_to&facetFields%5B%5D=search_s_sk_gebouw&facetFields%5B%5D=search_s_sk_geportretteerde&facetFields%5B%5D=search_s_quality&facetFields%5B%5D=search_s_sr_download_of_print&facetFields%5B%5D=search_s_gegeorefereerd&facetFields%5B%5D=search_s_geohash_level_1&facetFields%5B%5D=search_i_sk_date&lang=nl&page=1&q=${query}&rows=25`
  const results = await fetchJson(url)

  const imageUrl = results.media[0].asset[0].download
  return imageUrl
}
