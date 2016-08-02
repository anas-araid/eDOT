class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:username, :email) }
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation, :health_center_id) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:username, :email, :password, :password_confirmation, :current_password, :health_center_id) }
  end
end
