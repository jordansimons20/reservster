class Restaurant < ApplicationRecord
  belongs_to :user
  has_attached_file :photo,
   styles: { medium: "300x300>", thumb: "100x100>" },
   default_url: "/images/:style/missing.png",
   path: ":rails_root/public/system/:attachment/:id/:style/:filename",
   url: "/system/:attachment/:id/:style/:filename"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
end
