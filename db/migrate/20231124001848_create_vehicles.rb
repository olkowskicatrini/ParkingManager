class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :plate
      t.string :color
      t.string :model
      t.integer :year

      t.timestamps
    end
  end
end
