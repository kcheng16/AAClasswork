import React from "react";
import ReactDOM from "react-dom";
// import {signup, signin, logout} from './utils/session/session_api_util'
// import createStore from './store/store'
import {createNewUser, login, signout} from './actions/session_action'
import configureStore from './store/store'

document.addEventListener("DOMContentLoaded", () => {
  const root = document.getElementById("root");

  // let preloadedState = undefined;
  // if (window.currentUser) {
  //   preloadedState = {
  //     session: {
  //       currentUser: window.currentUser
  //     }
  //   };
  // }

  // const store = createStore({preloadedState});
  const store = configureStore()
  
  //testing====================================
  window.store = store
  window.getState = store.getState;
  window.dispatch = store.dispatch

  window.createNewUser = createNewUser;
  window.login = login;
  window.signout = signout;


  ReactDOM.render(<h1>Welcome to BenchBnB</h1>, root);
});