class AddEvenMoreFieldsToShirt < ActiveRecord::Migration
  def change
  	add_column :shirts, :shoulder_type, :string
  	add_column :shirts, :balance_figure, :string
  	add_column :shirts, :fitting, :string
  	add_column :shirts, :shirt_material, :string
  	add_column :shirts, :material_color, :string
  	add_column :shirts, :material_inner_collar, :string
  	add_column :shirts, :material_under_collar, :string
  	add_column :shirts, :material_buttonside_outer, :string
  	add_column :shirts, :material_buttonside_inner, :string
  	add_column :shirts, :material_cuffs, :string
  	add_column :shirts, :material_inner_cuffs, :string
  	add_column :shirts, :cuff_style, :string
  	add_column :shirts, :collar_style, :string
  	add_column :shirts, :button_color, :string
  	add_column :shirts, :button_stitching_color, :string
  	add_column :shirts, :button_hole_color, :string
  	add_column :shirts, :pockets, :string
  	add_column :shirts, :detailing, :string
  	add_column :shirts, :notes, :text
  end
end
