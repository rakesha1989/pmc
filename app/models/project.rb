class Project < ActiveRecord::Base

has_many :tasks
has_many :project_categories
has_many :categories, through: :project_categories
belongs_to :user
belongs_to :client





def details
	"#{assigned_to} - #{status} - #{start_date} - #{description} - #{location} - #{Client.find(client_id).name}"
end

end
