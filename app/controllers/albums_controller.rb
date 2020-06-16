class AlbumsController < ApplicationController

  def index
    @albums = Album.all
    # render :index
  end

  def search
    @search_term = params[:search_term]
    @type = params[:type]
    @search_results = Album.search(@type, @search_term)
    # binding.pry
 
  end

  def new
    @album = ALbum.new
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
    @album = Album.find(params[:id])
  end

  def update
    @album = Album.find(params[:id])
    if @album.update(album_params)
      redirect_to '/'
    end
  end

  def destroy
    @album = Album.find(params[:id])
    @album.destroy
    redirect_to '/'
  end

  private
  def album_params
    params.require(:album).permit(:name, :artist, :cover_image, :link, :discog_id)
  end
end


# album_name = result.title.split(' ')
#     artist = before - 
#     album = after - 
# @search_results.any?
#   @search_results.each do |result|
#     result.id
#     result.title = artist name & album title 
#     <button> Add to my collection</button>
#     if click button ^ 
#       album.create!
#         current_user & response.id 


#   if result.type == "artist"
#     artist = result.title