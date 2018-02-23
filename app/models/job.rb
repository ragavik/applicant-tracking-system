class Job < ApplicationRecord
  belongs_to :company
  belongs_to :recruiter

  validates :title, :presence => true

  def self.search(search)
    where("company_id = ?", "%#{search}%")
  end
end
