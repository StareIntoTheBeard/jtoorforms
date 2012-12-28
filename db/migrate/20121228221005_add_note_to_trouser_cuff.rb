class AddNoteToTrouserCuff < ActiveRecord::Migration
  def change
  	add_column :suits, :trouser_cuff_other_note, :string
  end
end
