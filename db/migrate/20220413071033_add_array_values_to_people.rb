class AddArrayValuesToPeople < ActiveRecord::Migration[7.0]
  def change
    add_column :people, :species, :string, array: true, default: []
    add_column :people, :vehicles, :string, array: true, default: []
    add_column :people, :starships, :string, array: true, default: []
  end
end
