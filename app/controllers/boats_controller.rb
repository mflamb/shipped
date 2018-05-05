class BoatsController < ApplicationController
  def index
    @boats = Boat.all
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.user_id = current_user.id
    if @boat.save
      redirect_to boats_path
    else
      redirect_to new_boat_path, :notice => "Please ensure that your boat name is unique (boat names are case sensitive) and that your boat's max capacity is at least 1"
    end

  end

  def show
  end

  def destroy
   @boat = Boat.find(params[:id])
   @boat.destroy
   redirect_to boats_path
  end

  private

  def boat_params
    params.require(:boat).permit(:name, :capacity, :location, :avatar)
  end

end
