class MoviesController < ApplicationController
  
  def index
    @movies = Movie.all
  end
  
  def new
    @movie = Movie.new
  end
  
  def create
    @movie = Movie.new(movie_params)
    
    @movie.save
    redirect_to @movie
  end

  def show
    @movie = Movie.find(params[:id])
  end
  
  def edit
  end

  def update
  end

  def delete
  end
  
  private
  
  def movie_params
    params.require(:movie).permit(:title, :format, :length, :release, :rating)
  end
end
