require './config/environment'

class UsersController < ApplicationController
  get '/venues' do
    erb :'/venues/bettye_venues'
  end
end
