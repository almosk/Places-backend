class CreateJoinTableCollectionPost < ActiveRecord::Migration[6.0]
  def change
    create_join_table :collections, :posts do |t|
      # t.index [:collection_id, :post_id]
      # t.index [:post_id, :collection_id]
    end
  end
end
