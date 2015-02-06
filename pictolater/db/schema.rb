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

ActiveRecord::Schema.define(version: 20150206165724) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: true do |t|
    t.integer  "photo_id",     null: false
    t.integer  "commenter_id", null: false
    t.string   "body",         null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["photo_id"], name: "index_comments_on_photo_id", using: :btree

  create_table "logins", force: true do |t|
    t.integer "user_id",       null: false
    t.string  "session_token", null: false
  end

  add_index "logins", ["session_token"], name: "index_logins_on_session_token", using: :btree
  add_index "logins", ["user_id"], name: "index_logins_on_user_id", using: :btree

  create_table "photos", force: true do |t|
    t.integer  "owner_id",      null: false
    t.string   "url",           null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cloudinary_id"
  end

  add_index "photos", ["owner_id"], name: "index_photos_on_owner_id", using: :btree

  create_table "profiles", force: true do |t|
    t.integer "owner_id"
    t.string  "title"
  end

  add_index "profiles", ["owner_id"], name: "index_profiles_on_owner_id", using: :btree

  create_table "users", force: true do |t|
    t.string "email",           null: false
    t.string "username",        null: false
    t.string "password_digest", null: false
    t.string "session_token",   null: false
  end

end
