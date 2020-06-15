class AlbumsController < ApplicationController
 
  def homepage
    render :homepage
  end
  
  def index
    @albums = Album.all 
    render :index
  end

  def new
    @album = Album.new
    render :new
  end

  def create
    @album = Album.new(album_params)
    if @album.save
      redirect_to albums_path
    else  
      render :new
    end
  end
  
  def show
    @album = Album.find(params[:id])
    render :show
  end

  def update
    @album = Album.find(params[:id])
    if @album.update(album_params)
      redirect_to albums_path
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
      params.require(:name, :discog_id, :artist, :cover_image, :link).permit(:id)
    end

end