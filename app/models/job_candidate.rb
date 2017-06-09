class JobCandidate < ApplicationRecord
  belongs_to :user
  belongs_to :job
  enum status: [:waiting, :accept, :recused]
  validates :presentation_letter, presence: true
end
