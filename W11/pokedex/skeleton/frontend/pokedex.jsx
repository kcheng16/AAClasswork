import React from 'react';
import ReactDOM from 'react-dom';
import { fetchAllPokemon } from './util/api_util'
import { RECEIVE_ALL_POKEMON, receiveAllPokemon } from './actions/pokemon_actions'
import configureStore from './store/store'

window.fetchAllPokemon = fetchAllPokemon;
window.receiveAllPokemon = receiveAllPokemon;

document.addEventListener('DOMContentLoaded', () => {
  const rootEl = document.getElementById('root');
  const store = configureStore();
  window.store = store;
  window.getState = store.getState;

  ReactDOM.render(<h1>Pokedex</h1>, rootEl);
});