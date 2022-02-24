class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_room

  def create
    @comments = @room.comments.order(created_at: :desc)
    @comment = @room.comments.build(comment_params)
    @comment.user_id = current_user.id
    if @comment.save(created_at: :desc)
      render :index
    else
      render :index
    end
  end
  
  def destroy
    @comment = Comment.find(params[:id])
    @comments = @room.comments.order(created_at: :desc)
    @comment.destroy
      render :index

  end


  private
  def comment_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id, room_id: params[:room_id])
  end
  
  def set_room
    @room = Room.find(params[:room_id])
  end  
end


