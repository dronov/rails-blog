class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_username(params[:username])
    user.authenticate(params[:password])
    if user
      session[:username] = user.username
      @current_user = user.username
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def destroy
    session[:username] = nil
    redirect_to root_path
  end

end
