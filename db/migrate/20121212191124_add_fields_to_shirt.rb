class AddFieldsToShirt < ActiveRecord::Migration
  def change
  	add_column :shirts, :customer_name, :string
  	add_column :shirts, :phone_number, :string
  end
end
