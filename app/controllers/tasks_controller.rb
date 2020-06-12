class TasksController < ApplicationController
  def index
    @tasks = Task.order("created_at DESC").all
  end
  
  def new
    @task = Task.new
  end

  def create
    # Task.create(task_params)
    @task = Task.new(task_params)
    if @task.save
      flash[:success] = "タスクをシェアしました。達成に向けて頑張りましょう！"
      redirect_to '/'
    else
      flash.now[:danger] = "送信に失敗しました。もう一度試してみてください。"
      render 'tasks/new'
    end
    # redirect_to '/', flash: {notice: 'タスクをシェアしました。達成に向けて頑張りましょう！'}
  end

  def edit
  end

  def update
    # task = Task.find(params[:id])
    # task.update(task_params)

    # task.task = params[:task]
    # task.state = params[:state]
    # task.limit_date = params[:limit_date]
    # task.save

    # redirect_to '/tasks', notice: 'タスクを更新しました。'
  end

  def destroy
    # task = Task.find(params[:id])
    # task.destroy
    # redirect_to '/tasks', notice: 'タスクを削除しました。'
  end

  def show
    # id = params[:id]
    # @task = Task.find(id)
    # @status = ['todo', 'doing', 'done']
  end

  private
  def task_params
    params.require(:task).permit(:state, :name, :task, :limit_date)
  end

end
