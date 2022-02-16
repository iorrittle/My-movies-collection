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

  def show
    @movie = Movie.find(params[:id])
    #@like = Like.new
    @like = current_user.likes.find_by(movie_id: @movie.id)
    
    #@likes_count = Like.where(movie_id: @movie.id).count
    @likes = @movie.likes.includes(:user)
  end  

  def edit
    @movie = Movie.find(params[:id])
  end
  
  def update
    @movie = Movie.find(params[:id])
    if @movie.update(movie_params)
      redirect_to movie_path(@movie.id)
    else 
      render :edit
    end
  end  
  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to root_path
  end
  

  private

  def movie_params
    params.require(:movie).permit(:image, :title, :director, :starring, :genre_id, :public_year_id, :favorite_scene_1, :favorite_scene_2, :favorite_scene_3, :film_music, :artist_name, :memorandum).merge(user_id: current_user.id)
  end
  
end
