class CreateSpeciesImages < ActiveRecord::Migration[6.0]
  def change
    create_table :species_images do |t|
      t.string :url

      t.timestamps
    end
  end
end
