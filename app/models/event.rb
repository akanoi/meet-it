class Event < ApplicationRecord
  has_one :place
  has_and_belongs_to_many :requirements
  enum type: [:food, :sport, :other ]
end
