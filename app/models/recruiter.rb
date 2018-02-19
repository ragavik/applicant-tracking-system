class Recruiter < ApplicationRecord
  belongs_to :company

  validates :company, :presence =>  true
end
