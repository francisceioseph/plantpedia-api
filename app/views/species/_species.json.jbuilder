json.id                 species.id
json.scientific_name    species.scientific_name
json.common_name        species.common_name
json.native_status      species.native_status
json.description        species.description.body
json.species_images     species.species_images
json.flower             json.extract! species.flower, :id, :conspicuous, :color
json.foliage            json.extract! species.foliage, :id, :texture, :porosity_winter, :porosity_summer, :color
json.propagation        json.extract! species.propagation, :id, :tubers, :sprigs, :sod, :seed, :cuttings, :corms, :container, :bulbs, :bare_root
json.growth             json.extract! species.growth, :id, :shade_tolerance, :salinity_tolerance, :ph_minimum, :ph_maximum, :moisture_use
json.created_at         species.created_at
json.updated_at         species.updated_at
json.url                species_url(species, format: :json)
