class Attendee < ApplicationRecord
  belongs_to :event
  validates_presence_of :name
end