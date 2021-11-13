export const fetchAllPokemon = () => (
  $.ajax({
    method: 'GET',
    url: '/api/pokemons'
  })
)
// nested in responseJSON


// * Export const getTeas = () => (
//     * $.ajax({
//       * Method: ‘GET’,
//       * Url: ‘/ api / teas’
//     * })
// * );