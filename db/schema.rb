# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_04_13_004441) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "films", force: :cascade do |t|
    t.datetime "created"
    t.string "director"
    t.datetime "edited"
    t.integer "episode_id"
    t.text "opening_crawl"
    t.string "producer"
    t.datetime "release_date"
    t.string "title"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "swapi_id"
  end

  create_table "films_people", id: false, force: :cascade do |t|
    t.bigint "person_id", null: false
    t.bigint "film_id", null: false
  end

  create_table "films_planets", id: false, force: :cascade do |t|
    t.bigint "film_id", null: false
    t.bigint "planet_id", null: false
  end

  create_table "films_species", id: false, force: :cascade do |t|
    t.bigint "film_id", null: false
    t.bigint "species_id", null: false
  end

  create_table "films_starships", id: false, force: :cascade do |t|
    t.bigint "film_id", null: false
    t.bigint "starship_id", null: false
  end

  create_table "films_vehicles", id: false, force: :cascade do |t|
    t.bigint "film_id", null: false
    t.bigint "vehicle_id", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "birth_year"
    t.string "eye_color"
    t.string "gender"
    t.string "height"
    t.string "homeworld"
    t.string "mass"
    t.string "name"
    t.string "skin_color"
    t.datetime "created"
    t.datetime "edited"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "planet_id"
    t.integer "swapi_id"
    t.index ["planet_id"], name: "index_people_on_planet_id"
  end

  create_table "people_species", id: false, force: :cascade do |t|
    t.bigint "person_id", null: false
    t.bigint "species_id", null: false
  end

  create_table "people_starships", id: false, force: :cascade do |t|
    t.bigint "person_id", null: false
    t.bigint "starship_id", null: false
  end

  create_table "people_vehicles", id: false, force: :cascade do |t|
    t.bigint "person_id", null: false
    t.bigint "vehicle_id", null: false
  end

  create_table "planets", force: :cascade do |t|
    t.string "climate"
    t.datetime "created"
    t.string "diameter"
    t.datetime "edited"
    t.string "gravity"
    t.string "name"
    t.string "orbital_period"
    t.string "population"
    t.string "rotation_period"
    t.string "surface_water"
    t.string "terrain"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "swapi_id"
  end

  create_table "species", force: :cascade do |t|
    t.string "average_height"
    t.string "average_lifespan"
    t.string "classification"
    t.datetime "created"
    t.string "designation"
    t.datetime "edited"
    t.string "eye_colors"
    t.string "hair_colors"
    t.string "homeworld"
    t.string "language"
    t.string "name"
    t.string "skin_colors"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "swapi_id"
  end

  create_table "starships", force: :cascade do |t|
    t.string "mglt"
    t.string "cargo_capacity"
    t.string "consumables"
    t.string "cost_in_credits"
    t.datetime "created"
    t.string "crew"
    t.datetime "edited"
    t.string "hyperdrive_rating"
    t.string "length"
    t.string "manufacturer"
    t.string "max_atmosphering_speed"
    t.string "model"
    t.string "name"
    t.string "passengers"
    t.string "starship_class"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "swapi_id"
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "cargo_capacity"
    t.string "consumables"
    t.string "cost_in_credits"
    t.datetime "created"
    t.string "crew"
    t.datetime "edited"
    t.string "length"
    t.string "manufacturer"
    t.string "max_atmosphering_speed"
    t.string "model"
    t.string "name"
    t.string "passengers"
    t.string "url"
    t.string "vehicle_class"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "swapi_id"
  end

  add_foreign_key "people", "planets"
end
