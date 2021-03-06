class Post < ApplicationRecord
  # has_and_belongs_to_many :collections
  has_many :collection_posts
  has_many :collections, through: :collection_posts
  belongs_to :user, :optional => true
  belongs_to :place

  include Rails.application.routes.url_helpers
  mount_uploader :cover, PostCoverUploader


  def post_show_json
    {
      id: id,
      title: title,
      description: description,
      cover: 'http://localhost:3000' + cover.to_s,
      place_id: place_id,
      user: user.user_snippet_json,
      user_id: user_id,
      user_title: user.title,

      collections: collections.collect { |c| c.collection_snippet_json}
    }
  end

  def post_snippet_json
    url = 'http://localhost:3000' + v1_post_path(self, format: :json)
    {
      id: id,
      title: title,
      cover: 'http://localhost:3000' + cover.to_s,
      user: user.user_snippet_json,
      user_id: user_id,
      user_title: user.title,
      user_collection: (collections.select{ |c| c.user_id == user.id }.any? ? collections.select{ |c| c.user_id == user.id }.first.title : ''),
      description: description,
      latitude: latitude,
      longitude: longitude,
      url: url
    }
  end
end
