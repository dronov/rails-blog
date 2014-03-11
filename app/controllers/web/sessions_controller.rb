class Web::SessionsController < Web::ApplicationController

  def new
  end

  def create
    user = User.find_by_username(params[:username])
    user = user.authenticate(params[:password])
    if user
      sign_in(user)
      redirect_to root_path
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end

end
