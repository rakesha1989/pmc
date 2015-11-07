class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :company
      t.string :email
      t.string :web
      t.string :phone
      t.boolean :is_po_released
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
