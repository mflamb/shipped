class Schedule < ApplicationRecord
  belongs_to :job
  belongs_to :boat

  validates :boat_id, uniqueness: {scope: :job_id}
end
