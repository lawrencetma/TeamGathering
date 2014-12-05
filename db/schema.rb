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

ActiveRecord::Schema.define(version: 20141119172458) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "achievements", force: true do |t|
    t.string  "institution"
    t.string  "credential"
    t.text    "description"
    t.date    "year_completed"
    t.text    "awards"
    t.integer "users_id"
  end

  create_table "projects", force: true do |t|
    t.boolean  "private"
    t.boolean  "completed"
    t.string   "title"
    t.text     "summary"
    t.text     "details"
    t.date     "projected_start"
    t.date     "projected_end"
    t.string   "commitment_level"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.integer "users_id"
    t.integer "projects_id"
  end

  create_table "users", force: true do |t|
    t.string "email",           null: false
    t.string "password_digest", null: false
    t.string "first_name"
    t.string "last_name"
    t.text   "about"
    t.string "rating"
    t.string "current_project"
  end

end
