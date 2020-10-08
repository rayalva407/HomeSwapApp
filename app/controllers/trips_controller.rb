class TripsController < ApplicationController
  def show
    @trip = Trip.find(params[:id])
  end

  def new
    @trip = Trip.new
  end

  def create
    # binding.pry
    @trip = Trip.new(trip_params)
    if @trip.save
      redirect_to trip_path(@trip)
    else
      render :new
    end
  end


  private

  def trip_params
    params.require(:trip).permit(:user_id, :home_id, :start_date, :end_date)
  end
end