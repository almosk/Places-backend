class AddCoverToCollections < ActiveRecord::Migration[6.0]
  def change
    add_column :collections, :cover, :string
  end
end
