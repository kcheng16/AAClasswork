//allow users to see certain components depending if they're logged in or not (logged in, cant see sign up)

import React from 'react';
import {connect} from 'react-redux'
import {Redirect, Route, withRouter} from 'react-router-dom'

const mSTP = (state) => (
  {
    loggedIn: Boolean(state.session.currentUser) //true or false whether or not we have a current user
  }
)

//auth routes(login/signup): redirect users if logged in, click sign-in, take user back to home page

//<AuthRoute path="" component={} />
const Auth = ({loggedIn, path, component: Component}) => ( //checks if logged-in before rendering what user should be seeing depending on sign-in status
  <Route 
    path = {path} //path: passed down within Auth?? ; able to pass in our 'target-component' as 'Component', but call it as 'component'
    render = {props => ( loggedIn ? <Redirect to="/" /> : <Component {...props} /> )} //spread all props(not logged in) of and send down to Component
  />
)   

export const AuthRoute = withRouter(connect(mSTP)(Auth))

//==================================================================================================================
//================to prevent 'chirps page' from loading when logged out

const Protected = ({loggedIn, path, component: Component}) => (
  <Route
    path = {path}
    render = {props => ( loggedIn ? <Component {...props}/> : <Redirect to="/signup"/> )}
  />
)

export const ProtectedRoute = withRouter(connect(mSTP)(Protected))
