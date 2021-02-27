class TasksController < ApplicationController
 
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    Task.create(task_params)
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    task = Task.find(params[:id])
    task.update(task_params)
  end

  def destory
    task = Task.find(params[:id])
    task.destory
  end

  private

  def task_params
    params.require(:task).permit(:tittle, :contents)
  end
end
