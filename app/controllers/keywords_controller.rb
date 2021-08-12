class KeywordsController < ApplicationController
  def index
    @users = User.all
  end
end
