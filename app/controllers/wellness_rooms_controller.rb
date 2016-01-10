class WellnessRoomsController < ApplicationController
  def index
  	@wellness_rooms = WellnessRoom.all
  end

  def new
  	@wellness_room = WellnessRoom.new
  end

  def show
  	@wellness_room = WellnessRoom.find(params[:id])

  end

  def create
  	@wellness_room = WellnessRoom.new(wellness_room_params)
  	if @wellness_room.save
  		redirect_to wellness_rooms_path
  	else
  		render 'new'
  	end
  end

  def edit
  	@wellness_room = WellnessRoom.find(params[:id])
  end

  def update
  	@wellness_room = WellnessRoom.find(params[:id])
  	@wellness_room.update(wellness_room_params)
  	redirect_to wellness_rooms_path
  end
  def destroy
  	@wellness_room = WellnessRoom.find(params[:id])
  	if @wellness_room.destroy
  		redirect_to wellness_rooms_path
  	else
  		render 'index'
  	end
  end

  private
  def wellness_room_params 	
  	params[:wellness_room].permit(:name,:desc)
  end
end
