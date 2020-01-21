class CreateFlowers < ActiveRecord::Migration[6.0]
  def change
    create_table :flowers do |t|
      t.string :conspicuous
      t.string :color

      t.timestamps
    end
  end
end
