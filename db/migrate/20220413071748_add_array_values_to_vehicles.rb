class AddArrayValuesToVehicles < ActiveRecord::Migration[7.0]
  def change
    add_column :vehicles, :films, :string, array: true, default: []
    add_column :vehicles, :pilots, :string, array: true, default: []
  end
end
