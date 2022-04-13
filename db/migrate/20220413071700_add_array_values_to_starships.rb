class AddArrayValuesToStarships < ActiveRecord::Migration[7.0]
  def change
    add_column :starships, :films, :string, array: true, default: []
    add_column :starships, :pilots, :string, array: true, default: []
  end
end
