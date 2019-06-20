class Item < ApplicationRecord

  belongs_to :state, optional: true
  belongs_to :condition, optional: true
  belongs_to :shipping_fee_payer, optional: true
  belongs_to :shipping_day, optional: true
  belongs_to :large_class, optional: true
  belongs_to :middle_class, optional: true
  belongs_to :small_class, optional: true
  has_many :images
  belongs_to :size, optional: true
  belongs_to :owner, class_name: "User", optional: true
  belongs_to :buyer, class_name: "User", optional: true

  belongs_to :category, optional: true



end
