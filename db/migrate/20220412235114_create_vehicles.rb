class CreateVehicles < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicles do |t|
      t.string :cargo_capacity
      t.string :consumables
      t.string :cost_in_credits
      t.datetime :created
      t.string :crew
      t.datetime :edited
      t.string :length
      t.string :manufacturer
      t.string :max_atmosphering_speed
      t.string :model
      t.string :name
      t.string :passengers
      t.string :url
      t.string :vehicle_class

      t.timestamps
    end
  end
end
