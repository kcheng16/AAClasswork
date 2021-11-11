import React from 'react';



const TodoListItem = (props) => {
  const toggleTodo = () => {
    let toggled = Object.assign({}, props.todo)
    toggled.done === 'true' ? toggled.done = 'false' : toggled.done = 'true' 
    return toggled
    }
  return (
    <li>
      {props.todo.title}
      <br />
      {props.todo.body}
      <br />
      {props.todo.done}
      <br />
      <br />
      <button onClick={() => props.removeTodo(props.todo)}>Remove Todo</button>
      <button onClick={() => props.receiveTodo(toggleTodo())}>Change Done Status</button>
    </li>
)}

export default TodoListItem