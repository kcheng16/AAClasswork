import { connect } from "react-redux";
import TodoList from "./todo_list";
import allTodos from "../../reducers/selectors";

const mapStateToProps = (state) => {
    return {
        todos: allTodos(state)
    } 
} 

const mapDispatchToProps = (dispatch) => {
    return {
        receiveTodo: todo => dispatch(receiveTodo(todo))
    }
}

const TodoListContainer = connect(
    mapStateToProps,
    mapDispatchToProps
)(TodoList);

export default TodoListContainer;

