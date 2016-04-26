class Event < ApplicationRecord
  has_many :event_groupships
  has_many :groups, :through => :event_groupships
  has_one :location
  belongs_to :category
  has_many :attendees
  validates_presence_of :name
end
