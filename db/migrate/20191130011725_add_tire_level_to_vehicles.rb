class AddTireLevelToVehicles < ActiveRecord::Migration[5.2]
  def change
    add_column :vehicles, :tire_level, :string
  end
end
