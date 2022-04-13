class CreateFilmsPlanetsJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :films, :planets
  end
end
