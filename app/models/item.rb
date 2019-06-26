class Item < ApplicationRecord

  belongs_to :state, optional: true
  belongs_to :condition, optional: true
  belongs_to :shipping_fee_payer, optional: true
  belongs_to :shipping_day, optional: true
  belongs_to :large_class, optional: true
  belongs_to :middle_class, optional: true
  belongs_to :small_class, optional: true
  belongs_to :delivery_way, optional: true
  belongs_to :size, optional: true
  belongs_to :owner, class_name: "User", optional: true
  belongs_to :buyer, class_name: "User", optional: true
  belongs_to :category, optional: true
  has_many :comments
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true

  def self.ransackable_attributes(auth_object = nil)
    %w(name brand price large_class_id middle_class_id small_class_id ize_id shipping_fee_parer_id condition_id)
  end

end
