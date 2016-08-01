json.extract! patient, :id, :name, :surname, :address, :gender, :birthdate, :phone, :starting_therapy_day, :created_at, :updated_at
json.url patient_url(patient, format: :json)