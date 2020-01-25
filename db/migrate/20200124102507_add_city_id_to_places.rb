class AddCityIdToPlaces < ActiveRecord::Migration[6.0]
  def change
    add_column :places, :city_id, :integer
  end
end
