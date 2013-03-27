class Timeslot < ActiveRecord::Base
  attr_accessible :time

  has_many :reservations
  belongs_to :restaurants
end
