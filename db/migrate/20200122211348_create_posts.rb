class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.integer :place_id
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
