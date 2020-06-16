class ApplicationController < ActionController::Base
  # require "discogs"
  # wrapper = Discogs::Wrapper.new("Recorgs")

  # def authenticate 
  #   @discogs = Discogs::Wrapper.new("Recorgs", session[:access_token])
  #   request_data = @discogs.get_request_token("#{process.env.API_KEY}", "#{process.env.API_SECRET}", "http://127.0.0.1:3000/callback")
  
  #   session[:request_token] = request_data[:request_token]
  
  #   redirect_to request_data[:authorize_url]
  # end
  
  # def callback
  #   @discogs = Discogs::Wrapper.new("Recorgs")
  #   request_token = session[:request_token]
  #   verifier = params[:oauth_verifier]
  #   access_token = @discogs.authenticate(request_token, verifier)
  
  #   session[:request_token] = nil
  #   session[:access_token] = access_token
  
  #   @discogs.access_token = access_token
  # end  

end
