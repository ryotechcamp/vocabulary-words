class UsersController < ApplicationController

  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @keywords = user.keywords
  end
end
