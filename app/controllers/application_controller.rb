class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
    protected
      # usernameのストロングパラメーター
      def configure_permitted_parameters
       devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
       devise_parameter_sanitizer.permit(:account_update, keys: [:username])
      end
  
end
