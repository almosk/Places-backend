class Post < ApplicationRecord
  # has_and_belongs_to_many :collections
  has_many :collection_posts
  has_many :collections, through: :collection_posts
  belongs_to :user
  belongs_to :place
end
