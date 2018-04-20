class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.string :origin
      t.string :destination
      t.integer :containers
      t.references :users, foreign_key: true

      t.timestamps
    end
  end
end
