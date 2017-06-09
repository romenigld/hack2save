class JobCandidatesController < ApplicationController
  before_action :authenticate_user!

  def new
    @job_candidate = JobCandidate.where(user_id: current_user.id).where(job_id: params[:job_id]).first
    if @job_candidate != nil
      flash[:warning] = 'Candidate is already included in the work list'
      redirect_to user_job_path(current_user, params[:job_id])
    else
      @job_candidate = JobCandidate.new
    end
  end

  def create
    @job_candidate = JobCandidate.new(job_candidate_params)
    @job_candidate.job_id = params[:job_id] 
    @job_candidate.user_id = current_user.id
    @job_candidate.status = :waiting

    if @job_candidate.save
      flash[:success] = 'Candidate apply to job with success'
      redirect_to user_job_path(current_user, params[:job_id])
    else
      render 'new'  
    end

  end  


  def update
    @job_candidate = JobCandidate.find(params[:id])
    #@job_candidate.status = params[:status]
    if @job_candidate.update({status: params[:status]})
      flash[:success] = 'Candidate updated with success'
      redirect_to user_jobs_path current_user
    else
      render 'new'
    end
  end

  private 

    def job_candidate_params
      params.require(:job_candidate).permit(:user_id, :job_id, :status, :presentation_letter, :status)
    end
end 
