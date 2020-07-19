class MessagesController < ApplicationController
  # before_action :set_user, only: [:index, :create, :show]
  # before_action :require_user_logged_in

  def index
    # send_ids = current_user.messages.where(receive_user_id: @user.id).pluck(:id)
    # receive_ids = @user.messages.where(receive_user_id: current_user.id).pluck(:id)
    # @messages = Message.where(id: send_ids + receive_ids).order(created_at: :desc)
    # @message = Message.new
  end

  def new

  end
  
  def create
    # @message = current_user.messages.build(message_params)
    # @message.receive_user_id = @user.id
    # if @message.save
    #   flash[:success] = "メッセージを送信しました。"
    #   redirect_back(fallback_location: root_path)
    # else
    #   flash[:denger] = "メッセージ送信に失敗しました。"
    #   redirect_back(fallback_location: root_path)
    # end
  end
  
  def destroy
    # @message = Message.find(params[:id])
    # @message.destroy
    # flash[:success] = "メッセージを削除しました。"
    # redirect_back(fallback_location: root_path)
  end
  
  def show
    # send_ids = current_user.messages.where(receive_user_id: @user.id).pluck(:id)
    # receive_ids = @user.messages.where(receive_user_id: current_user.id).pluck(:id)
    # @messages = Message.where(id: send_ids + receive_ids).order(created_at: :desc)
    # @message = Message.new
  end

  private
  # def set_user
  #   @user = Message.find(params[:id])
  # end

  # def message_params
  #   params.require(:message).permit(:content)
  # end
end
