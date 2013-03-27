class Restaurant < ActiveRecord::Base
  attr_accessible :name

  has_many :timeslots
  has_and_belongs_to_many :categories

end
