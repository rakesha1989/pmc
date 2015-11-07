class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :title
      t.string :fullname
      t.string :gender
      t.string :designation
      t.date :d_o_b
      t.integer :task_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
