class UsersController < ApplicationController
  def show
    @nickname = current_user.nickname
    @movies = current_user.movies
    @user = @user = User.find(params[:id])
  end
end
