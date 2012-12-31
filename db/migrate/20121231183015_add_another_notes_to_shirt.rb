class AddAnotherNotesToShirt < ActiveRecord::Migration
  def change
  	add_column :shirts, :more_notes, :text
  end
end
