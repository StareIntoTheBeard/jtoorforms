class AddTicketPocketToSuitJacket < ActiveRecord::Migration
  def change
  	add_column :suits, :jacket_pockets_ticket, :string
  end
end
