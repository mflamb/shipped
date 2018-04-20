class BoatsController < ApplicationController
  def index
  end

  def new
  end

  def create
  end

  def show
  end

  private

  def boat_params
    params.require(:boat).permit(:name, :capacity, :location, :avatar)
  end

end
