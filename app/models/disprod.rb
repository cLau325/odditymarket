class Disprod < ApplicationRecord
   belongs_to :user, optional: true
   validates :dp_name, presence: true,length: { maximum: 20 }, uniqueness:{case_sensitive: false }
   validates :desc, :image, presence: true 
   has_attached_file :image, styles: { :medium => ["400x400#", :jpg, :png ] }
   validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
   
   def self.search(search)
      where("name LIKE ?", "%#{search}%") 
      where("content LIKE ?", "%#{search}%")
   end

end
