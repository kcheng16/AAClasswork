//signing up a user============
export const postUser = user => ( 
  $.ajax({
    method: 'POST',
    url: '/api/users',
    data: {user}
  })
)
//signing in a user====================
export const postSession = user => (
  $.ajax({
    method: 'POST',
    url: '/api/session',
    data: {user}
  })
)

//logging out a user===============
export const deleteSession = () => (
  $.ajax({
    method: 'DELETE',
    url: '/api/session',
  })
)