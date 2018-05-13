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

ActiveRecord::Schema.define(version: 20180512071343) do

  create_table "eventposts", force: :cascade do |t|
    t.string   "title"
    t.text     "contents"
    t.string   "runtime"
    t.string   "location"
    t.string   "mainimage"
    t.string   "image2"
    t.string   "image3"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "host"
  end

  add_index "eventposts", ["user_id"], name: "index_eventposts_on_user_id"

  create_table "fleemarkets", force: :cascade do |t|
    t.string   "category"
    t.string   "time"
    t.string   "location"
    t.text     "explain"
    t.string   "mainimage"
    t.string   "image2"
    t.string   "image3"
    t.string   "price"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  add_index "fleemarkets", ["user_id"], name: "index_fleemarkets_on_user_id"

  create_table "lostcomments", force: :cascade do |t|
    t.text     "content"
    t.integer  "user_id"
    t.integer  "lostpost_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "lostcomments", ["lostpost_id"], name: "index_lostcomments_on_lostpost_id"
  add_index "lostcomments", ["user_id"], name: "index_lostcomments_on_user_id"

  create_table "lostposts", force: :cascade do |t|
    t.string   "goal"
    t.string   "group"
    t.string   "title"
    t.text     "content"
    t.string   "location"
    t.string   "image"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "lostposts", ["user_id"], name: "index_lostposts_on_user_id"

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end