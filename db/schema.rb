# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170609155239) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "restaurants", force: :cascade do |t|
    t.string "restaurant_name", limit: 200, null: false
    t.string "cuisine_type", limit: 20, null: false
    t.string "location", null: false
    t.string "price", limit: 4, null: false
    t.string "opening_times", null: false
    t.float "latitude", null: false
    t.float "longitude", null: false
    t.string "post_code"
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "restaurant_id"
    t.string "restaurant_name", limit: 200, null: false
    t.string "cuisine_type", limit: 20, null: false
    t.string "location", null: false
    t.string "price", limit: 4, null: false
    t.string "opening_times", null: false
    t.text "review_text", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "post_code"
    t.index ["restaurant_id"], name: "index_reviews_on_restaurant_id"
  end

  add_foreign_key "reviews", "restaurants"
end
