class EventUser < ApplicationRecord
  enum role: [:organizer, :participant]

  belongs_to :user
  belongs_to :event
end
