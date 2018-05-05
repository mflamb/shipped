class JobsController < ApplicationController
  
  # List of all jobs
  
  def index
    @jobs = Job.all
  end
  
  # New method is probably unnecessary bc we're not using a separate page for job creation

  def new
    @job = Job.new
  end
  
  # Create method for a job, pass in params and save to DB

  def create
    @job = Job.new(job_params)
    if @job.save
      redirect_to jobs_path
    else
      puts @job.errors.full_messages
      redirect_to new_job_path, :notice => "Please ensure that your Job name is unique and at least 4 characters long.  Also, job prices must be at least $1,000, the number of containers must be at least 1, and the job description must be at least 50 characters"
    end
  end
  
  # Grab the job by ID and delete from the DB

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    redirect_to jobs_path
   end

  # Make params able to be passed into the DB from user's form entry to create a job

  private

  def job_params
    params.require(:job).permit(:name, :description, :price, :origin, :destination, :containers)
  end
end
