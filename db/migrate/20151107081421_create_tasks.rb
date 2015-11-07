class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.date :due_date
      t.string :rating
      t.boolean :is_completed
      t.string :assigned_to
      t.integer :project_id
      t.integer :profile_id

      t.timestamps null: false
    end
  end
end
