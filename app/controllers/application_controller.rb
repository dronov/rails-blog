class ApplicationController < ActionController::Base
  require 'carrierwave/orm/activerecord'
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery
  include AuthHelper
  helper_method :current_user, :signed_in?
end
