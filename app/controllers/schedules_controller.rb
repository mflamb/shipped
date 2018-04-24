class SchedulesController < ApplicationController

  def index 
    @schedules = Schedule.all
  end

  def new
    @schedule = Schedule.new
  end

  def create
    @schedule = Schedule.new(schedule_params)
  if  @schedule.save
    redirect_to root_path
  end
end


  private

  def schedule_params
    params.require(:schedule).permit(:job_id, :boat_id)
  end
end

