class MoreShirtFields < ActiveRecord::Migration
  def change
  	add_column :shirts, :address, :string
  	add_column :shirts, :city, :string
  	add_column :shirts, :state, :string
  	add_column :shirts, :zip, :integer
  	add_column :shirts, :email, :integer
  	add_column :shirts, :measure_neck, :string
  	add_column :shirts, :measure_overarm, :string
  	add_column :shirts, :measure_chest, :string
  	add_column :shirts, :measure_stomach, :string
  	add_column :shirts, :measure_shoulder, :string
  	add_column :shirts, :measure_wrist, :string
  	add_column :shirts, :measure_bicep, :string
  	add_column :shirts, :measure_length, :string
  	add_column :shirts, :measure_sleeve, :string
  	add_column :shirts, :measure_hips, :string
  end
end
