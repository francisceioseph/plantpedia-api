class RemovePolymorphicImages < ActiveRecord::Migration[6.0]
  def change
    drop_table :images
  end
end
