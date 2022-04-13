class CreatePlanets < ActiveRecord::Migration[7.0]
  def change
    create_table :planets do |t|
      t.string :climate
      t.datetime :created
      t.string :diameter
      t.datetime :edited
      t.string :gravity
      t.string :name
      t.string :orbital_period
      t.string :population
      t.string :rotation_period
      t.string :surface_water
      t.string :terrain
      t.string :url

      t.timestamps
    end
  end
end
