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

ActiveRecord::Schema.define(version: 20150901210900) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "menu_items", force: :cascade do |t|
    t.string   "name"
    t.float    "price"
    t.integer  "restaurant_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "restaurants", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
    t.integer  "menu_item_id"
    t.integer  "temp_id"
  end

  add_index "restaurants", ["menu_item_id"], name: "index_restaurants_on_menu_item_id", using: :btree
  add_index "restaurants", ["temp_id"], name: "index_restaurants_on_temp_id", using: :btree

  create_table "temps", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "restaurant_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.text     "menu"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "name"
    t.string   "password_digest"
    t.string   "account_type"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "visit_id"
    t.integer  "temp_id"
  end

  add_index "users", ["temp_id"], name: "index_users_on_temp_id", using: :btree
  add_index "users", ["visit_id"], name: "index_users_on_visit_id", using: :btree

  create_table "visits", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "restaurant_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.text     "menu"
  end

  add_foreign_key "restaurants", "menu_items"
  add_foreign_key "restaurants", "temps"
  add_foreign_key "users", "temps"
  add_foreign_key "users", "visits"
end
