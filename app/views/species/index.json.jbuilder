josn.array! @species do |s|
    json.(s, :id, :scientific_name, :common_name, :native_status)
end