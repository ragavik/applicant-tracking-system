class Recruiter < ApplicationRecord
  belongs_to :company
  has_many :jobs

  validates :company, :presence =>  true
end
