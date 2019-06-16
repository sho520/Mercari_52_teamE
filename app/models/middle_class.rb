class MiddleClass < ApplicationRecord

  has_many :items
  belongs_to :large_class
  has_many :small_classes

end
