json.id                 species.id
json.scientific_name    species.scientific_name
json.common_name        species.common_name
json.native_status      species.native_status
json.description        species.description.body
json.species_images     species.species_images
json.flower             species.flower
json.foliage            species.foliage
json.propagation        species.propagation
json.growth             species.growth
json.created_at         species.created_at
json.updated_at         species.updated_at
json.url                species_url(species, format: :json)
