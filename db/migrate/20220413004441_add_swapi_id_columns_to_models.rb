class AddSwapiIdColumnsToModels < ActiveRecord::Migration[7.0]
  def change
    add_column :films, :swapi_id, :integer
    add_column :people, :swapi_id, :integer
    add_column :planets, :swapi_id, :integer
    add_column :species, :swapi_id, :integer
    add_column :starships, :swapi_id, :integer
    add_column :vehicles, :swapi_id, :integer
  end
end
