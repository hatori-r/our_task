class UsersController < ApplicationController
  def index
  end

  def edit
  end

  def update
  end

  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @tasks = user.tasks.order("created_at DESC").page(params[:page]).per(10)
  end

  def destroy
  end
end
