class AddColumnSpeciesIdToFlower < ActiveRecord::Migration[6.0]
  def change
    add_column :flowers, :species_id, :integer
  end
end
