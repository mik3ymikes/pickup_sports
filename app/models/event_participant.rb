class EventParticipant < ApplicationRecord
  # vailidates :rating, presence: true
  belongs_to :user
  belongs_to :event
end
