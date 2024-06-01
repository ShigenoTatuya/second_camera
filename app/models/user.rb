class User < ApplicationRecord
  enum role: { general: 0, admin: 10 }
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  validates :username, presence: true
end
