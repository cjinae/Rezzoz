class Timeslot < ActiveRecord::Base
  attr_accessible :time, :month, :day, :time, :starts_at
  attr_writer :month, :day, :time

  has_many :reservations
  belongs_to :restaurants

  before_save :on => :create do
		now = Date.now
		starts_at = Timeslot.new (now.year @month, @day, @time)
	end  	
 end


