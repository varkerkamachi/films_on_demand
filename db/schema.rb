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

ActiveRecord::Schema.define(version: 20170318020416) do

  create_table "film_ratings", force: true do |t|
    t.integer  "film_id"
    t.integer  "user_id"
    t.string   "title"
    t.text     "description"
    t.integer  "stars"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "film_ratings", ["film_id"], name: "index_film_ratings_on_film_id", using: :btree
  add_index "film_ratings", ["user_id"], name: "index_film_ratings_on_user_id", using: :btree

  create_table "film_relations", force: true do |t|
    t.integer  "film_id"
    t.integer  "related_film"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "film_relations", ["film_id"], name: "index_film_relations_on_film_id", using: :btree

  create_table "films", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "url_slug"
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "role"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
