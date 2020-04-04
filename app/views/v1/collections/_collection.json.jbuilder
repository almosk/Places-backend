json.id           collection.id
json.title        collection.title
json.user_id      collection.user_id
json.user_title   User.all.find(collection.user_id).title
json.url          v1_collection_url(Collection.find(collection.id), format: :json)
