class Client < ActiveRecord::Base

has_many :projects
belongs_to :user

before_destroy :delete_child
validates_presence_of :name, :company, :email, :web, :phone
validates_numericality_of :phone 
validates_length_of :phone, is: 10
validates_uniqueness_of :email, :company
validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }

def list
Project.where('client_id =?',id)
end
def list_name
Project.where('client_id =?',id).pluck(:name)
end


private 
def delete_child

@projects = Project.where("client_id = ?", id)
for project in @projects
Task.where("project_id =?" , project.id).delete_all
end
 Project.where("client_id = ?", id).delete_all
end


end
