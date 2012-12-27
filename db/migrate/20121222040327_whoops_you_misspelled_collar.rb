class WhoopsYouMisspelledCollar < ActiveRecord::Migration
  def change
  	rename_column :shirts, :material_color, :material_collar
  end
end
