class AddMissingBelongsToIds < ActiveRecord::Migration[6.0]
  def change
    add_column :plant_images, :plant_id, :integer
    add_column :species_images, :species_id, :integer
  end
end
