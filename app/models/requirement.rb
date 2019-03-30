class Requirement < ApplicationRecord
  has_and_belongs_to_many :events
  enum type: [:positive, :neutral, :negative]
end
