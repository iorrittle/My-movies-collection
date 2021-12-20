class MoviesController < ApplicationController
  
  def index
    @movies = Movie.all
  end  
  
  def new
    @movie = Movie.new
  end
  
  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to root_path(@movie)
    else
      render :new
    end
  end  

  private

  def movie_params
    params.require(:movie).permit(:image, :title, :director, :starring, :genre_id, :public_year_id, :favorite_scene_1, :favorite_scene_2, :favorite_scene_3, :film_music, :artist_name, :memorandum).merge(user_id: current_user.id)
  end

end
