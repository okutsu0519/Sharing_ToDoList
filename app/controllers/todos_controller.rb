class TodosController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @todos = Todo.all
  end

  def show
    @todo = Todo.find(params[:id])
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    @todo.user_id = current_user.id
    if @todo.save
      redirect_to todo_path(@todo), notice: 'ToDo追加されました。'
    else
      render :new
    end
  end

  def edit
    @todo = Todo.find(params[:id])
    if @todo.user != current_user
      redirect_to todos_path, alert: 'まずは自分のToDoに集中しましょう！'
    end
  end

  def update
    @todo = Todo.find(params[:id])
    if @todo.update(todo_params)
      redirect_to todo_path(@todo), notice: '更新に成功しました。'
    else
      render :edit
    end
  end

  def destroy
    todo = Todo.find(params[:id])
    todo.destroy
    redirect_to todos_path
  end


  private
  def todo_params
    params.require(:todo).permit(:title, :body, :comment)
  end
end
