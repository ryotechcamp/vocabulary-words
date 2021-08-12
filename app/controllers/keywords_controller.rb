class KeywordsController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @keyword = Keyword.new
  end

  def create
  end
end
