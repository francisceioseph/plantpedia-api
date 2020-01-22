class AddSpeciesIdToGrowth < ActiveRecord::Migration[6.0]
  def change
    add_column :growths, :species_id, :integer
  end
end
