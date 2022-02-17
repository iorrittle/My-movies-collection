class LikesController < ApplicationController
  before_action :authenticate_user!
  #before_action :movie_find
  

  def create
    if user_signed_in?
    @like = current_user.likes.build(like_params)
    @movie = @like.movie
    @like.save
    end
  end
  

  def destroy
    @movie = Movie.find(params[:id])
    like = Like.find_by(user_id: current_user.id, movie_id: params[:id])
    like.destroy
    
  end
  private
  def like_params
    params.permit(:movie_id)
  end
  
  def movie_find
    # 投稿内容の取得
    @movie = Movie.find(params[:id])
  end
  
  
end



