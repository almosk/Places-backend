# json.partial! "v1/posts/post", post: @post
# json.extract! @post, :id, :title, :place_id, :user_id, :created_at, :updated_at
json.merge! @post
