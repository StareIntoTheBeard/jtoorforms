class AddAttributesToSuit < ActiveRecord::Migration
  def change
  	add_column :suits, :inner_stitching_color, :string
  	add_column :suits, :inner_piping_color, :string
  end
end
