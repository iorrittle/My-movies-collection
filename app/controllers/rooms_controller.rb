class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end
  
  def new
    @room = Room.new
    ld
  end
  
  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to room_path(@room.id)
      render :new
    end
  end  

  def show 
    @room = Room.find(params[:id])
    @comment = Comment.new
    @comments = @room.comments.order(created_at: :desc)

  end
  def edit
    @room = Room.find(params[:id])
    
  end
  def update
    @room = Room.find(params[:id])
    if @room.update(room_params)
      redirect_to room_path(@room.id)
    else 
      render :edit
    end
  end  
  
  def destroy
    @room = Room.find(params[:id])
    @room.destroy
    redirect_to root_path

  end  
  private

  def room_params
    params.require(:room).permit(:image, :title, :director, :starring, :genre_id, :public_year_id)
  end


end
