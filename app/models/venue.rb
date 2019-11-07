class Venue < ActiveRecord::Base
  has_secure_password
  has_many :user_venues
  has_many :venues, through: :user_venues
end