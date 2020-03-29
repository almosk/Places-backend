class CollectionPost < ApplicationRecord
  belongs_to :post
  belongs_to :collection
end
