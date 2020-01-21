class CreateFruitOrSeeds < ActiveRecord::Migration[6.0]
  def change
    create_table :fruit_or_seeds do |t|
      t.string :seed_persistence
      t.string :seed_period_begin
      t.string :seed_period_end
      t.string :seed_abundance
      t.string :color

      t.timestamps
    end
  end
end
