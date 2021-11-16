import { RECEIVE_CURRENT_USER, LOGOUT_CURRENT_USER } from "../actions/session";

//==object of 'current user'
const _nullSession = {
  currentUser: null,
}

export default (state = _nullSession, action) => {
  Object.freeze(state);

  switch (action.type) {
    case RECEIVE_CURRENT_USER:
      return {currentUser: action.user}  //Object.assign({}, {currentUser: action.user})
    
    case LOGOUT_CURRENT_USER:
      return _nullSession

    default:
      return state;

  }
}