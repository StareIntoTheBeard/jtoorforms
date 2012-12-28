class AddAttachmentPhotoFrontPhotoSidePhotoBackToSuits < ActiveRecord::Migration
  def self.up
    change_table :suits do |t|
      t.has_attached_file :photo_front
      t.has_attached_file :photo_side
      t.has_attached_file :photo_back
    end
  end

  def self.down
    drop_attached_file :suits, :photo_front
    drop_attached_file :suits, :photo_side
    drop_attached_file :suits, :photo_back
  end
end
