json.array!(@clients) do |client|
  json.extract! client, :id, :name, :company, :email, :web, :phone, :user_id
  json.url client_url(client, format: :json)
end
