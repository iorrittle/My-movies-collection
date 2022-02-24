class RoomsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :move_to_index, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_room, only: [:show, :edit, :update, :destroy]
  
  def index
    @rooms = Room.all
  end
  
  def new
    @room = Room.new
  end
  
  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to room_path(@room.id)
    else  
      render :new

    end
  end  

  def show 
    @comment = Comment.new
    @comments = @room.comments.order(created_at: :desc)
  end
  
  def edit
  end
  
  def update
    
    if @room.update(room_params)
      redirect_to room_path(@room.id)
    else 
      render :edit
    end
  end  
  
  def destroy
    @room.destroy
    redirect_to root_path
  end  
  
  
  private

  def room_params
    params.require(:room).permit(:image, :title, :director, :starring, :genre_id, :public_year_id)
  end

  def move_to_index
    unless user_signed_in? && current_user.admin
      redirect_to action: :index
    end
  end

  def set_room
    @room = Room.find(params[:id])
  end  
end
