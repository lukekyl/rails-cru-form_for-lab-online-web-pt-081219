class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def create
    @genre = Genre.new 
    @genre.update(params.require(:genre).permit(:name))
    @genre.save
    redirect_to genre_path(@genre)
  end

  def new
    @genre = Genre.new
  end

  def edit
    @genre = Genre.find_by(params[:id])
  end

  def update
    @genre = Genre.find_by(params[:id])
    @genre.update(params.require(:genre).permit(:name))
    @genre.save
    redirect_to genre_path(@genre)
  end

  def show
    @genre = Genre.find_by(params[:id])
  end
end
