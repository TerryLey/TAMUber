class AddFillRateToVehicles < ActiveRecord::Migration[5.2]
  def change
    add_column :vehicles, :fill_rate, :string
  end
end
