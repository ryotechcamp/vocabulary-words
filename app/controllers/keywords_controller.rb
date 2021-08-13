class KeywordsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  def index
    @users = User.all
  end

  def new
    @keyword = Keyword.new
  end

  def create
    @keyword = Keyword.new(keyword_params)
      if @keyword.save
        redirect_to root_path
      else
        render :new
       end
  end

  def show
  end

  private
  def keyword_params
    params.require(:keyword).permit(:word, :genre_id, :instruction).merge(user_id: current_user.id)
  end
end
