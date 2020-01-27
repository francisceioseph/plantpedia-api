json.extract! species, :id, :scientific_name, :common_name, :native_status, :species_images, :created_at, :updated_at
json.url species_url(species, format: :json)
