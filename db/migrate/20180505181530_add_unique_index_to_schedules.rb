class AddUniqueIndexToSchedules < ActiveRecord::Migration[5.2]
  def change
    add_index :schedules, [:boat_id, :job_id], unique: true
  end
end
