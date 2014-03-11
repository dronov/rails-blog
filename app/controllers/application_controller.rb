class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include AuthHelper
  helper_method :current_user, :signed_in?
end
