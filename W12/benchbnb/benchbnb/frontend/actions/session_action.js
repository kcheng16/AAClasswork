import {signup, signin, logout} from '../utils/session/session_api_util'

export const RECEIVE_CURRENT_USER = 'RECEIVE_CURRENT_USER';
export const LOGOUT_CURRENT_USER = 'LOGOUT_CURRENT_USER';
export const RECEIVE_SESSION_ERRORS = 'RECEIVE_SESSION_ERRORS'

const receiveCurrentUser = user => ({
  type: RECEIVE_CURRENT_USER,
  user
})

const logoutCurrentUser = () => ({
  type: LOGOUT_CURRENT_USER
})

const receiveErrors = (errors) => ({
  type: RECEIVE_SESSION_ERRORS,
  errors
})

//Thunk Action Creators===============================================================
//=======================Creating a user
              //formUser = user object coming form the form the user fills out
export const createNewUser = (formUser) => dispatch => (
  signup(formUser).then(user => dispatch(receiveCurrentUser(user)))
    .fail(error => dispatch(receiveErrors(error)))
)

//=======================Logging in
export const login = (formUser) => dispatch => (
  signin(formUser)
    .then(user => dispatch(receiveCurrentUser(user)))
      .catch(error => dispatch(receiveErrors(error)))
)

//=======================Logout a user
export const signout = () => dispatch => (
  logout().then( () => dispatch(logoutCurrentUser()) )
    .catch(error => dispatch(receiveErrors(error)))

)