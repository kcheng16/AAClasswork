import { RECEIVE_ALL_POKEMON, RECEIVE_POKEMON } from './../actions/pokemon_actions';

const movesReducer = (state = {}, action) => {
  Object.freeze(state);
  let nextState;

  switch (action.type){
    case RECEIVE_POKEMON:
      nextState = action.pokemon.moves;
      return nextState;
    default:
      return state;
  }
}

export default movesReducer