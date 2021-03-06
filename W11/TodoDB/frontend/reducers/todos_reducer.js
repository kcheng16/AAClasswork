import { RECEIVE_TODOS, REMOVE_TODO } from "../actions/todo_actions";
import { RECEIVE_TODO } from "../actions/todo_actions";

const todosReducer = (state = {}, action) => {
    let nextState;
    switch (action.type) {
        case RECEIVE_TODOS:
            nextState = {}
            for (let i = 0; i < action.todos.length; i++) {
                nextState[i] = action.todos[i];
            }
            return nextState

        case RECEIVE_TODO:
            nextState = Object.assign({}, state);
            nextState[action.todo.id] = action.todo;
            return nextState;
        
        case REMOVE_TODO:
          nextState = Object.assign({}, state);
          delete nextState[action.todo.id];
          return nextState; 

        default:
            return state;
    }
};

export default todosReducer;