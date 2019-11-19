class TasksController < ApplicationController
  before_action :find_task, only: %i[show edit update destroy]

  def index
    @tasks = Task.all
  end

  def show
    @completed = @task.completed ? '' : 'not'
  end

  def new
    @task = Task.new
  end

  def create
    new_task = Task.new(task_params)
    if new_task.save
      redirect_to tasks_path(new_task)
    else
      render :new
    end
  end

  def edit
  end

  def update
    redirect_to tasks_path if @task.update(task_params)
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private

  def find_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
