import { RECEIVE_ALL_POKEMON } from "../actions/pokemon_actions";

const pokemonReducer = (previousState ={}, action) => {
  Object.freeze(previousState)

  switch (action.type) {
    case RECEIVE_ALL_POKEMON: 
      return action.pokemons; 
    
    default: 
      return previousState
    }
}

export default pokemonReducer;