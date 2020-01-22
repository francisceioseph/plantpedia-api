class AddSpeciesIdToFoliages < ActiveRecord::Migration[6.0]
  def change
    add_column :foliages, :species_id, :integer
  end
end
