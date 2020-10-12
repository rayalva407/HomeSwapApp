class TripsController < ApplicationController
  before_action :require_login

  def index
    if !params[:filter].blank?
      if params[:filter] == "Future Trips"
        @user = current_user
        @trips = Trip.future_trips
      else
        @user = current_user
        @trips = Trip.past_trips
      end
    else
      @user = current_user
      @trips = @user.trips
    end
  end

  def show
    @trip = Trip.find(params[:id])
  end

  def new
    if params[:user_id]
      @user = current_user
      @trip = @user.trips.build
    end
  end

  def create
    @user = current_user
    @trip = Trip.new(trip_params)
    if @trip.save
      redirect_to user_trip_path(@user, @trip)
    else
      render :new
    end
  end

  def destroy
    @trip = Trip.find(params[:id])
    @trip.destroy

    redirect_to user_trips_path(current_user)
  end


  private

  def trip_params
    params.require(:trip).permit(:user_id, :home_id, :start_date, :end_date)
  end

  def require_login
    unless logged_in?
      redirect_to login_route
    end
  end
end