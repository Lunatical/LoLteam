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

ActiveRecord::Schema.define(version: 20130829072115) do

  create_table "champions", force: true do |t|
    t.string   "name"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matches", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mychampions", force: true do |t|
    t.integer  "users_id"
    t.string   "champions_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "name",                   null: false
    t.integer  "win",        default: 0
    t.integer  "lose",       default: 0
    t.string   "leader"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_champions", force: true do |t|
    t.integer  "user_id"
    t.integer  "champion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_champions", ["champion_id"], name: "index_user_champions_on_champion_id"
  add_index "user_champions", ["user_id"], name: "index_user_champions_on_user_id"

  create_table "users", force: true do |t|
    t.string   "email",            null: false
    t.string   "username"
    t.string   "crypted_password"
    t.string   "salt"
    t.string   "top"
    t.string   "ap"
    t.string   "jungle"
    t.string   "mom"
    t.string   "ad"
    t.integer  "team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["team_id"], name: "index_users_on_team_id"

end
