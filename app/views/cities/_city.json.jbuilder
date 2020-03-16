#json.extract! city, :id, :title, :created_at, :updated_at
#json.url city_url(city, format: :json)

json.cache! city do
  json.title city.title
  json.id city.id
end
