class User < ApplicationRecord
  has_many :collections
  has_many :cities, through: :collections
  has_many :posts
end
