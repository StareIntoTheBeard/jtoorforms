class Shirt < ActiveRecord::Base
  attr_accessible :phone_number, :customer_name, :address, :city, :state, :zip, :email, :measure_neck, :measure_overarm, :measure_chest,
    :measure_stomach, :measure_shoulder, :measure_wrist, :measure_bicep, :measure_length, :measure_sleeve, :measure_hips, :photo_front, :photo_side, :photo_back
  default_scope :order => 'created_at ASC'
  has_attached_file :photo_front,
  	:storage => :dropbox,
    :dropbox_credentials => "#{Rails.root}/config/dropbox.yml",
    :dropbox_options => {
    	:path => proc { |style| "#{id}/#{photo_front.original_filename}" }
    }
  # has_attached_file :photo_side,
 	# :storage => :dropbox,
  #   :dropbox_credentials => "#{Rails.root}/config/dropbox.yml",
  #   :styles => { :medium => '300x300'},
  #   :dropbox_options => {
  #   	:path => "#{shirt.id}/photo_front"
  #   }
  # has_attached_file :photo_back,
  # 	:storage => :dropbox,
  #   :dropbox_credentials => "#{Rails.root}/config/dropbox.yml",
  #   :styles => { :medium => '300x300'},
  #   :dropbox_options => {
  #   	:path => "#{shirt.id}/photo_front"
  #   }
end
