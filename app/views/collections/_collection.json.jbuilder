json.extract! collection, :id, :title, :city_id, :user_id, :created_at, :updated_at
json.url collection_url(collection, format: :json)
