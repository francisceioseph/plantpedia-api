class AddSpeciesIdToPropagation < ActiveRecord::Migration[6.0]
  def change
    add_column :propagations, :species_id, :integer
  end
end
