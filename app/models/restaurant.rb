class Restaurant < ActiveRecord::Base
  has_many :timeslots
  has_and_belongs_to_many :categories

  attr_accessible :name

end
