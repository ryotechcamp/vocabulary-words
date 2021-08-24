class RoomsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_room, only: [:new, :create, :show]
  before_action :move_to_index

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to room_path(@room.id)
    else
      render :new
    end
  end

  def show
    @message = Message.new
    room = Room.find(@room.id)
    @messages = room.messages
  end

  private

  def room_params
    params.require(:room).permit(:name).merge(user_id: current_user.id)
  end

  def set_room
    @room = Room.find(params[:id])
  end

  def move_to_index
    redirect_to root_path unless @room.user_id == current_user.id
  end

end
