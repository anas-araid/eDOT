class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_health_centers, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:username, :email) }
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(
      :name,
      :surname,
      :birthdate,
      :gender,
      :phone,
      :username,
      :email,
      :password,
      :password_confirmation,
      :health_center_id,
      :user_type) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(
      :name,
      :surname,
      :birthdate,
      :gender,
      :phone,
      :username,
      :email,
      :password,
      :password_confirmation,
      :current_password,
      :health_center_id,
      :user_type) }
  end
  def after_sign_in_path_for(user)
    patients_path() #your path
  end

  def set_health_centers
    @health_centers = HealthCenter.all
  end

end
