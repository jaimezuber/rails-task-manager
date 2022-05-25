class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    Task.create(restaurant_params)
    redirect_to tasks_path
  end

  private

  def restaurant_params
    params.require(:task).permit(:title, :details)
  end

end
