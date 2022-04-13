class AddArrayValuesToSpecies < ActiveRecord::Migration[7.0]
  def change
    add_column :species, :films, :string, array: true, default: []
    add_column :species, :people, :string, array: true, default: []
  end
end
