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

ActiveRecord::Schema.define(version: 20140814170955) do

  create_table "players", force: true do |t|
    t.integer  "rank",                 default: 0
    t.string   "name"
    t.integer  "completions",          default: 0
    t.integer  "passing_yards",        default: 0
    t.integer  "passing_touchdowns",   default: 0
    t.integer  "interceptions",        default: 0
    t.integer  "rushes",               default: 0
    t.integer  "rushing_yards",        default: 0
    t.integer  "rushing_touchdowns",   default: 0
    t.integer  "receptions",           default: 0
    t.integer  "receiving_yards",      default: 0
    t.integer  "receiving_touchdowns", default: 0
    t.integer  "points",               default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "teams", ["user_id"], name: "index_teams_on_user_id"

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
