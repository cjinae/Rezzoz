class Reservation < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :users, :timeslots

end
