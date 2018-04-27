class Boat < ApplicationRecord
  belongs_to :user
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  has_many :schedules, dependent: :destroy
  has_many :jobs, through: :schedules

  validates :name, length: {minimum: 4}, uniqueness: true
  validates :capacity, numericality: { greater_than_or_equal_to: 1,  only_integer: true}

  PORTS= [ "Long Beach", "Los Angeles", "New York", "New Jersey", "Houston", "Oakland", "Tacoma", "Philadelphia", "Detroit", "Puerto Rico‎", "Hawaii" ]
end

=begin
boats must have a unique name
boat locations must be pulled from a valid list of locations
=end
