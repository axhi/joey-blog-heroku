json.array!(@organizations) do |organization|
  json.extract! organization, :id, :key_code, :name
  json.url organization_url(organization, format: :json)
end
