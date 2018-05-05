class SchedulesController < ApplicationController

  def index
    @schedules = Schedule.all
    @schedule = Schedule.new
  end

  #def new
  #@schedule = Schedule.new
  #end

  def create
    @schedule = Schedule.new(schedule_params)
    @job = Job.find(@schedule.job_id)
    @boat = Boat.find(@schedule.boat_id)
    if @schedule.save
      respond_to do |format|
        format.js
      end
    else
      redirect_to schedules_path, :notice => "That schedule has already been created"
    end
  end


  private

  def schedule_params
    params.require(:schedule).permit(:job_id, :boat_id)
  end
end
