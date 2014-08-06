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

ActiveRecord::Schema.define(version: 20140805234310) do

  create_table "cards", force: true do |t|
    t.string   "name"
    t.text     "types"
    t.integer  "cmc"
    t.string   "cost"
    t.string   "text"
    t.text     "formats"
    t.text     "editions"
    t.integer  "collection_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "collections", force: true do |t|
    t.integer  "user_id"
    t.integer  "mutliverseid"
    t.integer  "quantity"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "cards_id"
  end

  add_index "collections", ["cards_id"], name: "index_collections_on_cards_id"

  create_table "mtg_card_types", force: true do |t|
    t.integer  "mtg_card_id"
    t.integer  "mtg_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mtg_cards", force: true do |t|
    t.string   "name"
    t.string   "gatherer_url"
    t.string   "multiverse_id"
    t.string   "gatherer_image_url"
    t.string   "mana_cost"
    t.string   "converted_cost"
    t.text     "oracle_text"
    t.text     "flavor_text"
    t.string   "mark"
    t.string   "power"
    t.string   "toughness"
    t.string   "loyalty"
    t.string   "rarity"
    t.string   "transformed_id"
    t.string   "colors"
    t.string   "artist"
    t.integer  "mtg_set_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mtg_sets", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mtg_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "password"
    t.integer  "collection_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "cards_id"
  end

  add_index "users", ["cards_id"], name: "index_users_on_cards_id"
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
