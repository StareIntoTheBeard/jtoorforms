class AddAttachmentPhotoFrontPhotoSidePhotoBackToShirts < ActiveRecord::Migration
  def self.up
    change_table :shirts do |t|
      t.has_attached_file :photo_front
      t.has_attached_file :photo_side
      t.has_attached_file :photo_back
    end
  end

  def self.down
    drop_attached_file :shirts, :photo_front
    drop_attached_file :shirts, :photo_side
    drop_attached_file :shirts, :photo_back
  end
end
