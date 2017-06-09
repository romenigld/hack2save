class JobCandidate < ApplicationRecord
  belongs_to :user
  belongs_to :job

  validates :presentation_letter, presence: true
end
