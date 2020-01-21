class CreateFoliages < ActiveRecord::Migration[6.0]
  def change
    create_table :foliages do |t|
      t.string :texture
      t.string :porosity_winter
      t.string :porosity_summer
      t.string :color

      t.timestamps
    end
  end
end
