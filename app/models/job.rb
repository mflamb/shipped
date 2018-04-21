class Job < ApplicationRecord
  belongs_to :users
  has_many :schedules
  has_many :boats, through: :schedules
end
