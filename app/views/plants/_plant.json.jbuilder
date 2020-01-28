json.id                 plant.id
json.scientific_name    plant.scientific_name
json.common_name        plant.common_name
json.native_status      plant.native_status
json.description        plant.description.body
json.plant_images       plant.plant_images
json.created_at         plant.created_at
json.updated_at         plant.updated_at
json.url                species_url(plant, format: :json)
