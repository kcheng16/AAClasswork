import { RECEIVE_ALL_POKEMON, RECEIVE_POKEMON } from './../actions/pokemon_actions';


const pokemonReducer = (state = {}, action) => {
  Object.freeze(state);
  let nextState;

  switch (action.type){
  case RECEIVE_ALL_POKEMON:
    return Object.assign({}, action.pokemon, state);

  case RECEIVE_POKEMON:
    nextState = Object.assign({}, state)
    nextState[action.pokemon.id] = action.pokemon //1: {name: bulbasaur ...}
    return nextState

  default:
    return state;
  }
}
  
export default pokemonReducer;
