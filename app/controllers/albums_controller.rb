class AlbumsController < ApplicationController

  # def index
  #   @albums = Album.all
  # end

  # def return_artist_name
  #   @discogs = Discogs::Wrapper.new("Test OAuth", access_token: session[:access_token])
  #   artist = wrapper.get_artist("329937")
  #   artist.name  
  # end

def search
  @search_term = params[:search_term]
  @search_results = Album.search(@search_term)

  
  
end

def create
  album_name = result.title.split(' ')
    artist = before - 
    album = after - 
  
  
end

@search_results.any?
  @search_results.each do |result|
    result.id
    result.title = artist name & album title 
    <button> Add to my collection</button>
    if click button ^ 
      album.create!
        current_user & response.id 


  if result.type == "artist"
    artist = result.title