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

ActiveRecord::Schema.define(version: 2021_04_17_205154) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "location_categories", force: :cascade do |t|
    t.string "name", null: false
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "waste_categories", force: :cascade do |t|
    t.string "name", null: false
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "waste_collection_points", force: :cascade do |t|
    t.string "name", null: false
    t.string "x", null: false
    t.string "y", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "location_category_id"
    t.index ["location_category_id"], name: "index_waste_collection_points_on_location_category_id"
  end

  create_table "waste_keywords", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "waste_category_id"
    t.index ["waste_category_id"], name: "index_waste_keywords_on_waste_category_id"
  end

end
