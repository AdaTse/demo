class Event < ApplicationRecord
  has_many :event_groupships
  has_many :groups, :through => :event_groupships
  has_one :location
  belongs_to :category
  delegate :name, :to => :category, :prefix => true, :allow_nil => true
  has_many :attendees
  validates_presence_of :name
end
