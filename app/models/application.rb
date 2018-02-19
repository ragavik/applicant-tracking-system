class Application < ApplicationRecord
  belongs_to :job_seeker

  validates :job_seeker, :presence => true
end
