class TasksController < ApplicationController
  before_action :set_task, only: [:show, :update, :destroy]

  # Get all tasks
  def index
    @tasks = Task.all
    render json: @tasks
  end


  # Get /tasks/:id
  def show
    render json: @task
  end

  # Post a new task
  def create
    @task = Task.create(title: params[:title], todo: params[:todo], done: params[:done] )
    render json: @task
  end


  # Put /tasks/:id
  def update
    @task.update(title: params[:title], todo: params[:todo], done: params[:done] )
    render json: @task
  end

  # Route delete doesn't work 
  def delete
    @task.destroy
    render json: Task.all
  end

  def set_task
    @task =Task.find(params[:id])
  end


end
