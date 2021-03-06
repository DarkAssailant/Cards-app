# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160729171605) do

  create_table "developers", force: :cascade do |t|
    t.string "soid", null: false
    t.string "name"
  end

  add_index "developers", ["soid"], name: "index_developers_on_soid", unique: true

  create_table "mrves", primary_key: "mrf_number", force: :cascade do |t|
    t.string   "description"
    t.integer  "pss_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "developer_id"
    t.integer  "defect_counter", default: 0,     null: false
    t.integer  "asset_updates",  default: 0,     null: false
    t.boolean  "moved",          default: false, null: false
  end

  create_table "mrves_hours", force: :cascade do |t|
    t.integer "hours",        default: 0, null: false
    t.date    "day"
    t.integer "mrf_id"
    t.string  "developer_id"
  end

  add_index "mrves_hours", ["mrf_id"], name: "index_mrves_hours_on_mrf_id"

  create_table "psses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
