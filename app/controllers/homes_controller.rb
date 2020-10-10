class HomesController < ApplicationController

  def show
    @home = Home.find(params[:id])
  end
  
  def new
    @home = Home.new
  end

  def create

  end

  private
  def home_params
    params.require(:home).permit(:address, :user_id)
  end
end
