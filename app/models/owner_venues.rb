class OwnerVenues < ActiveRecord::Base 
  belongs_to :owner
  belongs_to :venue
end