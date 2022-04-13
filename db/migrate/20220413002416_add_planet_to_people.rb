class AddPlanetToPeople < ActiveRecord::Migration[7.0]
  def change
    add_reference :people, :planet, foreign_key: true
  end
end
