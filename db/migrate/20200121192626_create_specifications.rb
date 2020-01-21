class CreateSpecifications < ActiveRecord::Migration[6.0]
  def change
    create_table :specifications do |t|
      t.string :toxicity
      t.string :shape_and_orientation
      t.string :nitrogen_fixation
      t.string :low_growing_grass
      t.string :lifespan
      t.string :leaf_retention
      t.string :growth_rate
      t.string :growth_period
      t.string :growth_habit
      t.string :growth_form
      t.string :fire_resistance
      t.string :fall_conspicuous
      t.string :coppiece_potential
      t.string :bloat

      t.timestamps
    end
  end
end
