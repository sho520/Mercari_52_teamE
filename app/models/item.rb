class Item < ApplicationRecord

  belongs_to :state
  belongs_to :condition
  belongs_to :shipping_fee_payer
  belongs_to :shipping_day
  belongs_to :large_class
  belongs_to :middle_class
  belongs_to :small_class
  has_many :images
  belongs_to :owner, class_name: "User"
  belongs_to :buyer, class_name: "User"

  belongs_to :category

end
