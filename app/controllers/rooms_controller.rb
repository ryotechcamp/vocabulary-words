class RoomsController < ApplicationController
  before_action :authenticate_user!

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
    @room = Room.find(params[:id])
    @message = Message.new
    @messages = @room.messages.includes(:user)
    redirect_to root_path unless @room.user_id == current_user.id
  end

  def destroy
    room = Room.find(params[:id])
    room.destroy
    redirect_to root_path
  end

  private

  def room_params
    params.require(:room).permit(:name).merge(user_id: current_user.id)
  end

end
