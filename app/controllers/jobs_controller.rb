class JobsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      @jobs = Job.search_by_requirements(params[:query])
    else
      @jobs = Job.all
    end
  end

  def show
    @job = Job.find(params[:id])
  end

  def new
    @job = Job.new
  end
  
  def create
    @job = Job.new(job_params)
    @job.user = current_user

    if @job.save
      redirect_to jobs_path
    else
      render 'new'
    end
  end
  
  private

  def job_params
    return params.require(:job).permit(:title, :location, :description, :format, :modality, :benefits, requirements: [])
  end
end
