class Forsale < ApplicationRecord
   belongs_to :user, optional: true
   validates :fs_name, presence: true,length: { maximum: 20 }, uniqueness:{case_sensitive: false }
   validates :fs_desc, :fs_image, presence: true 
   validates :fs_price, presence: true, numericality: { only_integer: true, greater_than: 0 }
   has_attached_file :fs_image, styles: { :small => ["300x300#", :jpg, :png ],
                                          :medium => ["400x400#", :jpg, :png ] }
   validates_attachment_content_type :fs_image, content_type: /\Aimage\/.*\z/
<<<<<<< HEAD

=======
   
>>>>>>> 52bdb9395db11ecd782c53cc97be843ee0dfd3a1
end
