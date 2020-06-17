class AlbumsController < ApplicationController
  def index
    @albums = Album.all
    current_user
  end

  def homepage
    render :homepage
  end

  def search
    @search_term = params[:search_term]
    @type = params[:type]
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
    render :album_detail
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
    # @album = Album.find(params[:id])
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

  # def display
  #   @albums = Album.all
  # end

  private
    def album_params
      params.require(:name, :discog_id, :artist, :cover_image, :link, :genre).permit(:id)
    end
end


