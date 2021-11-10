
const allTodos = (state) =>{
  let allTodos = Object.values(state.todos);
  return allTodos;
}

export default allTodos