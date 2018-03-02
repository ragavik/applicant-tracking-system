class Company < ApplicationRecord
  has_many :recruiters
  has_many :jobs

  validates :name, :presence => true
  validates :website, format: { with: URI.regexp }
end
