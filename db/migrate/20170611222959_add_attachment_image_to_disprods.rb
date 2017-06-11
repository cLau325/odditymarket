class AddAttachmentImageToDisprods < ActiveRecord::Migration
  def self.up
    change_table :disprods do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :disprods, :image
  end
end
