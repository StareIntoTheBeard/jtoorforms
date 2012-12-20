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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121217171725) do

  create_table "forms", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "shirts", :force => true do |t|
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
    t.string   "customer_name"
    t.string   "phone_number"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.integer  "email"
    t.string   "measure_neck"
    t.string   "measure_overarm"
    t.string   "measure_chest"
    t.string   "measure_stomach"
    t.string   "measure_shoulder"
    t.string   "measure_wrist"
    t.string   "measure_bicep"
    t.string   "measure_length"
    t.string   "measure_sleeve"
    t.string   "measure_hips"
    t.string   "photo_front_file_name"
    t.string   "photo_front_content_type"
    t.integer  "photo_front_file_size"
    t.datetime "photo_front_updated_at"
    t.string   "photo_side_file_name"
    t.string   "photo_side_content_type"
    t.integer  "photo_side_file_size"
    t.datetime "photo_side_updated_at"
    t.string   "photo_back_file_name"
    t.string   "photo_back_content_type"
    t.integer  "photo_back_file_size"
    t.datetime "photo_back_updated_at"
  end

  create_table "suits", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
