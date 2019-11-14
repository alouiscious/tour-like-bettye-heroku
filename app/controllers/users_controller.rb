require './config/environment'

class UsersController < ApplicationController
  get '/user' do
    # binding.pry
    if Helpers.logged_in?(session)
      @current_user = User.find_by_id(session[:user_id])
      erb :'/sessions/success'
    else
      redirect '/failure'
    end
  end

  get '/users/venues' do
    if Helpers.current_user(session)
      @venues = Venue.all
      @user = User.all
      @tours = Tour.all
    end

    # if !params[:user].keys.include?("venue_ids")
    #   @tours.each do |id| 
    #     if id.user_id == Helpers.current_user(session)
    #       @venues.map do |venue|
    #         venue_ids 
    #       end
    #     end
    #   end
    # end
    erb :'/users/tour'
  end
  
  get '/users/new' do

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
    @tours = Tour.all
    
    erb :'/users/edit'
  end

  
  post '/users/:id' do
    @venues = Venue.all
    @user = Helpers.current_user(session)
    @tours = Tour.all
    binding.pry
      if !params[:user].keys.include?("venue_ids")
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






  delete "/users/:id/delete" do    
    session.clear
    erb :'/users/index'
  end
end
