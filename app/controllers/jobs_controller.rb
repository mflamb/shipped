class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)

    if @job.save
      redirect_to jobs_path
    else
      puts @job.errors.full_messages
      redirect_to "new"
    end

  end

  def update
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    redirect_to jobs_path
   end


  private

  def job_params
    params.require(:job).permit(:name, :description, :price, :origin, :destination, :containers)
  end
end
