class Album < ApplicationRecord
  has_and_belongs_to_many(:users)


  # API CALLS
  def self.search(type, search_term)
    results = HTTParty.get("https://api.discogs.com/database/search?type=#{type}&q=#{search_term}&key=" + ENV["API_KEY"] + "&secret=" + ENV["API_SECRET"])
    # binding.pry
    final_results = results["results"]
  end
  
  def self.show(artist_id)
    results = HTTParty.get("https://api.discogs.com/artists/#{artist_id}")
  end

  def self.all_albums(artist_id)
    results = HTTParty.get("https://api.discogs.com/artists/#{artist_id}/releases")
    final_results = results['releases']
  end

  def self.album_songs(album_id)
    results = HTTParty.get("https://api.discogs.com/masters/#{album_id}")
    # binding.pry
    final_results = results['tracklist']
  end

  def self.find_album(album_id)
    results = HTTParty.get("https://api.discogs.com/masters/#{album_id}")
  end
  

  def self.image(album, artist)
    results = HTTParty.get("http://ws.audioscrobbler.com/2.0/?method=album.getinfo&api_key=" + ENV["LASTFM_KEY"] + "&album=#{album}&artist=#{artist}&format=json")
    # binding.pry
    if results["album"]["image"][2]["#text"] == ""  
      results = "https://www.samsung.com/etc/designs/smg/global/imgs/support/cont/NO_IMG_600x600.png"
    else 
      results["album"]["image"][2]["#text"]
    end
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
  # results = HTTParty.get("https://api.discogs.com/database/search?key=sgmHHrgiDDHlrTWxYFMA&secret=JuQudxvQYuidvkfzANEnlLBFfeUETfdx&type=artist&q=green day")
end


