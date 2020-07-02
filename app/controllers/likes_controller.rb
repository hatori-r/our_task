class LikesController < ApplicationController
  def create
    @like = current_user.likes.new(task_id: params[:task_id])
    if @like.save
      flash[:success] = "いいねをしました。応援してあげましょう！"
      redirect_to "/tasks/#{@tasks.id}"
    end
  end
  
  def destroy
    @like = Like.find_by(user_id: current_user.id, task_id: params[:task_id])
    if @task.destroy
      flash[:success] = "いいねを取り消しました"
      redirect_to "/tasks/#{@tasks.id}"
    end
  end
end
