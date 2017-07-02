class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # before_action :set_session

  # private
  # def set_session
  #   return if session[:current_user_id]
  #   session[:current_user_id] = SecureRandom.uuid
  # end
end
