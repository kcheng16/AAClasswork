import React from 'react';

const TodoListItem = (props) => <li key={props.key}>{props.todo.title}</li> 

export default TodoListItem