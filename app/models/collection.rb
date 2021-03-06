class Collection < ApplicationRecord
  belongs_to :city
  belongs_to :user
  # has_and_belongs_to_many :posts
  has_many :collection_posts
  has_many :posts, through: :collection_posts

  include Rails.application.routes.url_helpers

  mount_uploader :cover, CollectionCoverUploader

  def collection_show_json
    {
      id: id,
      title: title,
      cover: 'http://localhost:3000' + cover.to_s,
      user_id: user_id,
      user_title: user.title,
      description: description,

      posts: posts.collect { |p| p.post_snippet_json}
    }
  end

  def collection_snippet_json
    url = 'http://localhost:3000' + v1_collection_path(self, format: :json)
    {
      id: id,
      title: title,
      cover: 'http://localhost:3000' + cover.to_s,
      user: user.user_snippet_json,
      user_id: user_id,
      user_title: user.title,
      posts_quantity: posts.size,
      url: url
    }
  end
end
