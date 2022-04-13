class CreatePeopleStarshipsJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :people, :starships
  end
end
