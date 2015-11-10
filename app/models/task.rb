class Task < ActiveRecord::Base

belongs_to :project
belongs_to :profile

#validate :check_due_date
#validates_presence_of :name, :due_date, :rating, :is_completed, :profile_id

	private

	def check_due_date
    if !self.due_date.nil? && self.due_date < project.start_date
  errors.add(:due_date, "Invalid, should not be less than #{project.start_date}")
	end
end


end
