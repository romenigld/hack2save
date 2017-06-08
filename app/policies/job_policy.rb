class JobPolicy < ApplicationPolicy
  
  def new?
    user.profile.social_entity == :entity
  end

  def create?
    user.profile.entity?
  end

  private 
    def job
      record
    end
end