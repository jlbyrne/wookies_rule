class AddFilmsToPeople < ActiveRecord::Migration[7.0]
  def change
    add_column :people, :films, :string, array: true, default: []
  end
end
