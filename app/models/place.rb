class Place < ApplicationRecord
  has_many :users
  has_many :items
  include JpPrefecture
  jp_prefecture :prefecture_code
end
