class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: 'You are logged in'
    else
      redirect_to login_path, alert: 'Email or password is invalid'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: 'You are now Logged out'
  end
end
