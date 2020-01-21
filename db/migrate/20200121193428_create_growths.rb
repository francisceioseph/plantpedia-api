class CreateGrowths < ActiveRecord::Migration[6.0]
  def change
    create_table :growths do |t|
      t.string :shade_tolerance
      t.string :salinity_tolerance
      t.float :ph_minimum
      t.float :ph_maximum
      t.string :moisture_use

      t.timestamps
    end
  end
end
