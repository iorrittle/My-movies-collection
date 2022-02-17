class UsersController < ApplicationController
  before_action :set_user, only: [:likes]
  def likes
    likes = Like.where(user_id: @user.id).pluck(:movie_id)
    @like_movies = Movie.find(likes)
    
  end
  
  
  def show
    if user_signed_in? 
      @nickname = current_user.nickname
      @movies = current_user.movies
    end
      @user = @user = User.find(params[:id])
    
  end
  
  
    
    
  

  private
  def set_user
    @user = User.find(params[:id])
  end


end
