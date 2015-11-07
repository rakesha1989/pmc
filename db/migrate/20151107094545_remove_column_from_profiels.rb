class RemoveColumnFromProfiels < ActiveRecord::Migration
  def change
  	remove_column :profiles, :task_id
  end
end
