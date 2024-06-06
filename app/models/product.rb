class Product < ApplicationRecord
  belongs_to :maker
  belongs_to :product_type
  validates :name, presence: true, uniqueness: true
  
  mount_uploader :thumbnail, ImageUploader
  
  enum price_range: {
    not_listed: 0,
    price_less_than_10000: 1,
    price_10000_or_more_less_than_30000: 2,
    price_30000_or_more_less_than_50000: 3,
    price_50000_or_more_less_than_100000: 4,
    price_100000_or_more_less_than_200000: 5,
    price_200000_or_more_less_than_300000: 6,
    price_300000_or_more_less_than_500000: 7,
    price_500000_or_more_less_than_1000000: 8,
    price_1000000_or_more: 9
  }
  
  enum photograph_aim: {
    Other: 0,
    Family_and_Children: 1,
    Travel_and_Landscape: 2,
    Aircraft_and_Birds_and_Sports: 3,
    Portrait: 4,
    All_Round: 5
  }
end
