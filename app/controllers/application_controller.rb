class ApplicationController < ActionController::Base
  befor_action :authenticate_user!
  befor_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:neme])
  end
end
