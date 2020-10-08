class HomesController < ApplicationController

  def show
    @home = Home.find(params[:id])
  end
  
  def new
    @home = Home.new
  end

  def create
    @home = Home.new(home_params)
    if @home.save
      redirect_to home_path(@home)
    else
      render :new
    end
  end

  private
  def home_params
    params.require(:home).permit(:address)
  end
end
