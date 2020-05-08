class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :collections
  has_many :cities, through: :collections
  has_many :posts

  mount_uploader :avatar, AvatarUploader

  include Rails.application.routes.url_helpers

  # def post_show_json
  #   {
  #     id: id,
  #     title: title,
  #     description: description,
  #     place_id: place_id,
  #     user_id: user_id,
  #     user_title: user.title,
  #
  #     collections: collections.collect { |c| c.collection_snippet_json}
  #   }
  # end

  def user_snippet_json
    url = 'http://localhost:3000' + v1_user_path(self, format: :json)
    {
      id: id,
      title: title,
      collections_quantity: collections.size,
      posts_quantity: posts.size,
      avatar: 'http://localhost:3000' + avatar.to_s,
      url: url,
    }
  end
end
