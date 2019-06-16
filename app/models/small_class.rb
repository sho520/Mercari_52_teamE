class SmallClass < ApplicationRecord

  has_many :items
  belongs_to :middle_class

end
