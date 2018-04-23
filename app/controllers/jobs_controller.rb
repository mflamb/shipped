class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def new
    @job = Job.create
  end

  def create 
    @job = Job.new(job_params)
    # do I need to grab the boat_id too?
    @job.save
  end 

  private 

  def job_params
    params.require(:job).permit(:name, :description, :price, :origin, :destination, :containers)
  end
end
