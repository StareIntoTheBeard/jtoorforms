class AddButtonholesideToShirt < ActiveRecord::Migration
  def change
  	add_column :shirts, :material_buttonholeside_outer, :string
  	add_column :shirts, :material_buttonholeside_inner, :string
  end
end
