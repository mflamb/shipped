class SchedulesController < ApplicationController

  # Multiple variables for schedules index bc we have display of all schedules and form to create new ones on the same page
  
  def index
    @schedules = Schedule.all
    @schedule = Schedule.new
  end

  #def new
  #@schedule = Schedule.new
  #end
  
  # Enable user to pass params into DB to create new schedule.  Also set instance variables for displaying information about jobs/boats associated with this schedule

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

  # Make params available to be added in DB during schedule creation

  private

  def schedule_params
    params.require(:schedule).permit(:job_id, :boat_id)
  end
end
