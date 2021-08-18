class TestsController < ApplicationController

  def create
    @test = Test.new(user_id: current_user.id, keyword_id: params[:keyword_id])
    if @test.save
      redirect_to user_path(current_user.id)
    end
  end

  def destroy
    test = Test.find_by(user_id: current_user.id, keyword_id: params[:keyword_id])
    test.destroy
    redirect_to user_path(current_user.id)
  end


  
  
end
