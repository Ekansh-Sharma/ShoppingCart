class Product < ActiveRecord::Base
  has_attached_file :image, styles: { medium: "500x500>", thumb: "100x100>" }, default_url: "#{Rails.root}/assets/images/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
