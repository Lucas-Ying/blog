class Image < ApplicationRecord

  # Paperclip
  has_attached_file :image,
                    :styles => {
                        :thumb => "300x200#",
                        :small  => "600x400>",
                        :medium => "1200x800" }

  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

end
