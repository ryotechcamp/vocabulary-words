class MessagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_message, only: :create
  before_action :move_to_index

  def create
    @message = @room.messages.new(message_params)
    if @message.save
      redirect_to room_path(@room)
    end
  end

  private
  def message_params
    params.require(:message).permit(:content, :image).merge(user_id: current_user.id, room_id: params[:room_id])
  end

  def set_message
    @room = Room.find(params[:room_id])
  end

  def move_to_index
    redirect_to root_path unless @room.user_id == current_user.id
  end
end
