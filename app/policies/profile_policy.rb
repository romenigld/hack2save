class ProfilePolicy < ApplicationPolicy
  
  def new?
    user.profile.social_entity == 'entity'
  end

  def create?
    user.profile.social_entity == 'entity'
  end

  
    
end