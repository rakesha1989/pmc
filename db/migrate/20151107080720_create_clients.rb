class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :company
      t.string :email
      t.string :web
      t.string :phone
      t.integer :user_id

      t.timestamps null: false
    end
  end
end