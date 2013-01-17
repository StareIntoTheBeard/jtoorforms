class Suit < ActiveRecord::Base
  attr_accessible :phone_number, :customer_name, :photo_front, :photo_side, :photo_back, :address, :city, :state, :zip, :email,
  	:jacket_neck, :jacket_overarm, :jacket_chest, :jacket_stomach, :jacket_front, :jacket_back, :jacket_shoulder, :jacket_bicep,
  	:jacket_width, :jacket_length, :jacket_front_length, :jacket_half_shoulder, :jacket_sleeve, :jacket_hips, :jacket_wrist, :jacket_first_button,
  	:jacket_vest_button, :jacket_vest_length, :jacket_vest_size, :jacket_elbow, :trouser_waist, :trouser_hips, :trouser_rise, :trouser_length,
  	:trouser_inseam, :trouser_knee_length, :trouser_thigh_width, :trouser_knee_width, :trouser_bottom_width, :shoulder_type, :balance_figure,
  	:fitting, :lining, :suit_note, :jacket_material, :jacket_lining, :jacket_under_collar, :jacket_felt_color, :jacket_logo_stitch_color,
  	:jacket_single_breasted, :jacket_double_breasted, :jacket_vent, :jacket_lapels, :jacket_pockets_straight, :jacket_pockets_slanted, :jacket_pockets_ticket,
  	:jacket_pockets_patched, :jacket_pockets_flaps, :jacket_pockets_normal, :jacket_pockets_patch, :jacket_detailing_hand, :jacket_detailing_pick,
  	:jacket_detailing_dot, :jacket_detailing_piping, :jacket_detailing_welting, :jacket_detailing_color, :jacket_detailing_elbow,
  	:jacket_detailing_elbow_note, :jacket_button_color, :jacket_button_stitch, :jacket_buttonhole, :jacket_lapel_buttonhole, :jacket_note,
  	:vest_material, :vest_single_breasted, :vest_double_breasted, :vest_back, :vest_lapel, :vest_pockets_straight, :vest_pockets_slanted,
  	:vest_pockets_ticket, :vest_pockets_flaps, :vest_pockets_chest, :vest_detailing_hand, :vest_detailing_pick, :vest_detailing_dot,
  	:vest_detailing_piping, :vest_detailing_welting, :vest_detailing_color, :vest_button_color, :vest_button_stitch, :vest_buttonhole,
  	:vest_note, :trouser_material, :trouser_front_pocket, :trouser_pleat, :trouser_rear_left, :trouser_rear_right, :trouser_rear_flaps,
  	:trouser_rear_button, :trouser_rear_none, :trouser_fast_button, :trouser_fast_clips, :trouser_fast_belt, :trouser_fast_side, :trouser_cuff_none,
  	:trouser_cuff_other, :trouser_cuff_other_note, :trouser_note, :inner_piping_color, :inner_stitching_color, :jacket_shoulder_to_bust, :jacket_shoulder_to_waist, :jacket_bust_to_bust, :jacket_underbust, :jacket_shoulder_to_underbust



  default_scope :order => 'created_at ASC'
  has_attached_file :photo_front,
  	:storage => :dropbox,
    :dropbox_credentials => "#{Rails.root}/config/dropbox.yml",
    :dropbox_options => {
    	:path => proc { |style| "suits/#{id}/#{photo_front.original_filename}" }
    }
  has_attached_file :photo_side,
 	:storage => :dropbox,
    :dropbox_credentials => "#{Rails.root}/config/dropbox.yml",
    :dropbox_options => {
    	:path => proc { |style| "suits/#{id}/#{photo_side.original_filename}" }
    }
  has_attached_file :photo_back,
  	:storage => :dropbox,
    :dropbox_credentials => "#{Rails.root}/config/dropbox.yml",
    :dropbox_options => {
    	:path => proc { |style| "suits/#{id}/#{photo_back.original_filename}" }
    }
end
