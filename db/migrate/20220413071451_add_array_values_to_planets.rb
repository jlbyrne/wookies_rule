class AddArrayValuesToPlanets < ActiveRecord::Migration[7.0]
  def change
    add_column :planets, :residents, :string, array: true, default: []
    add_column :planets, :films, :string, array: true, default: []
  end
end
