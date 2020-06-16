class Album < ApplicationRecord
  has_and_belongs_to_many(:users)

  # API CALLS
  def self.search(type, search_term)
    
    # results = HTTParty.get("https://api.discogs.com/database/search?key=sgmHHrgiDDHlrTWxYFMA&secret=JuQudxvQYuidvkfzANEnlLBFfeUETfdx&type=artist&q=green day")
    results = HTTParty.get("https://api.discogs.com/database/search?type=#{type}&q=#{search_term}&key=" + ENV["API_KEY"] + "&secret=" + ENV["API_SECRET"])
    # binding.pry
    final_results = results["results"]
  end


    
  # # final_result = {name: , artist: results.artist, }
  #   # two types for API calls will be artist, release title & genre?
  # results.any?
  #     results.each |result| do
  #       result.
  #       #deconstructing hashes returning 5 - 10 things instead of a million
  #     end

  #   end
  # end
end


