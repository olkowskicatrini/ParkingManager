class AddResponsavelNameToVehicles < ActiveRecord::Migration[5.2]
  def change
    add_column :vehicles, :responsavel_name, :string
  end
end
