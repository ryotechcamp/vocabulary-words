class KeywordsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_keyword, only: [:edit, :update]
  before_action :move_to_index, only: [:edit, :update]

  def index
    @users = User.all
    user = User.find(current_user.id)
    @rooms = user.rooms
  end

  def new
    @keyword = Keyword.new
  end

  def create
    @keyword = Keyword.new(keyword_params)
      if @keyword.save
        redirect_to user_path(current_user.id)
      else
        render :new
       end
  end

  def edit
    
  end

  def update
    if @keyword.update(keyword_params)
      redirect_to user_path(current_user.id)
    else
      render :edit
    end
  end

  def destroy
    keyword = Keyword.find(params[:id])
    keyword.destroy
    redirect_to user_path(current_user.id)
  end

  private
  def keyword_params
    params.require(:keyword).permit(:word, :genre_id, :instruction, :audio).merge(user_id: current_user.id)
  end

  def set_keyword
    @keyword = Keyword.find(params[:id])
  end

  def move_to_index
    redirect_to root_path unless @keyword.user_id == current_user.id
  end
end
