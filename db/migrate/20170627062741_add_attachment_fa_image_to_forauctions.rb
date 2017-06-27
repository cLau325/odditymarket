class AddAttachmentFaImageToForauctions < ActiveRecord::Migration
  def self.up
    change_table :forauctions do |t|
      t.attachment :fa_image
    end
  end

  def self.down
    remove_attachment :forauctions, :fa_image
  end
end
