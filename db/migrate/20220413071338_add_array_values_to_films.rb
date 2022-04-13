class AddArrayValuesToFilms < ActiveRecord::Migration[7.0]
  def change
    add_column :films, :characters, :string, array: true, default: []
    add_column :films, :planets, :string, array: true, default: []
    add_column :films, :species, :string, array: true, default: []
    add_column :films, :vehicles, :string, array: true, default: []
    add_column :films, :starships, :string, array: true, default: []
  end
end
