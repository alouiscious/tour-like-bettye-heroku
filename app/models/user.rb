class User < ActiveRecord::Base
  has_secure_password

  validates :username, presence: true
  validates :username, uniqueness: true

  validates :email, presence: true
  validates :email, uniqueness: true
  
  has_many :tours
  has_many :venues, through: :tours
end