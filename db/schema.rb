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

ActiveRecord::Schema.define(version: 20160519123209) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: :cascade do |t|
    t.text     "first_name",     null: false
    t.text     "last_name"
    t.integer  "smfa_id_number"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "url_slug"
  end

  create_table "artists_artworks", id: false, force: :cascade do |t|
    t.integer "artist_id",  null: false
    t.integer "artwork_id", null: false
  end

  add_index "artists_artworks", ["artist_id"], name: "index_artists_artworks_on_artist_id", using: :btree
  add_index "artists_artworks", ["artwork_id"], name: "index_artists_artworks_on_artwork_id", using: :btree

  create_table "artworks", force: :cascade do |t|
    t.text     "title",      null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "slug"
  end

  add_index "artworks", ["title"], name: "index_artworks_on_title", using: :btree

  create_table "artworks_subjects", id: false, force: :cascade do |t|
    t.integer "artwork_id", null: false
    t.integer "subject_id", null: false
  end

  add_index "artworks_subjects", ["artwork_id"], name: "index_artworks_subjects_on_artwork_id", using: :btree
  add_index "artworks_subjects", ["subject_id"], name: "index_artworks_subjects_on_subject_id", using: :btree

  create_table "comments", force: :cascade do |t|
    t.string   "text"
    t.integer  "artwork_id",                null: false
    t.boolean  "show",       default: true
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "comments", ["artwork_id"], name: "index_comments_on_artwork_id", using: :btree

  create_table "images", force: :cascade do |t|
    t.text     "url",        null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "artwork_id"
  end

  add_index "images", ["artwork_id"], name: "index_images_on_artwork_id", using: :btree
  add_index "images", ["url"], name: "index_images_on_url", using: :btree

  create_table "likes", force: :cascade do |t|
    t.integer  "artwork_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id",    null: false
  end

  add_index "likes", ["artwork_id"], name: "index_likes_on_artwork_id", using: :btree

  create_table "subjects", force: :cascade do |t|
    t.text     "display_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "images", "artworks"
end
