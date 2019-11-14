require './config/environment'

class VenuesController < ApplicationController
  get '/venues' do
    erb :'/venues/bettye_venues'
  end

  post '/venues' do
    erb :'/venues/bettye_venues'
  end

  patch '/venues/:id' do
    @venues = Venue.all
    @user = Helpers.current_user(session)
    @tours = Tour.all
    # binding.pry
      if !params[:user].keys.include?("venue_ids")
        params[:user]["venue_ids"] = []
      end

    @user = User.find(params[:id])
    @user.update(params["user"])
    # if !params["venue"]["name"].empty?
    #   @user.venues << Venue.create(name: params["venue"]["name"])
    # end  
    redirect "/users/:id"
    # erb :'/users/user_tour'
  end
end

