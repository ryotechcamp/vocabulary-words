class KeywordsController < ApplicationController
  def index
    @users = User.all
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

  private
  def keyword_params
    params.require(:keyword).permit(:word, :genre_id, :instruction).merge(user_id: current_user.id)
  end
end
