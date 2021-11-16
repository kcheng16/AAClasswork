import { RECEIVE_ALL_POKEMON, RECEIVE_POKEMON } from './../actions/pokemon_actions';

const itemsReducer = (state = {}, action) => {
  Object.freeze(state);
  let nextState;

  switch (action.type){
    case RECEIVE_POKEMON:
      debugger
      nextState = action.pokemon.items;
      return nextState;
    default:
      return state;
  }
}

export default itemsReducer