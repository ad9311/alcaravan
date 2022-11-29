class ApplicationController < ActionController::Base
  layout :layout_by_resource
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[first_name last_name username email])
  end

  def layout_by_resource
    if devise_controller? || current_user.nil?
      'devise'
    else
      'application'
    end
  end
end
