class RoomsController < ApplicationController

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
    @message = Message.order(id: "DESC")
  end

  private

  def room_params
    params.require(:room).permit(:name).merge(user_id: current_user.id)
  end

end
