class Job < ApplicationRecord
  belongs_to :user

  has_many :job_candidates

  validates :title, :description, presence: true
end
