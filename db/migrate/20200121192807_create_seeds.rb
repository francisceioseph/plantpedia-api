class CreateSeeds < ActiveRecord::Migration[6.0]
  def change
    create_table :seeds do |t|
      t.string :vegetative_spread_rate
      t.string :small_grain
      t.string :seeds_per_kilo
      t.string :seedling_vigor
      t.string :seed_spread_rate
      t.string :commercial_availability
      t.string :bloom_period

      t.timestamps
    end
  end
end
