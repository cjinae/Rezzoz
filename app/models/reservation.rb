class Reservation < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :users
  belongs_to :timeslots

  attr_accessible :user_id, :timeslot_id
end
