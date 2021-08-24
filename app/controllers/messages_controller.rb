class MessagesController < ApplicationController
  before_action :authenticate_user!

  def create
    @room = Room.find(params[:room_id])
    @message = @room.messages.new(message_params)
    if @message.save
      redirect_to room_path(@room)
    end
  end

  private
  def message_params
    params.require(:message).permit(:content, :image).merge(user_id: current_user.id, room_id: params[:room_id])
  end

end
