class Image < ApplicationRecord

  belongs_to :item, optional: true
  mount_uploader :mage_url, ImageUploader

end
