class JobPolicy < ApplicationPolicy
  
  
  def create?
    user.profile.social_entity == 'entity'
  end

  def update?
    user == job.user
  end

  def destroy?
    user == job.user
  end

  private 

  def job
     record 
  end
end