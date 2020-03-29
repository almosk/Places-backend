json.extract! collection_post, :id, :collection_id, :post_id, :created_at, :updated_at
json.url collection_post_url(collection_post, format: :json)
