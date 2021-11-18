import {requestAllPokemon} from './../../actions/pokemon_actions';
import {selectAllPokemon} from './../../reducers/selectors';


export const mapStateToProps = state => ({
  pokemon: selectAllPokemon(state)
})

export const mapDispatchToProps = dispatch => ({
  requestAllPokemon: () => dispatch(requestAllPokemon())
})

