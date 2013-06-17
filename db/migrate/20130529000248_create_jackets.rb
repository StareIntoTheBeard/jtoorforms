class CreateJackets < ActiveRecord::Migration
  def change
    create_table :jackets do |t|
    	t.column :design_cmt_house, :string
    	t.column :design_fabric_code, :string
    	t.column :design_lining_code, :string
    	t.column :design_felt_color_code, :string
    	t.column :design_undercollar_logo_color_code, :string
    	t.column :design_inside_piping_color_code, :string
    	t.column :design_inside_stitching_color_code, :string
    	t.column :design_cmt_house, :string
    	t.column :jacket_single_breasted, :string
  		t.column :jacket_double_breasted, :string
  		t.column :jacket_vent, :string
  		t.column :jacket_lining, :string
  		t.column :jacket_lapels, :string
  		t.column :jacket_lapel_width, :string
		t.column :jacket_lapel_buttonhole, :string
		t.column :jacket_chest_pocket, :string
		t.column :jacket_pockets, :string
		t.column :jacket_orientation, :string
		t.column :jacket_canvassing, :string
		t.column :jacket_darts, :string
		t.column :jacket_construction, :string
		t.column :detailing_stitching_style, :string
		t.column :detailing_stitching_color, :string
		t.column :detailing_piping_color_code, :string
		t.column :detailing_welting_color_code, :string
		t.column :detailing_welting_width, :string
		t.column :detailing_elbow_patch_color_code, :string
		t.column :detailing_elbow_patch_stitching_color_code, :string
		t.column :detailing_lapel_fabric_code, :string
		t.column :detailing_notes, :string
		t.column :detailing_back_suppression_strap, :string
		t.column :buttons_color, :string
		t.column :buttons_hole_color, :string
		t.column :buttons_thread, :string
		t.column :buttons_lapel_button_hole_color, :string
		t.column :buttons_cuff_buttons, :string
		t.column :design_notes, :string

		t.column :left_shoulder_normal, :string
		t.column :left_shoulder_straight_slope, :string
		t.column :left_shoulder_moderate_slope, :string
		t.column :left_shoulder_very_slope, :string
		t.column :left_shoulder_slight_high, :string
		t.column :left_shoulder_half_high, :string
		t.column :left_shoulder_very_high, :string
		t.column :left_shoulder_notes, :string
		t.column :right_shoulder_normal, :string
		t.column :right_shoulder_straight_slope, :string
		t.column :right_shoulder_moderate_slope, :string
		t.column :right_shoulder_very_slope, :string
		t.column :right_shoulder_slight_high, :string
		t.column :right_shoulder_half_high, :string
		t.column :right_shoulder_very_high, :string
		t.column :right_shoulder_notes, :string
		t.column :neck, :string
		t.column :balance_erect, :string
		t.column :balance_regular, :string
		t.column :balance_head_forward, :string
		t.column :balance_stooping, :string
		t.column :balance_very_stooping, :string
		t.column :balance_shoulder_blade_prominence, :string
		t.column :figure_barrel_chest, :string
		t.column :figure_flat_back, :string
		t.column :figure_portly, :string
		t.column :figure_arms_forward, :string
		t.column :figure_arms_backward, :string
		t.column :style_extremely_slim, :string
		t.column :style_very_slim, :string
		t.column :style_slim, :string
		t.column :style_regular_tight, :string
		t.column :style_regular, :string
		t.column :style_regular_loose, :string
		t.column :style_very_loose, :string
		t.column :style_extremely_loose, :string
		t.column :style_notes, :string
		t.column :jacket_notes, :string
		t.column :detail_one, :string
		t.column :detail_two, :string
		t.column :detail_three, :string

		t.has_attached_file :photo_front
      	t.has_attached_file :photo_side
      	t.has_attached_file :photo_back
		
		t.column :height, :string
		t.column :weight, :string
		t.column :due_date, :string
		t.column :measurements_fitting_vest_size, :string
		t.column :measurements_body_neck, :string
		t.column :measurements_body_overarm, :string
		t.column :measurements_body_chest, :string
		t.column :measurements_body_stomach, :string
		t.column :measurements_body_front, :string
		t.column :measurements_body_back, :string
		t.column :measurements_body_shoulder, :string
		t.column :measurements_body_front_shoulder, :string
		t.column :measurements_body_bicep, :string
		t.column :measurements_body_hips, :string
		t.column :measurements_body_sleeve_left, :string
		t.column :measurements_body_sleeve_right, :string
		t.column :measurements_body_half_shoulder, :string
		t.column :measurements_body_jacket_shoulder, :string
		t.column :measurements_body_length_front, :string
		t.column :measurements_body_length_rear, :string
		t.column :measurements_body_nape_waist, :string
		t.column :measurements_body_front_waist_length, :string
		t.column :measurements_body_front_waist_height, :string
		t.column :measurements_body_back_waist_height, :string
		t.column :measurements_body_forearm, :string
		t.column :measurements_body_wrist, :string
		t.column :measurements_body_elbow, :string
		t.column :measurements_body_first_button_stance, :string
		t.column :measurements_finished_chest, :string
		t.column :measurements_finished_stomach, :string
		t.column :measurements_finished_front, :string
		t.column :measurements_finished_back, :string
		t.column :measurements_finished_shoulder, :string
		t.column :measurements_finished_bicep_at, :string
		t.column :measurements_finished_bicep_down, :string
		t.column :measurements_finished_length_front, :string
		t.column :measurements_finished_length_rear, :string
		t.column :measurements_finished_half_shoulder, :string
		t.column :measurements_finished_first_button_stance, :string
		t.column :measurements_finished_hips, :string
		t.column :measurements_finished_sleeve_left, :string
		t.column :measurements_finished_sleeve_right, :string
		t.column :measurements_finished_wrist, :string
		t.column :measurements_finished_forearm_at, :string
		t.column :measurements_finished_forearm_down, :string
		t.column :female_strap_bust, :string
		t.column :female_strap_wrist, :string
		t.column :female_bust_bust, :string
		t.column :female_underbust, :string
		t.column :female_strap_underbust, :string


        t.timestamps
    end
  end
end
