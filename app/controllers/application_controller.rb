class ApplicationController < ActionController::Base
  helper_method :current_user
  
  def after_sign_in_path_for(resource)
    albums_path
  end

  def after_sign_out_path_for(resource)
    homepage_path
  end



  # protected
  # def configure_permitted_parameters
  #   added_attrs = [:username, :email, :password, :password_confirmation, :remember_me]
  #   devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
  #   devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  # end
end
