class UserVenues < ActiveRecord::Base
  belongs_to :users
  belongs_to :venues
end