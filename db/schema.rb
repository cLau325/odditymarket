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

ActiveRecord::Schema.define(version: 20170719065104) do

  create_table "disprods", force: :cascade do |t|
    t.string   "dp_name"
    t.text     "desc"
    t.integer  "dis_prod_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "user_id"
  end

  create_table "forauctions", force: :cascade do |t|
    t.string   "fa_name"
    t.text     "fa_desc"
    t.integer  "fa_baseprice"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "fa_image_file_name"
    t.string   "fa_image_content_type"
    t.integer  "fa_image_file_size"
    t.datetime "fa_image_updated_at"
    t.integer  "cur_highest"
    t.integer  "user_id"
  end

  create_table "forsales", force: :cascade do |t|
    t.string   "fs_name"
    t.text     "fs_desc"
    t.integer  "fs_price"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.string   "fs_image_file_name"
    t.string   "fs_image_content_type"
    t.integer  "fs_image_file_size"
    t.datetime "fs_image_updated_at"
    t.boolean  "sold",                  default: false
    t.integer  "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
