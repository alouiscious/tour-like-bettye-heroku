class Owner < ActiveRecord::Base
  has_many :owner_venues
  has_many :venues, through: :owner_venues
end