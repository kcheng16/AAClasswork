import React from 'react';
import ReactDOM from 'react-dom';
// import configureStore from './store/store'

document.addEventListener('DOMContentLoaded', () => {
  const rootEl = document.getElementById('root');
  // const store = configureStore();
  // window.store = store;

  ReactDOM.render(<h1>Pokedex</h1>, rootEl);
});