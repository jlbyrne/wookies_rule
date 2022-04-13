class CreateFilmsSpeciesJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :films, :species
  end
end
