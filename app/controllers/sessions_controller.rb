class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def create_with_omniauth
    omniauth = request.env['omniauth.auth']['info']
    @user = User.find_or_create_by(email: omniauth["email"]) do |user|
      user.name = omniauth["name"]
      user.email = omniauth["email"]
      user.password = SecureRandom.hex
    end
    session[:user_id] = @user.id
    redirect_to user_path(@user)
  end

  def destroy
    session.delete :user_id
    redirect_to login_path
  end
end