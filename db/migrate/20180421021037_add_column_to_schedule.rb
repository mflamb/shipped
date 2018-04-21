class AddColumnToSchedule < ActiveRecord::Migration[5.2]
  def change
    add_column :schedules, :boat_id, :integer
    add_column :schedules, :job_id, :integer

  end
end
