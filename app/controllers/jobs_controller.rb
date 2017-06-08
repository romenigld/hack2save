class JobsController < ApplicationController
  
  def index
  end

  def new
    @job = current_user.jobs.build
  end

  def create
    @job = current_user.jobs.build(job_params)
    if @job.save
      flash[:notice] = 'Job created with success'
      redirect_to user_job_path(current_user, @job)
    else
      render 'new'  
    end
  end

  def edit
  end

  def show
  end

  private 

  def job_params
    params.require(:job).permit(:user_id, :title, :description)
  end
end
