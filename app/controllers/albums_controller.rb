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
    @album = Album.show(params[:id])
    @tracks= Album.album_songs(params[:id])
    render :album_detail
  end
  
  def new
    @album = Album.new
    render :new
  end

  def create
    @album = Album.new(album_params)
    if @album.save
      redirect_to '/'
    end
  end

  def edit
    @album = Album.find(params[:id])
  end

  def show
    @artist = Album.show(params[:id])
    @albums = Album.all_albums(@artist['id'])
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
  end

  private
    def album_params
      params.require(:name, :discog_id, :artist, :cover_image, :link, :genre).permit(:id)
    end
end
