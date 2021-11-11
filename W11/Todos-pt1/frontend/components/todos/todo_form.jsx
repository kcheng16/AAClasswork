import React from "react";
import uniqueId from "../../util/todoUtil"

class TodoForm extends React.Component {
    constructor(props){
        super(props)
        this.state = {
            title: '',
            body: '',
            done: '',
            id: uniqueId()
        }

        //binding:
        this.handleSubmit = this.handleSubmit.bind(this); 
        this.updateTitle = this.updateTitle.bind(this); 
        this.updateBody = this.updateBody.bind(this); 
        this.updateDone = this.updateDone.bind(this); 
    }

    handleSubmit(e){
        e.preventDefault()
        let todo = this.state;
        this.props.receiveTodo(todo); 

        this.setState({
            title: '',
            body: '',
            done: '',
            id: uniqueId()
        })
    }

    updateTitle(e){
        this.setState({
            title: e.target.value
        })
    }

    updateBody(e){
        this.setState({
            body: e.target.value
        })
    }

    updateDone(e){
        this.setState({
            done: e.target.value
        })
    }

    //controlled inputs to keep track of form data --> local state
    render() {
        return (
            <div>
                <h1>Add a new Todo:</h1>
                <form onSubmit={this.handleSubmit} >
                    <label>Title:
                        <input type="text" onChange={this.updateTitle} value={this.state.title} />
                    </label>

                    <label>Body:
                        <input type="text" onChange={this.updateBody} value={this.state.body} />
                    </label>

                    <label>Done:
                        <input type="text" onChange={this.updateDone} value={this.state.done} />
                    </label>
                    
                    <input type="submit" value="Submit" />
                </form>
            </div>
        )
    }
}

export default TodoForm;