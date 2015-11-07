json.array!(@profiles) do |profile|
  json.extract! profile, :id, :title, :fullname, :gender, :designation, :d_o_b, :task_id, :user_id
  json.url profile_url(profile, format: :json)
end
