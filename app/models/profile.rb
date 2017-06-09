class Profile < ApplicationRecord
  enum social_entity: [:voluntary, :entity]

  belongs_to :user

  mount_uploader :avatar, AvatarUploader

  validates :name, :last_name, :job_title, :social_entity, :phone_number,
            :contact_email, :description, :avatar, presence:true
end
