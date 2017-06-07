class Profile < ApplicationRecord
  enum social_entity: [:voluntary, :entity]

  belongs_to :user
end
