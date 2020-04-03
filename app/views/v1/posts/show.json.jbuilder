json.id @post.id
json.title @post.title
json.description @post.description
json.place_id @post.place_id
json.user_id @post.user_id
json.user_title @user_title
json.collections @collections do |collection|
  json.id collection.id
  json.title collection.title
  # json.user (User.find(collection['user_id'])
  json.url collection_url(Collection.find(collection['id']), format: :json)
end
