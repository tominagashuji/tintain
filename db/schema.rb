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

ActiveRecord::Schema.define(version: 20180816084406) do

  create_table "nearest_stations", force: :cascade do |t|
    t.string   "line",            default: "", null: false
    t.string   "name",            default: "", null: false
    t.integer  "walking_minutes",              null: false
    t.integer  "property_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["name"], name: "index_nearest_stations_on_name"
    t.index ["property_id"], name: "index_nearest_stations_on_property_id"
    t.index ["walking_minutes"], name: "index_nearest_stations_on_walking_minutes"
  end

  create_table "properties", force: :cascade do |t|
    t.string   "name",       default: "", null: false
    t.integer  "price",                   null: false
    t.string   "address",    default: "", null: false
    t.integer  "age",                     null: false
    t.text     "remarks",    default: "", null: false
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["address"], name: "index_properties_on_address"
    t.index ["age"], name: "index_properties_on_age"
    t.index ["price"], name: "index_properties_on_price"
  end

end
