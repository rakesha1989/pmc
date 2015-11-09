class Profile < ActiveRecord::Base

belongs_to :user
has_many :tasks

validates_presence_of :fullname, :gender, :d_o_b, :designation, :user_id
end
