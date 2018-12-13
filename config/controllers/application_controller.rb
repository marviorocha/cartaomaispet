class ApplicationController < ActionController::Base


 before_action :authenticate_user!
 

#  CanCanCan Autorization
 rescue_from CanCan::AccessDenied do |exception|
   flash[:alert] = "Você não está autorizado a acessar a página"
   redirect_to root_url
 end


 helper :all
before_action :configure_permitted_parameters, if: :devise_controller?

protected

   def configure_permitted_parameters
        added_attrs = [:name, :last_name, :email, :password, :password_confirmation, :remember_me, :role, :avatar]
        devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
        devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    end


end
