require './config/environment'

class UsersController < ApplicationController

  get '/users/tour' do
    @venues = Venue.all
    erb :'/users/user_tour'
  end

  get '/users/new' do

    erb :'/users/user'
  end

  post '/users/tour' do
    binding.pry
    @user = User.create(params["user"])
    @user.venues << Venue.create(name: params["venuecreat"]["name"])

    erb :'/users/edit'
  end

  get '/venues' do
    erb :'/venues/bettye_venues'
  end

  post '/venues' do
    erb :'/user/edit'
  end


end
