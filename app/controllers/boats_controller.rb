class BoatsController < ApplicationController
  def index
    @boats = Boat.all
  end

  def new
    @boat = Boat.create
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.save
  end

  def show
  end

  private

  def boat_params
    params.require(:boat).permit(:name, :capacity, :location, :user_id, :avatar)
  end

end
