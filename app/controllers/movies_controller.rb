class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
    @actors = @movie.actors
    return @movie if @movie
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
   if @movie.save
     redirect_to movies_path
   else
     render :new
  end 

  def edit
    @movie = Movie.find(params[:id])
  end  

  def update
    @movie = Movie.find(params[:id])
  
  if @movie.update(movie_params)
    redirect_to movies_path
  else
    render :edit
  end
end

  def destroy
     @movie = Movie.find(params[:id])
     @movie.destroy
     redirect_to movies_path
end
end

private
  def movie_params
   params.require(:movie).permit(:title, :rating, :description, :length)
  end
end
