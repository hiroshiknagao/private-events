class Event < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :location, presence: true
  validates :date, presence: true

  belongs_to :creator, class_name: "User"

  has_many :event_attendees, foreign_key: attending_event_id
  has_many :attendees, through: :event_attendees, source: :user
end
