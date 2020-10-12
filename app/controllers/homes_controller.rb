class HomesController < ApplicationController

  def show
    @user = current_user
    @home = Home.find(params[:id])
  end
  
  def new
    @home = Home.new
  end

  def create
    @home = Home.new(home_params)
    if @home.save
      redirect_to home_path(@home)
    end
  end

  private
  def home_params
    params.require(:home).permit(:address, :user_id)
  end

end
