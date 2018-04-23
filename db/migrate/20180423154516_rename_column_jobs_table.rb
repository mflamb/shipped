class RenameColumnJobsTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :jobs, :users_id
  end
end
