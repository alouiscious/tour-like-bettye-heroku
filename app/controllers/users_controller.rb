require './config/environment'

class UsersController < ApplicationController

  
  get '/users/tour' do
    @venues = Venue.all

    # @users = Users.all
    # binding.pry
    erb :'/users/user_tour'
  end

  get '/users/new' do

    erb :'/users/user'
  end

  post 'users/tour' do
    
  end

  get '/venues' do
    erb :'/venues/bettye_venues'
  end
end
