class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def redirect_to_root_if_object_nil(object)
    redirect_to root_url if object.nil?
  end

end
