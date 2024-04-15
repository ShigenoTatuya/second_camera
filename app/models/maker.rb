class Maker < ApplicationRecord
  has_many :products
  validates :maker_name, presence: true, uniqueness: true
end
