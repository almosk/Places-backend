json.id @collection.id
json.title @collection.title
# json.description @collection.description
json.user_id @collection.user_id
json.user_title @user_title
json.posts @posts do |post|
  json.id post.id
  json.title post.title
  # json.user (User.find(post['user_id'])
  json.url post_url(Post.find(collection['id']), format: :json)
end
