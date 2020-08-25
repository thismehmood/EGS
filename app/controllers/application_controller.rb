class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  # def after_sign_in_path_for(resource)
  #   # debugger
  #   if resource.role == "venue_owner"
  #    "/landing" 
  #   else
  #     super
  #   end
  # end
  protected
    def  configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name,:last_name,:role, :email, :password)}

      devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :current_password)}
    end
end
