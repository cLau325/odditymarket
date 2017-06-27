class Forsale < ApplicationRecord
   has_attached_file :fs_image, styles: { :medium => "400x400#"}
   validates_attachment_content_type :fs_image, content_type: /\Aimage\/.*\z/
end
