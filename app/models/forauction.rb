class Forauction < ApplicationRecord
   
   validates :fa_name, presence: true,length: { maximum: 20 }, uniqueness:{case_sensitive: false }
   validates :fa_desc, :fa_image, presence: true 
   validates :fa_baseprice, presence: true, numericality: { only_integer: true, greater_than: 0 }
   has_attached_file :fa_image, styles: { :medium => ["400x400#", :jpg, :png ] }
   validates_attachment_content_type :fa_image, content_type: /\Aimage\/.*\z/
   
   def self.search(search)
      where("name LIKE ?", "%#{search}%") 
      where("content LIKE ?", "%#{search}%")
   end
   
end
