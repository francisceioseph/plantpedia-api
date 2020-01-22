class CreateAddColumnSpeciesIdToFoliages < ActiveRecord::Migration[6.0]
  def change
    create_table :add_column_species_id_to_foliages do |t|

      t.timestamps
    end
  end
end
