class Recruiter < ApplicationRecord
  belongs_to :ruser
  belongs_to :company
  validates :name, :presence => true

end
