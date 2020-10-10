class TripsController < ApplicationController
  def index
    @user = User.find_by(id: params[:user_id])
    @trips = @user.trips
  end

  def show
    @trip = Trip.find(params[:id])
  end

  def new
    if params[:user_id]
      @user = User.find_by(id: params[:user_id])
      @trip = @user.trips.build
    end
  end

  def create
    @user = User.find_by(id: params[:trip][:user_id])
    @trip = Trip.new(trip_params)
    if @trip.save
      redirect_to user_trip_path(@user, @trip)
    else
      render :new
    end
  end


  private

  def trip_params
    params.require(:trip).permit(:user_id, :home_id, :start_date, :end_date)
  end
end