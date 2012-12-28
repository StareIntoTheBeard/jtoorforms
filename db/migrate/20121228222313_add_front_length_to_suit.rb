class AddFrontLengthToSuit < ActiveRecord::Migration
  def change
  	add_column :suits, :jacket_front_length, :string
  end
end
