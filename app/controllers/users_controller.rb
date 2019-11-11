require './config/environment'

class UsersController < ApplicationController

  get '/users/tour' do
    @venues = Venue.all
    @user = User.all
    # binding.pry
    erb :'/users/user_tour'
  end


  post '/users/tour' do
    if Helpers.logged_in?(session)
      @user = Helpers.current_user(session)
      @user = User.update(params[:user])
    # binding.pry
    end
    redirect "/users/#{session[:user_id]}"
    # erb :'/users/edit'
  end

  get '/users/:id' do
    @venues = Venue.all
    @user = User.find_by_id(session[:user_id])
    @user_venues = UserVenue.all
    # binding.pry
    erb :'/users/edit'
  end

  get '/venues' do
    erb :'/venues/bettye_venues'
  end

  post '/venues' do
    erb :'/user/edit'
  end

  patch '/users_tour' do

  end

  delete 'users_tour' do

  end
end
