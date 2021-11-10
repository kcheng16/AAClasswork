import React from "react";
import TodoListItem from "./todo_list_item";
const TodoList = (props) => {

  return (
    <div>
      <ul>
        {/* {props.todos.map((todo, idx) => <li key={idx}>Title: {todo.title}</li> )} */}
        {props.todos.map((todo, idx) => <TodoListItem todo={todo} key={idx}/> )}
      </ul>
    </div> 
  );
}

export default TodoList; 