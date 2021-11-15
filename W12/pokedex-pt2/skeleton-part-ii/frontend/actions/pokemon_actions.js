import * as APIUtil from '../util/api_util';

export const RECEIVE_ALL_POKEMON = "RECEIVE_ALL_POKEMON";
export const RECEIVE_POKEMON = "RECEIVE_POKEMON";

export const receiveAllPokemon = (pokemon) => ({
  type: RECEIVE_ALL_POKEMON,
  pokemon
})

export const requestAllPokemon = () => (dispatch) => (
  APIUtil.fetchAllPokemon()
    .then(pokemon => dispatch(receiveAllPokemon(pokemon)))
)
//===============single pokemon

export const receivePokemon = (pokemon) => ({
  type: RECEIVE_POKEMON,
  pokemon
})

export const requestPokemon = (pokemon) => (dispatch) => (
  APIUtil.fetchPokemon(pokemon)
    .then(pokemon => dispatch(receivePokemon(pokemon)))
)
