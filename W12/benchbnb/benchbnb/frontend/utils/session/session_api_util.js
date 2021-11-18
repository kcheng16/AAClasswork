//signing up a user============
export const signup = user => ( 
  $.ajax({
    method: 'POST',
    url: '/api/users',
    data: {user}
  })
)
//signing in a user====================
export const signin = user => (
  $.ajax({
    method: 'POST',
    url: '/api/session',
    data: {user}
  })
)

//logging out a user===============
export const logout = () => (
  $.ajax({
    method: 'DELETE',
    url: '/api/session',
  })
)