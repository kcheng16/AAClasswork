import { RECEIVE_SESSION_ERRORS, RECEIVE_CURRENT_USER } from "../actions/session_action";

const sessionErrorsReducer = (state={}, action) => {
  Object.freeze(state)
  let nextState = Object.assign({}, state)

  switch (action.type){
    case RECEIVE_SESSION_ERRORS:
      nextState = action.errors.responseJSON
      return nextState

    case RECEIVE_CURRENT_USER:
      nextState = []
      return nextState

    default:
      return state
  }
}

export default sessionErrorsReducer