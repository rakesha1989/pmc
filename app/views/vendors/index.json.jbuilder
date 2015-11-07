json.array!(@vendors) do |vendor|
  json.extract! vendor, :id, :name, :company, :email, :web, :phone, :is_po_released, :user_id
  json.url vendor_url(vendor, format: :json)
end
