import React from 'react';
import ReactDOM from 'react-dom';
import Content from './content';
import configureStore from './store/store';

document.addEventListener('DOMContentLoaded', () => {
  let root = document.getElementById('root')
  let store = configureStore(); 
  window.store = store;
  ReactDOM.render(<Content />, root)

})

