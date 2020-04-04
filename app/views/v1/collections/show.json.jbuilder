json.id           @collection.id
json.title        @collection.title
# json.description @collection.description
json.user_id      @collection.user_id
json.user_title   @user_title
json.url          v1_collection_url(@collection, format: :json)
json.posts @posts do |post|
  json.partial!     "v1/posts/post", post: post
end
# json.posts @posts do |post|
#   json.id post.id
#   json.title post.title
#   # json.user (User.find(post['user_id'])
#   json.url post_url(Post.find(@collection['id']), format: :json)
# end
