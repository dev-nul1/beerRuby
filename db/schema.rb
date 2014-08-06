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

ActiveRecord::Schema.define(version: 20140806182927) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: true do |t|
    t.string   "title"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hops", force: true do |t|
    t.string   "hops_name"
    t.string   "hops_grown"
    t.string   "hops_info"
    t.string   "hops_use"
    t.string   "hops_example"
    t.integer  "hops_aau_low"
    t.integer  "hops_aau_high"
    t.string   "hops_sub"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "malts", force: true do |t|
    t.string   "malt_name"
    t.string   "malt_lovibond"
    t.string   "malt_info"
    t.string   "malt_category"
    t.string   "malt_yield"
    t.integer  "malt_origin"
    t.integer  "malt_supplier"
    t.string   "malt_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recipes", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.text     "xml"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "yeasts", force: true do |t|
    t.string   "yeast_name"
    t.string   "yeast_floc"
    t.string   "yeast_atten"
    t.string   "yeast_tolerance"
    t.string   "yeast_type"
    t.string   "yeast_form"
    t.integer  "yeast_amount"
    t.string   "yeast_lab"
    t.string   "yeast_prod_id"
    t.integer  "yeast_min_temp"
    t.integer  "yeast_max_temp"
    t.string   "yeast_notes"
    t.string   "yeast_best_for"
    t.integer  "yeast_max_reuse"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
