class ApplicationController < ActionController::Base
	#protect_from_forgery with: :exception я сделала
before_action :configure_permitted_parameters, if: :devise_controller?

 private

 def configure_permitted_parameters
 # devise_parameter_sanitizer.for(:sign_up) << :username
 devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
 end

end
