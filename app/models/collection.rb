class Collection < ApplicationRecord
  belongs_to :city
  belongs_to :user
  # has_and_belongs_to_many :posts
  has_many :collection_posts
  has_many :posts, through: :collection_posts
end
