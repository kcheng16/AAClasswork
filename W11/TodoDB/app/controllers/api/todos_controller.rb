class Api::TodosController < ApplicationController

    def index
        todo = Todo.all 
        render json: todo 
    end

    def show
        render json: Todo.find(params[:id])
    end

    def create
        @todo = Todo.new(todo_params)
        if @todo.save
            render json: @todo
        else
            render json: @todo.errors.full_messages, status: 422
        end
    end

    def update
        @todo = Todo.find_by(id: params[:id])
        if @todo.update(todo_params)
            render json: @todo
        else 
            render json: @todo.errors.full_messages, status: 422
        end 
    end

    def destroy
         @todo = Todo.find_by(id: params[:id])
         if @todo.delete 
            render json: @todo
         else 
            render json: @todo.errors.full_messages, status: 422
         end 
    end

    def todo_params
        params.require(:todo).permit(:title, :body, :done)
    end

end
