class CreatePeopleVehiclesJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :people, :vehicles
  end
end
