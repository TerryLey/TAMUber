class AddBatteryLevelToVehicles < ActiveRecord::Migration[5.2]
  def change
    add_column :vehicles, :battery_level, :string
  end
end
