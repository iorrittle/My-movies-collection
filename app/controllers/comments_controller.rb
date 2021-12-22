class CommentsController < ApplicationController
  
  def index
    
    @rooms = Room.all
    @room = Room.find(params[:room_id])

  end  
  
  
  def create
    Comment.create(comment_params)
    redirect_to #"/rooms/#{comment.room.id}"  
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, room_id: params[:room_id])
  end
end

end
