class JobSeeker < ApplicationRecord
  belongs_to :user

  validates :phone, :presence => true
  #validates_format_of :phone, :with => /\(?\d+\)?[-.\s]?\d+[-.\s]?\d+/
end
