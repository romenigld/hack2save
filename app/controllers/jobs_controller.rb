class JobsController < ApplicationController
  before_action :set_job, only: [:edit, :update, :show, :destroy]  
  before_action :authenticate_user!

  def index
    @jobs = Job.paginate(page: params[:page]).order('created_at desc')
  end

  def new
    authorize current_user.profile  
    @job = current_user.jobs.build
  end

  def create
    authorize current_user.profile
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

  def update
    
    if @job.update_attributes(job_params)
      flash[:notice] = 'Job updated with success'
      redirect_to user_job_path(current_user, @job)
    else
      render action: :edit
    end
  end
  

  def show
    
  end

  def destroy
    @job.destroy
    flash[:notice] = 'Job delete with success'
    redirect_to user_jobs_path(current_user)
  end

  private 

  def set_job
    @job = Job.find(params[:id])
    authorize @job
  end

  def job_params
    params.require(:job).permit(:user_id, :title, :description)
  end
end
