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

ActiveRecord::Schema.define(version: 20160225165225) do

  create_table "academics", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "grade"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "resourse_id"
    t.integer  "profile_id"
  end

  add_index "academics", ["profile_id"], name: "index_academics_on_profile_id"
  add_index "academics", ["resourse_id"], name: "index_academics_on_resourse_id"

  create_table "languages", force: :cascade do |t|
    t.string   "name"
    t.integer  "porcent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.text     "summary"
    t.string   "phone"
    t.string   "cell_phone"
    t.string   "email"
    t.string   "city"
    t.string   "estate"
    t.date     "birthday"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "resourses", force: :cascade do |t|
    t.string   "resoursestype"
    t.string   "name"
    t.string   "email"
    t.string   "website"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

  create_table "trainings", force: :cascade do |t|
    t.string   "name"
    t.integer  "porcent"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "level"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "resourse_id"
    t.integer  "profile_id"
  end

  add_index "trainings", ["profile_id"], name: "index_trainings_on_profile_id"
  add_index "trainings", ["resourse_id"], name: "index_trainings_on_resourse_id"

  create_table "works", force: :cascade do |t|
    t.string   "company"
    t.string   "roles"
    t.date     "start_date"
    t.date     "end_date"
    t.text     "tasks"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "resourse_id"
    t.integer  "profile_id"
  end

  add_index "works", ["profile_id"], name: "index_works_on_profile_id"
  add_index "works", ["resourse_id"], name: "index_works_on_resourse_id"

end
