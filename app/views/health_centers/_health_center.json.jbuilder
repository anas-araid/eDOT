json.extract! health_center, :id, :name, :address, :phone, :created_at, :updated_at
json.url health_center_url(health_center, format: :json)