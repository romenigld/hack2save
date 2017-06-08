class JobPolicy < ApplicationPolicy
  
  def update?
    user == job.user
  end

  private 

  def job
     record 
  end
end