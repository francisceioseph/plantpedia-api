json.extract! plant, :id, :scientific_name, :common_name, :native_status, :created_at, :updated_at
json.url plant_url(plant, format: :json)
