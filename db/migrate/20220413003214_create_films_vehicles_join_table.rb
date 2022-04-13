class CreateFilmsVehiclesJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :films, :vehicles
  end
end
