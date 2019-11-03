class Venue < ActiveRecord::Base
  has_many :user_venues
  has_many :users, through: :user_venues
end