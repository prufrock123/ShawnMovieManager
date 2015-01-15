class MoviesController < ApplicationController
  
  def index
    @movies = Movie.order(params[:sort])
  end
  
  def update_row_order
    @movie = Movie.find(movie_params[:id])
    @movie.row_order_position = movie_params[:row_order_position]
    @movie.save
    
    render nothing: true
  end
  
  def new
    @movie = Movie.new
  end

  def edit
    @movie = Movie.find(params[:id])
  end  
  
  def create
    @movie = Movie.new(movie_params)
    
    if @movie.save
      redirect_to @movie
    else
      render 'new'
    end
  end
  
  def update
    @movie = Movie.find(params[:id])
    
    if @movie.update(movie_params)
      redirect_to @movie
    else
      render 'edit'
    end
  end

  def show
    @movie = Movie.find(params[:id])
  end



  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    
    redirect_to movies_path
  end
  
  private
  
  def movie_params
    params.require(:movie).permit(:title, :format, :length, :release, :rating)
  end
end
