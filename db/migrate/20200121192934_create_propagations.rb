class CreatePropagations < ActiveRecord::Migration[6.0]
  def change
    create_table :propagations do |t|
      t.string :tubers
      t.string :sprigs
      t.string :sod
      t.string :seed
      t.string :cuttings
      t.string :corms
      t.string :container
      t.string :bulbs
      t.string :bare_root

      t.timestamps
    end
  end
end
