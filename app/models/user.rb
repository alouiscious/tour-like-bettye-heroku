class User < ActiveRecord::Base
  has_secure_password

  validates :username, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
  
  has_many :user_venues
  has_many :venues, through: :user_venues
end