class TripsController < ApplicationController
  before_action :require_login

  def index
    if params[:home_id]
      if !params[:filter].blank?
        if params[:filter] == "Future Trips"
          @user = current_user
          @home = Home.find(params[:home_id])
          @trips = @user.homes[@home.id].trips.future_trips
        elsif params[:filter] == "Past Trips"
          @user = current_user
          @home = Home.find(params[:home_id])
          @trips = @user.homes[@home.id].trips.past_trips
        elsif params[:filter] == "Current Trips"
          @user = current_user
          @home = Home.find(params[:home_id])
          @trips = @user.homes[@home.id].trips.current_trips
        end
      else
        @user = current_user
        @home = Home.find(params[:home_id])
        @trips = @user.homes[@home.id].trips
      end
    end

    if !params[:home_id]
      if !params[:filter].blank?
        if params[:filter] == "Future Trips"
          @user = current_user
          @trips = @user.trips.future_trips
        elsif params[:filter] == "Past Trips"
          @user = current_user
          @trips = @user.trips.past_trips
        elsif params[:filter] == "Current Trips"
          @user = current_user
          @trips = @user.trips.current_trips
        end
      else
        @user = current_user
        @trips = @user.trips
      end
    end
  end

  def show
    @trip = Trip.find(params[:id])
  end

  def new
    if params[:user_id]
      @user = current_user
      @trip = @user.trips.build
    elsif params[:home_id]
      @home = Home.find(params[:home_id])
      @trip = @home.trips.build
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

  def edit
      @trip = Trip.find(params[:id])
  end

  def update
    @trip = Trip.find(params[:id])
  
    if @trip.update(trip_params)
      redirect_to @trip
    else
      render 'edit'
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