class AddAttachmentFsImageToForsales < ActiveRecord::Migration
  def self.up
    change_table :forsales do |t|
      t.attachment :fs_image
    end
  end

  def self.down
    remove_attachment :forsales, :fs_image
  end
end
