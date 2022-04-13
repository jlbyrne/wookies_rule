class CreateSpecies < ActiveRecord::Migration[7.0]
  def change
    create_table :species do |t|
      t.string :average_height
      t.string :average_lifespan
      t.string :classification
      t.datetime :created
      t.string :designation
      t.datetime :edited
      t.string :eye_colors
      t.string :hair_colors
      t.string :homeworld
      t.string :language
      t.string :name
      t.string :skin_colors
      t.string :url

      t.timestamps
    end
  end
end
