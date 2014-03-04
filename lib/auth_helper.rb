module AuthHelper

  def sign_in(user)
    session[:username] = user.username
  end

  def sign_out
    session[:username] = nil
  end

  def signed_in?
    if !current_user.nil?
      return true
    else
      redirect_to root_path
    end
  end

  def current_user
    @current_user ||= User.find_by_username(session[:username]) if session[:username]
  end

end
