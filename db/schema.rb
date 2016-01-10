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

ActiveRecord::Schema.define(version: 20150905054046) do

  create_table "articles", force: :cascade do |t|
    t.string   "article_name", limit: 255
    t.integer  "user_id",      limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "articles", ["user_id"], name: "index_articles_on_user_id", using: :btree

  create_table "blogs", force: :cascade do |t|
    t.string   "blog_name",  limit: 255
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "blogs", ["user_id"], name: "index_blogs_on_user_id", using: :btree

  create_table "campaigns", force: :cascade do |t|
    t.string  "name",              limit: 255
    t.string  "desc",              limit: 255
    t.integer "most_important_id", limit: 4
    t.integer "catalog_id",        limit: 4
  end

  add_index "campaigns", ["catalog_id"], name: "index_campaigns_on_catalog_id", using: :btree
  add_index "campaigns", ["most_important_id"], name: "index_campaigns_on_most_important_id", using: :btree

  create_table "catalogs", force: :cascade do |t|
    t.string  "name",              limit: 255
    t.string  "desc",              limit: 255
    t.integer "most_important_id", limit: 4
  end

  add_index "catalogs", ["most_important_id"], name: "index_catalogs_on_most_important_id", using: :btree

  create_table "comments", force: :cascade do |t|
    t.string   "comments",   limit: 255
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "countries", force: :cascade do |t|
    t.string   "country_name", limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "country_id",   limit: 4
  end

  create_table "districts", force: :cascade do |t|
    t.string   "district_name", limit: 255
    t.string   "state_id",      limit: 255
    t.string   "country_id",    limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "district_id",   limit: 4
  end

  create_table "most_importants", force: :cascade do |t|
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "name",       limit: 255
  end

  create_table "posts", force: :cascade do |t|
    t.string   "posts",      limit: 255
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "posts", ["user_id"], name: "index_posts_on_user_id", using: :btree

  create_table "states", force: :cascade do |t|
    t.string   "state_name", limit: 255
    t.string   "country_id", limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "state_id",   limit: 4
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "provider",               limit: 255
    t.string   "uid",                    limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["provider"], name: "index_users_on_provider", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["uid"], name: "index_users_on_uid", using: :btree

  create_table "wellness_rooms", force: :cascade do |t|
    t.string  "name",              limit: 255
    t.string  "desc",              limit: 255
    t.integer "most_important_id", limit: 4
  end

  add_index "wellness_rooms", ["most_important_id"], name: "index_wellness_rooms_on_most_important_id", using: :btree

  add_foreign_key "articles", "users"
  add_foreign_key "blogs", "users"
  add_foreign_key "campaigns", "catalogs"
  add_foreign_key "campaigns", "most_importants"
  add_foreign_key "catalogs", "most_importants"
  add_foreign_key "comments", "users"
  add_foreign_key "posts", "users"
  add_foreign_key "wellness_rooms", "most_importants"
end
