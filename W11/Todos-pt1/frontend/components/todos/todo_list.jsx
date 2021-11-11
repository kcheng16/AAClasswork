import React from "react";
import TodoListItem from "./todo_list_item";
import TodoForm from "./todo_form";

const TodoList = (props) => {

  return (
    <div>
      <ul>
        {props.todos.map((todo, idx) => (
          <TodoListItem receiveTodo={props.receiveTodo} removeTodo={props.removeTodo} todo={todo} key={idx}/>)
        )}
      </ul>
      <TodoForm receiveTodo={props.receiveTodo} />
    </div> 
  );
}

export default TodoList; 