class Post < ApplicationRecord
  has_and_belongs_to_many :collections
  belongs_to :user
  belongs_to :place
end
