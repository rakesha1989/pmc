json.array!(@tasks) do |task|
  json.extract! task, :id, :name, :due_date, :rating, :is_completed, :assigned_to, :project_id, :profile_id
  json.url task_url(task, format: :json)
end
