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

ActiveRecord::Schema.define(:version => 20121228222313) do

  create_table "forms", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "shirts", :force => true do |t|
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.string   "customer_name"
    t.string   "phone_number"
    t.string   "form_file_name"
    t.string   "form_content_type"
    t.integer  "form_file_size"
    t.datetime "form_updated_at"
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
    t.string   "shoulder_type"
    t.string   "balance_figure"
    t.string   "fitting"
    t.string   "shirt_material"
    t.string   "material_collar"
    t.string   "material_inner_collar"
    t.string   "material_under_collar"
    t.string   "material_buttonside_outer"
    t.string   "material_buttonside_inner"
    t.string   "material_cuffs"
    t.string   "material_inner_cuffs"
    t.string   "cuff_style"
    t.string   "collar_style"
    t.string   "button_color"
    t.string   "button_stitching_color"
    t.string   "button_hole_color"
    t.string   "pockets"
    t.string   "detailing"
    t.text     "notes"
    t.string   "detailing_color"
    t.string   "material_buttonholeside_outer"
    t.string   "material_buttonholeside_inner"
  end

  create_table "suits", :force => true do |t|
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.string   "phone_number"
    t.string   "customer_name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "email"
    t.string   "jacket_neck"
    t.string   "jacket_overarm"
    t.string   "jacket_chest"
    t.string   "jacket_stomach"
    t.string   "jacket_front"
    t.string   "jacket_back"
    t.string   "jacket_shoulder"
    t.string   "jacket_bicep"
    t.string   "jacket_width"
    t.string   "jacket_length"
    t.string   "jacket_half_shoulder"
    t.string   "jacket_sleeve"
    t.string   "jacket_hips"
    t.string   "jacket_wrist"
    t.string   "jacket_first_button"
    t.string   "jacket_vest_button"
    t.string   "jacket_vest_length"
    t.string   "jacket_vest_size"
    t.string   "jacket_elbow"
    t.string   "trouser_waist"
    t.string   "trouser_hips"
    t.string   "trouser_rise"
    t.string   "trouser_length"
    t.string   "trouser_inseam"
    t.string   "trouser_knee_length"
    t.string   "trouser_thigh_width"
    t.string   "trouser_knee_width"
    t.string   "trouser_bottom_width"
    t.string   "shoulder_type"
    t.string   "balance_figure"
    t.string   "fitting"
    t.string   "lining"
    t.string   "suit_note"
    t.string   "jacket_material"
    t.string   "jacket_lining"
    t.string   "jacket_under_collar"
    t.string   "jacket_felt_color"
    t.string   "jacket_logo_stitch_color"
    t.string   "jacket_single_breasted"
    t.string   "jacket_double_breasted"
    t.string   "jacket_vent"
    t.string   "jacket_lapels"
    t.string   "jacket_pockets_straight"
    t.string   "jacket_pockets_slanted"
    t.string   "jacket_pockets_patched"
    t.string   "jacket_pockets_flaps"
    t.string   "jacket_pockets_normal"
    t.string   "jacket_pockets_patch"
    t.string   "jacket_detailing_hand"
    t.string   "jacket_detailing_pick"
    t.string   "jacket_detailing_dot"
    t.string   "jacket_detailing_piping"
    t.string   "jacket_detailing_welting"
    t.string   "jacket_detailing_color"
    t.string   "jacket_detailing_elbow"
    t.string   "jacket_detailing_elbow_note"
    t.string   "jacket_button_color"
    t.string   "jacket_button_stitch"
    t.string   "jacket_buttonhole"
    t.string   "jacket_lapel_buttonhole"
    t.string   "jacket_note"
    t.string   "vest_material"
    t.string   "vest_single_breasted"
    t.string   "vest_double_breasted"
    t.string   "vest_back"
    t.string   "vest_lapel"
    t.string   "vest_pockets_straight"
    t.string   "vest_pockets_slanted"
    t.string   "vest_pockets_ticket"
    t.string   "vest_pockets_flaps"
    t.string   "vest_pockets_chest"
    t.string   "vest_detailing_hand"
    t.string   "vest_detailing_pick"
    t.string   "vest_detailing_dot"
    t.string   "vest_detailing_piping"
    t.string   "vest_detailing_welting"
    t.string   "vest_detailing_color"
    t.string   "vest_button_color"
    t.string   "vest_button_stitch"
    t.string   "vest_buttonhole"
    t.string   "vest_note"
    t.string   "trouser_material"
    t.string   "trouser_front_pocket"
    t.string   "trouser_pleat"
    t.string   "trouser_rear_left"
    t.string   "trouser_rear_right"
    t.string   "trouser_rear_flaps"
    t.string   "trouser_rear_button"
    t.string   "trouser_rear_none"
    t.string   "trouser_fast_button"
    t.string   "trouser_fast_clips"
    t.string   "trouser_fast_belt"
    t.string   "trouser_fast_side"
    t.string   "trouser_cuff_none"
    t.string   "trouser_cuff_other"
    t.string   "trouser_note"
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
    t.string   "trouser_cuff_other_note"
    t.string   "jacket_front_length"
  end

end
