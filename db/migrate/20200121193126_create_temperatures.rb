class CreateTemperatures < ActiveRecord::Migration[6.0]
  def change
    create_table :temperatures do |t|
      t.float :deg_f
      t.float :deg_c

      t.timestamps
    end
  end
end
