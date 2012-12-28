class CreateSuitForm < ActiveRecord::Migration
  def change
  	add_column :suits, :phone_number, :string
  	add_column :suits, :customer_name, :string
  	add_column :suits, :address, :string
  	add_column :suits, :city, :string
  	add_column :suits, :state, :string
  	add_column :suits, :zip, :string
  	add_column :suits, :email, :string
  	change_table :suits do |t|
  		t.column :jacket_neck, :string
  		t.column :jacket_overarm, :string
  		t.column :jacket_chest, :string
  		t.column :jacket_stomach, :string
  		t.column :jacket_front, :string
  		t.column :jacket_back, :string
  		t.column :jacket_shoulder, :string
  		t.column :jacket_bicep, :string
  		t.column :jacket_width, :string
  		t.column :jacket_length, :string
  		t.column :jacket_half_shoulder, :string
  		t.column :jacket_sleeve, :string
  		t.column :jacket_hips, :string
  		t.column :jacket_wrist, :string
  		t.column :jacket_first_button, :string
  		t.column :jacket_vest_button, :string
  		t.column :jacket_vest_length, :string
  		t.column :jacket_vest_size, :string
  		t.column :jacket_elbow, :string
  		t.column :trouser_waist, :string
  		t.column :trouser_hips, :string
  		t.column :trouser_rise, :string
  		t.column :trouser_length, :string
  		t.column :trouser_inseam, :string
  		t.column :trouser_knee_length, :string
  		t.column :trouser_thigh_width, :string
  		t.column :trouser_knee_width, :string
  		t.column :trouser_bottom_width, :string
  		t.column :shoulder_type, :string
  		t.column :balance_figure, :string
  		t.column :fitting, :string
  		t.column :lining, :string
  		t.column :suit_note, :string
  		t.column :jacket_material, :string
  		t.column :jacket_lining, :string
  		t.column :jacket_under_collar, :string
  		t.column :jacket_felt_color, :string
  		t.column :jacket_logo_stitch_color, :string
  		t.column :jacket_single_breasted, :string
  		t.column :jacket_double_breasted, :string
  		t.column :jacket_vent, :string
  		t.column :jacket_lapels, :string
  		t.column :jacket_pockets_straight, :string
  		t.column :jacket_pockets_slanted, :string
  		t.column :jacket_pockets_patched, :string
  		t.column :jacket_pockets_flaps, :string
  		t.column :jacket_pockets_normal, :string
  		t.column :jacket_pockets_patch, :string
  		t.column :jacket_detailing_hand, :string
  		t.column :jacket_detailing_pick, :string
  		t.column :jacket_detailing_dot, :string
  		t.column :jacket_detailing_piping, :string
  		t.column :jacket_detailing_welting, :string
  		t.column :jacket_detailing_color, :string
  		t.column :jacket_detailing_elbow, :string
  		t.column :jacket_detailing_elbow_note, :string
  		t.column :jacket_button_color, :string
  		t.column :jacket_button_stitch, :string
  		t.column :jacket_buttonhole, :string
  		t.column :jacket_lapel_buttonhole, :string
  		t.column :jacket_note, :string
  		t.column :vest_material, :string
  		t.column :vest_single_breasted, :string
  		t.column :vest_double_breasted, :string
  		t.column :vest_back, :string
  		t.column :vest_lapel, :string
  		t.column :vest_pockets_straight, :string
  		t.column :vest_pockets_slanted, :string
  		t.column :vest_pockets_ticket, :string
  		t.column :vest_pockets_flaps, :string
  		t.column :vest_pockets_chest, :string
  		t.column :vest_detailing_hand, :string
  		t.column :vest_detailing_pick, :string
  		t.column :vest_detailing_dot, :string
  		t.column :vest_detailing_piping, :string
  		t.column :vest_detailing_welting, :string
  		t.column :vest_detailing_color, :string
  		t.column :vest_button_color, :string
  		t.column :vest_button_stitch, :string
  		t.column :vest_buttonhole, :string
  		t.column :vest_note, :string
  		t.column :trouser_material, :string
  		t.column :trouser_front_pocket, :string
  		t.column :trouser_pleat, :string
  		t.column :trouser_rear_left, :string
  		t.column :trouser_rear_right, :string
  		t.column :trouser_rear_flaps, :string
  		t.column :trouser_rear_button, :string
  		t.column :trouser_rear_none, :string
  		t.column :trouser_fast_button, :string
  		t.column :trouser_fast_clips, :string
  		t.column :trouser_fast_belt, :string
  		t.column :trouser_fast_side, :string
  		t.column :trouser_cuff_none, :string
  		t.column :trouser_cuff_other, :string
  		t.column :trouser_note, :string
end

  end
end
