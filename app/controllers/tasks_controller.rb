class TasksController < ApplicationController
  def index
    # GET /task
    @tasks = Task.all

  end

  def show
    # GET /task/:id
    @task = Task.find(params[:id])
  end

  def new
    # GET /task/new
    @task = Task.new
  end

  def create
    # POST /task
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path
  end

  def edit
    # GET /task/:id/edit
    @task = Task.find(params[:id])
  end

  def update
    # PATCH /task/:id
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to tasks_path

  end

  def destroy
    # DELETE /task/:id
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end


  def task_params
    params.require(:task).permit(:title, :details)
  end

end
