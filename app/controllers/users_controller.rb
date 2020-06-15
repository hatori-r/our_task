class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @tasks = user.tasks.order("created_at DESC").page(params[:page]).per(10)
  end
end
