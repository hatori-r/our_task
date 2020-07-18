class RoomsController < ApplicationController
  before_action :set_room, only: :create
  before_action :authenticate_user!

  def create
    @room = Room.create
    @entry1 = Entry.create(room_id: @room.id, user_id: current_user.id)

    recirect_to "/rooms/#{@room.id}"
  end

  def show
    @room = Room.find(params[:id])
    if Entry.where(user_id: current_user.id, room_is: @room.id).present?
      @messages = @room.messages
      @message = Message.new
      @entries = @room.entries
    else
      redirent_back(fallback_location: root_path)
    end
  end

  private
  def room_params
    @entry2 = Entry.create(params.require(:entry)).permit(:user_id, :room_id).merge(room_id: @room.id)
  end
end
