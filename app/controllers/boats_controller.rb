class BoatsController < ApplicationController
  def index
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.save
  end

  def show
  end

  private

  def boat_params
    params.require(:boat).permit(:name, :capacity, :location, :avatar)
  end

end
