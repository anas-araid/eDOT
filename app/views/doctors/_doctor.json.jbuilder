json.extract! doctor, :id, :name, :birthdate, :phone, :gender, :health_center_id, :created_at, :updated_at
json.url doctor_url(doctor, format: :json)