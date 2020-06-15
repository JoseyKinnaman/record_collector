class Album < ApplicationRecord
  has_and_belongs_to_many(:users)

  # def authenticate 
  #   @discogs = Discogs::Wrapper.new("Test OAuth", session[:access_token])
  #   request_data = @discogs.get_request_token("#{process.env.API_KEY}", "#{process.ensv.API_SECRET}", "http://127.0.0.1:3000/callback")
  
  #   session[:request_token] = request_data[:request_token]
  
  #   redirect_to request_data[:authorize_url]
  # end
  
  # def callback
  #   @discogs = Discogs::Wrapper.new()
  #   request_token = session[:request_token]
  #   verifier = params[:oauth_verifier]
  #   access_token = @discogs.authenticate(request_token, verifier)
  
  #   session[:request_token] = nil
  #   session[:access_token] = access_token
  
  #   @discogs.access_token = access_token
  # end  

  # API CALLS
  def self.search_by_artist(search_term, type)
    results = "https://api.discogs.com/database/search?#{type}=#{search_term}&key=#{process.env.API_KEY}&secret=#{process.env.API_SECRET}"
    results.any?
      results.each |result| do
        result.
        #deconstructing hashes returning 5 - 10 things instead of a million
      end

    end
  end

  def self.search_by_album
    
    
  end
  
  
end