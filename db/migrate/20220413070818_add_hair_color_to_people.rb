class AddHairColorToPeople < ActiveRecord::Migration[7.0]
  def change
    add_column :people, :hair_color, :string
  end
end
