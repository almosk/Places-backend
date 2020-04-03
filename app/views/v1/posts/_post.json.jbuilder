json.id           post.id
json.title        post.title
json.user_id      post.user_id
json.user_title   User.all.find(post.user_id).title
json.url          v1_post_url(Post.find(post.id), format: :json)
