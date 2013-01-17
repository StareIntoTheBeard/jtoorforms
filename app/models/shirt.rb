class Shirt < ActiveRecord::Base

  attr_accessible :phone_number, :customer_name, :photo_front, :photo_side, :photo_back, :address, :city, :state, :zip, :email, :measure_neck, 
    :measure_overarm, :measure_chest, :measure_stomach, :measure_shoulder, :measure_wrist, :measure_bicep, :measure_length,
    :measure_sleeve, :measure_hips, :shoulder_type, :shoulder_type, :balance_figure,:fitting,:shirt_material,:material_collar,
    :material_inner_collar,:material_under_collar,:material_buttonside_outer,:material_buttonside_inner,:material_buttonholeside_outer,
    :material_buttonholeside_inner, :material_cuffs, :material_inner_cuffs,:cuff_style,:collar_style,:button_color,
    :button_stitching_color,:button_hole_color,:pockets, :detailing, :detailing_color, :notes, :more_notes,:jacket_shoulder_to_bust, :jacket_shoulder_to_waist, :jacket_bust_to_bust, :jacket_underbust, :jacket_shoulder_to_underbust


  default_scope :order => 'created_at ASC'
  has_attached_file :photo_front,
  	:storage => :dropbox,
    :dropbox_credentials => "#{Rails.root}/config/dropbox.yml",
    :dropbox_options => {
    	:path => proc { |style| "shirts/#{id}/#{photo_front.original_filename}" }
    }
  has_attached_file :photo_side,
 	:storage => :dropbox,
    :dropbox_credentials => "#{Rails.root}/config/dropbox.yml",
    :dropbox_options => {
    	:path => proc { |style| "shirts/#{id}/#{photo_side.original_filename}" }
    }
  has_attached_file :photo_back,
  	:storage => :dropbox,
    :dropbox_credentials => "#{Rails.root}/config/dropbox.yml",
    :dropbox_options => {
    	:path => proc { |style| "shirts/#{id}/#{photo_back.original_filename}" }
    }
end
