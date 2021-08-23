class MessagesController < ApplicationController

  def create
    @room = Room.find(params[:room_id])
    Message.create(contents: params[:content])
    redirect_to room_path(@room)
  end
end
