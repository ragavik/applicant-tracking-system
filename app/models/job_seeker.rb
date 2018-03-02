class JobSeeker < ApplicationRecord
  belongs_to :user

  validates :phone, :presence => true
  validates :name, :presence => true
  #validates_format_of :phone, :with => /\(?\d+\)?[-.\s]?\d+[-.\s]?\d+/
end
