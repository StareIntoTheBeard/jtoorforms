class AddBustMeasurementsAllAround < ActiveRecord::Migration
  def change
  	add_column :suits, :jacket_shoulder_to_bust, :string
  	add_column :suits, :jacket_shoulder_to_waist, :string
  	add_column :suits, :jacket_bust_to_bust, :string
  	add_column :suits, :jacket_underbust, :string
  	add_column :suits, :jacket_shoulder_to_underbust, :string
   
  	add_column :shirts, :jacket_shoulder_to_bust, :string
  	add_column :shirts, :jacket_shoulder_to_waist, :string
  	add_column :shirts, :jacket_bust_to_bust, :string
  	add_column :shirts, :jacket_underbust, :string
  	add_column :shirts, :jacket_shoulder_to_underbust, :string
  end
end
