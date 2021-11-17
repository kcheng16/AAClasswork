import React from "react";
import ReactDOM from "react-dom";
import postUser from './util/session'
import createStore from './store/store'


document.addEventListener("DOMContentLoaded", () => {
  const root = document.getElementById("root");

  let preloadedState = undefined;
  if (window.currentUser) {
    preloadedState = {
      session: {
        currentUser: window.currentUser
      }
    };
  }
  const store = createStore({preloadedState});
  //testing====================================
  window.store = store
  window.postUser = postUser

  ReactDOM.render(<h1>Welcome to BenchBnB</h1>, root);
});