class TasksController < ApplicationController
  def index
    @tasks = Task.order("created_at DESC").all
    @status = ['todo', 'doing', 'done']
  end
  
  def new
    task = Task.new
    task.task = params[:task]
    task.state = params[:state]
    task.limit_date = params[:limit_date]
    task.save
    redirect_to '/tasks', notice: 'タスクを作成しました。'
  end

  def create
    task = Task.new
    task.task = params[:task]
    task.state = params[:state]
    task.limit_date = params[:limit_date]
    task.save
    redirect_to '/tasks', notice: 'タスクを作成しました。'
  end

  def edit
  end

  def update
    task = Task.find(params[:id])
    task.update(task_params)

    task.task = params[:task]
    task.state = params[:state]
    task.limit_date = params[:limit_date]
    task.save

    redirect_to '/tasks', notice: 'タスクを更新しました。'
  end

  def destroy
    task = Task.find(params[:id])
    task.destroy
    redirect_to '/tasks', notice: 'タスクを削除しました。'
  end

  def show
    id = params[:id]
    @task = Task.find(id)
    @status = ['todo', 'doing', 'done']
  end

end
