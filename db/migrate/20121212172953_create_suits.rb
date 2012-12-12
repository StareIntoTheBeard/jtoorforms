class CreateSuits < ActiveRecord::Migration
  def change
    create_table :suits do |t|

      t.timestamps
    end
  end
end
