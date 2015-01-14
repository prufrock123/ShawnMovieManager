class MoviesController < ApplicationController
  
  def new
    @movie = Movie.new
  end
  
  def create
    @movie = Movie.new(movie_params)
  end

  def read
    
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
