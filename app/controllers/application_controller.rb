class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:firstname, :middlename, :lastname, :email,
      :gender, :password, :password_confirmation, :date_of_birth, :address, :usertype)}

    devise_parameter_sanitizer.permit(:accout_update) {|u| u.permit(:email, :password, :password_confirmation,
        :firstname, :middlename, :lastname, :gender, :date_of_birth, :address, :usertype)}

  end
end
