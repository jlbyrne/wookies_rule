class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string :birth_year
      t.string :eye_color
      t.string :gender
      t.string :height
      t.string :homeworld
      t.string :mass
      t.string :name
      t.string :skin_color
      t.datetime :created
      t.datetime :edited
      t.string :url
      

      t.timestamps
    end
  end
end
