class Vendor < ActiveRecord::Base

belongs_to :user

validates_presence_of :name, :company, :email, :web, :phone, :is_po_released
validates_numericality_of :phone 
validates_length_of :phone, is: 10
validates_uniqueness_of :email, :company
validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }

end
