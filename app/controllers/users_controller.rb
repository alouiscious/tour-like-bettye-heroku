require './config/environment'

class UsersController < ApplicationController

  get '/users/tour' do
    if Helpers.current_user(session)
      @venues = Venue.all
      @user = User.all
      @user_venues = UserVenue.all
    end
    # binding.pry
    erb :'/users/user_tour'
  end


  post '/users/tour' do
    if Helpers.logged_in?(session)
      @user = Helpers.current_user(session)
      @user = User.update(params[:user])
    end
    redirect "/users/#{session[:user_id]}"
  end

  get '/users/:id' do
    @venues = Venue.all
    @user = Helpers.current_user(session)
    @user_venues = UserVenue.all
    
    erb :'/users/edit'
  end

  
  post '/users/:id' do
    @venues = Venue.all
    @user = Helpers.current_user(session)
    @user_venues = UserVenue.all
    if !params[:user].keys.include?("venue_ids")
    binding.pry
      params[:user]["venue_ids"] = []
    end

    @user = User.find(params[:id])
    @user.update(params["user"])
    if !params["venue"]["name"].empty?
      @user.venues << Venue.create(name: params["venue"]["name"])
    end
    redirect "/users/:id"
  end
  
  patch '/users/:id' do
    @venues = Venue.all
    @user = Helpers.current_user(session)
    @user_venues = UserVenue.all
    binding.pry
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


  get '/venues' do
    erb :'/venues/bettye_venues'
  end

  post '/venues' do
    erb :'/venues/bettye_venues'
  end

  delete "/users/:id/delete" do    session.clear
    erb :'/users/index'
  end
end
