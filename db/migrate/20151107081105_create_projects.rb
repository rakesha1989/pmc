class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :description
      t.string :location
      t.date :start_date
      t.string :status
      t.string :assigned_to
      t.integer :user_id
      t.integer :client_id

      t.timestamps null: false
    end
  end
end
