class Event < ApplicationRecord
  has_one :place
  has_many :event_users
  has_many :users, through: :event_users
  has_and_belongs_to_many :requirements
  enum kind: [:food, :sport, :entertainment, :other]
end
