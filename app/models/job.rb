class Job < ApplicationRecord
  has_many :schedules
  has_many :boats, through: :schedules

  validates :name, length: {minimum: 4}, uniqueness: true
  validates :price, numericality: { greater_than_or_equal_to: 1000,  only_integer: true }
  validates :description, presence: true, length: { minimum: 50}
  validates :containers, numericality: { greater_than_or_equal_to: 1,  only_integer: true }

  FROM= ["Long Beach", "Los Angeles",  "New York",  "New Jersey",  "Houston", "Oakland", "Tacoma", "Philadelphia", "Detroit", "Puerto Rico‎", "Hawaii"] 
  TO= ["Long Beach", "Los Angeles", "New York", "New Jersey", "Houston", "Oakland", "Tacoma", "Philadelphia", "Detroit", "Puerto Rico‎", "Hawaii" ]
end



#check destination and origin against pre existing one



=begin
jobs must have a unique name
job price must be > $1000
job description must be at least 50 characters
job origin and destination must be pulled from a
list of valid locations
=end
