class GenresController < ApplicationController
  def show
    @genre = find_genre
  end

  def new; end

  def create
    @genre = Genre.create(genre_params(:name))
    redirect_to genre_path(@genre)
  end

  def edit
    @genre = find_genre
  end

  def update
    @genre = find_genre
    @genre.update(genre_params(:name))
    redirect_to genre_path(@genre)
  end

private

  def genre_params(*args)
    params.require(:genre).permit(*args)
  end

  def find_genre
    Genre.find(params[:id])
  end
end
