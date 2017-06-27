class Forauction < ApplicationRecord
   has_attached_file :fa_image, styles: { :medium => "400x400#"}
   validates_attachment_content_type :fa_image, content_type: /\Aimage\/.*\z/
end
