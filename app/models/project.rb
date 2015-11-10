class Project < ActiveRecord::Base

has_many :tasks
has_many :project_categories
has_many :categories, through: :project_categories
belongs_to :user
belongs_to :client

#validates_presence_of :title, :location, :status, :start_date, :client_id, :description, :user_id
#validates_presence_of :start_date, message: "should be selected"
#validates_numericality_of :client_id, :user_id
#validates_uniqueness_of :title, scope_to: :client_id
#validate :check_start_date



def details
	"#{assigned_to} - #{status} - #{start_date} - #{description} - #{location} - #{Client.find(client_id).name}"
end

def self.show_projects(start_date,end_date)
	Project.where('start_date >= ? AND start_date <= ?', start_date,end_date)
end

def self.completed
	Task.where("is_completed = ?", true)

end

def self.incomplete
	Task.where("is_completed = ?", false)

end

def self.overdue(date)
	Task.where("due_date < ? AND is_completed = ?", date,false)

end

def self.completed_project(project)
	project.tasks.where("is_completed = ?", true)

end

def self.incomplete_project(project)
  project.tasks.where("is_completed = ?", false)
end

def self.overdue_project(date,project)
	project.tasks.where("due_date < ? AND is_completed = ?", date,false)
  
end
 private


 def check_start_date
if !self.start_date.nil? && self.start_date < Date.today
	errors.add(:start_date, "Date is invalid. Should not be less than #{Date.today}")
 end
end

end
