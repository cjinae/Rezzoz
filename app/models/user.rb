class User < ActiveRecord::Base
  has_many :reservations

  attr_accessible :email, :name

  validates :name, :presence => true
  validates :email, :presence => true
end
