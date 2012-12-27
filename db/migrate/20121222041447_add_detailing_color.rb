class AddDetailingColor < ActiveRecord::Migration
  def change
  	add_column :shirts, :detailing_color, :string
  end
end
