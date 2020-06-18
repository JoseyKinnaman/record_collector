class AlbumsController < ApplicationController
  before_action :authenticate_user!, :except => [:homepage]
  def index
    @albums =  current_user.albums

    if params[:sort]
      case params[:sort]
      when 'recently_added'
        @albums = @albums.recently_added
      when 'by_album_name'
        @albums =  @albums.by_album_name
      when 'by_artist_name'
        @albums = @albums.by_artist_name
      end
    end

    if params[:genre]
      @albums = @albums.where(genre: params[:genre])
    end
    #for view
    @genre_names = current_user.albums.pluck(:genre).uniq
    
  end

  def homepage
    artist = [587458, "Solange", "When I Get Home", 160408]
    @featured_artist = Album.featured_artist(artist[0])
    @photo = Album.featured_image(artist[1], artist[2])
    @artist_albums = "http://localhost:3000/albums/#{artist[3]}"
    @artist_name = @featured_artist['name']
    @artist_profile = "American singer, songwriter and model, born 24 June 1986 in Houston, Texas, USA. Daughter of Mathew Knowles and Tina Knowles, sister of Beyoncé. She is married to Ferguson."
    @artist_link = @featured_artist['uri'] 
  end

  def search
    @search_term = params[:search_term]
    @type = params[:type]
    # binding.pry
    if @search_term == nil || @type == ''
      "Please fill out the forms to search for something!"
      @search_results = []
    else
      @search_results = Album.search(@type, @search_term)
    end
  end

  def tracks
    @album = Album.find_album(params[:id])
    @tracks= Album.album_songs(params[:id])
    if @tracks == nil
      redirect_to search_path
    else 
      @tracks
      render :album_detail
    end
  end
  
  def new
    @album = Album.new
    render :new
  end
 
  def create 
   @album = Album.find_album(params[:id])
   name = @album['title']
   discog_id = @album['id']
   artist = @album['artists'][0]['name']
   @image = Album.image(name, artist)
   cover_image = @image
   link = @album['uri']
   genre = @album['genres'][0]
   @new_album = Album.create!(name: name, discog_id: discog_id, artist: artist, cover_image: cover_image, link: link, genre: genre)
    if @new_album.save 
      current_user.albums << @new_album   
      redirect_to "/albums"
    end
  end

  def edit_collection
    render :edit
  end

  def edit
    @album = Album.find(params[:id])
  end

  def show
    @artist = Album.show(params[:id])
    @albums = Album.all_albums(@artist['id'])
    if @albums == nil
      redirect_to search_path
    else 
      @albums
      render :show
    end
  end

  def update
    @album = Album.find(params[:id])
    if @album.update(album_params)
      redirect_to '/'
    else
      render :edit
    end
  end

  def destroy
    @album = Album.find(params[:id])
    @album.destroy 
    render :edit
  end

  private
    def album_params
      params.require(:name, :discog_id, :artist, :cover_image, :link, :genre).permit(:id)
    end
end


