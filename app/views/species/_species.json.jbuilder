json.id                 species.id
json.scientific_name    species.scientific_name
json.common_name        species.common_name
json.native_status      species.native_status
json.description        species.description.body
json.species_images     species.species_images
json.created_at         species.created_at
json.updated_at         species.updated_at
json.url                species_url(species, format: :json)

json.flower do
    json.id             species.flower.id
    json.conspicuous    species.flower.conspicuous
    json.color          species.flower.color
end

json.foliage do
    json.id                 species.foliage.id
    json.texture            species.foliage.texture
    json.porosity_winter    species.foliage.porosity_winter
    json.porosity_summer    species.foliage.porosity_summer
    json.color              species.foliage.color
end

json.propagation do
    json.id         species.propagation.id
    json.tubers     species.propagation.tubers                        
    json.sprigs     species.propagation.sprigs            
    json.sod        species.propagation.sod
    json.seed       species.propagation.seed
    json.cuttings   species.propagation.cuttings
    json.corms      species.propagation.corms
    json.container  species.propagation.container
    json.bulbs      species.propagation.bulbs
    json.bare_root  species.propagation.bare_root
end

json.growth do
    json.id                     species.growth.id
    json.shade_tolerance        species.growth.shade_tolerance
    json.salinity_tolerance     species.growth.salinity_tolerance
    json.ph_minimum             species.growth.ph_minimum
    json.ph_maximum             species.growth.ph_maximum
    json.moisture_use           species.growth.moisture_use
end
