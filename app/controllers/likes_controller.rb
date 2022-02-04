class LikesController < ApplicationController
  before_action :movie_params

  def create
    #movie = Movie.find(params[:movie_id])
    #current_user.like(movie)

    @like = Like.new(user_id: @current_user.id, movie_id: params[:movie_id])
    @like.save
    redirect_to("/movies/#{params[:movie_id]}")
    Like.create(user_id: current_user.id, movie_id: params[:id])
    
  end

  def destroy
    #movie = current_user.likes.find(params[:id]).board
    #current_user.unlike(movie)
    #redirect_back fallback_location: root_path, success: t('defaults.message.unlike')
    @like = Like.find_by(user_id: @current_user.id, movie_id: params[:movie_id])
    @like.destroy
    
  end

  
  
  private

  def movie_params
    @movie = Movie.find(params[:id])
  end
end



