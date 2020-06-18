class Album < ApplicationRecord
  has_and_belongs_to_many(:users)

  
  # include PgSearch
  # scope :sorted, ->{ order(name: :asc) }
  # pg_search_scope :search, against: [:name, :artist, :genre], 
  # using: {
  #   tsearch: {
  #     prefix: true,
  #     normalization: 2
  #   }
  # }
  #  ------ also for use with pg_search ---------
  # def self.perform_search(keyword)
  #   if keyword.present?
  #     Album.search(keyword)
  #   else
  #     Album.all
  #   end.sorted
  # end
    
  scope :recently_added, -> do
    order("created_at DESC")
  end

  # scope :recently_added, -> { where ("created_at >=?", Time.now)}
  scope :by_album_name, -> do 
    order("name ASC")
  end

  scope :by_artist_name, -> do
    order("artist ASC")
  end

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


