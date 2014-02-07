class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  before_filter :configure_permitted_parameters, if: :devise_controller?
  
private
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:email, :account_id,:uid,:password, :password_confirmation)
    end
    devise_parameter_sanitizer.for(:sign_in) do |u|
      u.permit(:uid,:password,:remember_me)
    end
    devise_parameter_sanitizer.for(:account_update) do |u|
      u.permit(:email, :account_id,:uid,:password, :password_confirmation,:current_password)
    end
  end
  

end
