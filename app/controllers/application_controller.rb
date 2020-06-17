class ApplicationController < ActionController::Base
  helper_method :current_user
  
  def after_sign_in_path_for(resource)
    albums_path
  end

  def after_sign_out_path_for(resource)
    homepage_path
  end

end
