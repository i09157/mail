json.array!(@hierarchies) do |hierarchy|
  json.extract! hierarchy, :p_id, :gname
  json.url hierarchy_url(hierarchy, format: :json)
end
