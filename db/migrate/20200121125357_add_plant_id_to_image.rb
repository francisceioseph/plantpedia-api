class AddPlantIdToImage < ActiveRecord::Migration[6.0]
  def change
    add_column :images, :plant_id, :integer
  end
end
