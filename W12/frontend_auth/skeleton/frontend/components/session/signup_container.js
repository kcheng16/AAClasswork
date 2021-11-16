import { connect } from 'react-redux';
import { createNewUser, login, logout } from '../../actions/session';
import Signup from './signup'

const mDTP = (dispatch) => ({
  createNewUser: formUser => dispatch(createNewUser(formUser)),
  // login: formUser => dispatch(login(formUser)),
  // logout: () => dispatch(logout())
})

export default connect(null, mDTP)(Signup)