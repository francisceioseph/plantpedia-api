class CreatePlantImages < ActiveRecord::Migration[6.0]
  def change
    create_table :plant_images do |t|
      t.string :url

      t.timestamps
    end
  end
end
