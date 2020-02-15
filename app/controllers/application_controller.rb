class ApplicationController < ActionController::Base
  #this one line sends us to the log in page
    before_action :authenticate_user!
    before_action :configure_permitted_parameters, if: :devise_controller?

  def welcome
    byebug
  end

  #protected is a stage bedtween private and public 
  #and means that child classes can use this method
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end
end