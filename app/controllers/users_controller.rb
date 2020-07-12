class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  def index
  end

  def new    
  end

  def edit
    unless @user == current_user
      redirect_to user_path(@user)
    end
  end
  
  def update
    if current_user.update(user_params) && @user.save
      flash[:new_task] = "プロフィールを更新しました。"
      redirect_to user_path(current_user)
    else
      flash.now[:danger] = "プロフィールの更新に失敗しました。"
      redirect_to edit_user_path(current_user)
    end
  end
  
  def show
    @nickname = @user.nickname
    @profile = @user.profile
    @twitter = @user.twitter
    @facebook = @user.facebook
    @instagram = @user.instagram
    @site = @user.site
    @image = @user.image
    @tasks = @user.tasks.order("created_at DESC").page(params[:page]).per(10)
  end
  
  def destroy
  end
  
  private
  
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.fetch(:user, {}).permit(:nickname)
    params.require(:user).permit(:email, :password, :password_confirmation, :nickname, :profile, :site, :twitter, :facebook, :instagram, :image)
  end
end
