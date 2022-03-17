class MoviesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :move_to_index, only: [:edit, :update]
  before_action :set_movie, only: [:show, :edit, :update, :destroy]
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
    
    if user_signed_in?
      @like = current_user.likes.find_by(movie_id: @movie.id)
      @likes = @movie.likes.includes(:user)
    end  
  end  

  def edit
    
    unless current_user
      return redirect_to root_path
    end  
  end
  
  def update
    if @movie.update(movie_params)
      redirect_to movie_path(@movie.id)
    else 
      render :edit
    end
  end  
  
  def destroy
    @movie.destroy
    redirect_to root_path
  end
  

  private

  def movie_params
    params.require(:movie).permit(:image, :title, :director, :starring, :genre_id, :sub_genre_id, :public_year_id, :favorite_scene_1, :favorite_scene_2, :favorite_scene_3, :film_music, :artist_name, :memorandum).merge(user_id: current_user.id)
  end
  
  def move_to_index
    @movie = Movie.find(params[:id])
    unless current_user.id == @movie.user_id
      redirect_to action: :index
    end
  end

  def set_movie
    @movie = Movie.find(params[:id])
  end  
end


