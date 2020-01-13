class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def create
    @song = Song.new 
    @song.update(params.require(:song).permit(:name, :artist_id, :genre_id))
    @song.save
    redirect_to song_path(@song)
  end

  def new
    @song = Song.new
  end

  def edit
    @song = Song.find_by(params[:id])
  end

  def update
    @song = Song.find_by(params[:id])
    @song.update(params.require(:song).permit(:name, :artist_id, :genre_id))
    @song.save
    redirect_to song_path(@song)
  end

  def show
    @song = Song.find_by(params[:id])
    @genre = Genre.find(@song.genre_id)
    @artist = Artist.find(@song.artist_id)
  end
end
