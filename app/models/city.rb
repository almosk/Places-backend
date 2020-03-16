class City < ApplicationRecord
  validates :title, presence: true
  
  has_many :collections
  has_many :users, through: :collections
end
