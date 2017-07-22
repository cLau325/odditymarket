class Forsale < ApplicationRecord
   belongs_to :user, optional: true
   validates :fs_name, presence: true,length: { maximum: 20 }, uniqueness:{case_sensitive: false }
   validates :fs_desc, :fs_image, presence: true 
   validates :fs_price, presence: true, numericality: { only_integer: true, greater_than: 0 }
   has_attached_file :fs_image, styles: { :small => ["300x300#", :jpg, :png ],
                                          :medium => ["400x400#", :jpg, :png ] }
   validates_attachment_content_type :fs_image, content_type: /\Aimage\/.*\z/
   
   def self.search(search)
      where("name LIKE ?", "%#{search}%") 
      where("content LIKE ?", "%#{search}%")
   end

end
