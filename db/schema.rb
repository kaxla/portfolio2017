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

ActiveRecord::Schema.define(version: 20170721224316) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_1_file_name"
    t.string "image_1_content_type"
    t.integer "image_1_file_size"
    t.datetime "image_1_updated_at"
    t.string "image_2_file_name"
    t.string "image_2_content_type"
    t.integer "image_2_file_size"
    t.datetime "image_2_updated_at"
    t.string "image_3_file_name"
    t.string "image_3_content_type"
    t.integer "image_3_file_size"
    t.datetime "image_3_updated_at"
    t.string "image_4_file_name"
    t.string "image_4_content_type"
    t.integer "image_4_file_size"
    t.datetime "image_4_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
