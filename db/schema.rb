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

ActiveRecord::Schema[8.0].define(version: 2025_01_27_104347) do
  create_table "volcanos", force: :cascade do |t|
    t.integer "volcano_number"
    t.string "volcano_name"
    t.string "primary_volcano_type"
    t.integer "last_eruption_year"
    t.string "country"
    t.string "region"
    t.string "subregion"
    t.float "latitude"
    t.float "longitude"
    t.integer "elevation"
    t.string "tectonic_settings"
    t.string "evidence_category"
    t.string "major_rock_1"
    t.string "major_rock_2"
    t.string "major_rock_3"
    t.string "major_rock_4"
    t.string "major_rock_5"
    t.string "minor_rock_1"
    t.string "minor_rock_2"
    t.string "minor_rock_3"
    t.string "minor_rock_4"
    t.string "minor_rock_5"
    t.integer "population_within_5_km"
    t.integer "population_within_10_km"
    t.integer "population_within_30_km"
    t.integer "population_within_100_km"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
