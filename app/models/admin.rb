class Admin < ApplicationRecord
  belongs_to :auser
  validates :name, :presence => true
end
