class CreateSpecies < ActiveRecord::Migration[6.0]
  def change
    create_table :species do |t|
      t.string :duration
      t.string :common_name
      t.string :year
      t.string :type
      t.string :scientific_name
      t.string :native_status

      t.timestamps
    end
  end
end
