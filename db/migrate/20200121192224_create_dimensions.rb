class CreateDimensions < ActiveRecord::Migration[6.0]
  def change
    create_table :dimensions do |t|
      t.float :ft
      t.float :cm

      t.timestamps
    end
  end
end
