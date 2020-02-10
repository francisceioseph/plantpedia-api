json.id                 species.id
json.scientific_name    species.scientific_name
json.common_name        species.common_name
json.native_status      species.native_status
json.description        species.description.body
json.species_images     species.species_images
json.created_at         species.created_at
json.updated_at         species.updated_at
json.url                species_url(species, format: :json)

json.flower @species.flower do |f|
    json.id             f.id
    json.conspicuous    f.conspicuous
    json.color          f.color
end

json.foliage @species.foliage do |fo|
    json.id                 fo.id
    json.texture            fo.texture
    json.porosity_winter    fo.porosity_winter
    json.porosity_summer    fo.porosity_summer
    json.color              fo.color
end

json.propagation @species.propagation do |pr|
    json.id         pr.id
    json.tubers     pr.tubers                        
    json.sprigs     pr.sprigs            
    json.sod        pr.sod
    json.seed       pr.seed
    json.cuttings   pr.cuttings
    json.corms      pr.corms
    json.container  pr.container
    json.bulbs      pr.bulbs
    json.bare_root  pr.bare_root
end

json.growth @species.growth do |g|
    json.id                 g.id
    json.shade_tolerance    g.shade_tolerance
    json.salinity_tolerance g.salinity_tolerance
    json.ph_minimum         g.ph_minimum
    json.ph_maximum         g.ph_maximum
    json.moisture_use       g.moisture_use
end
