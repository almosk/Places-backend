json.extract! post, :id, :title, :place_id, :user_id, :created_at, :updated_at
json.url post_url(post, format: :json)
