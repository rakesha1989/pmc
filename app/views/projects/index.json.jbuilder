json.array!(@projects) do |project|
  json.extract! project, :id, :title, :description, :location, :start_date, :status, :assigned_to, :user_id, :client_id
  json.url project_url(project, format: :json)
end
