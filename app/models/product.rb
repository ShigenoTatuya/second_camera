class Product < ApplicationRecord
  belongs_to :maker
  belongs_to :product_type
  validates :product_name, presence: true, uniqueness: true
  
  enum price_range: {
    '未掲載': 0,
    '1万円未満': 1,
    '1万円以上、3万円未満': 2,
    '3万円以上、5万円未満': 3,
    '5万円以上、10万円未満': 4,
    '10万円以上、20万円未満': 5,
    '20万円以上、30万円未満': 6,
    '30万円以上、50万円未満': 6,
    '50万円以上、100万円未満': 8,
    '100万円以上': 9
  }
  
  enum photograph_aim: {
    'その他': 0,
    '家族・子供': 1,
    '旅行・風景': 2,
    '航空機・野鳥・スポーツ': 3,
    'ポートレート': 4,
    'オールラウンド': 5
  }
end
