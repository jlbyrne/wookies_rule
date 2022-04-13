class CreateFilms < ActiveRecord::Migration[7.0]
  def change
    create_table :films do |t|
      t.datetime :created
      t.string :director
      t.datetime :edited
      t.integer :episode_id
      t.text :opening_crawl
      t.string :producer
      t.datetime :release_date
      t.string :title
      t.string :url

      t.timestamps
    end
  end
end
