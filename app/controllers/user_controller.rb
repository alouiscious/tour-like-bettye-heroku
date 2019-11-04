require './config/environment'

class UserController < ApplicationController

  get "/" do
    erb :'/user/index'
  end

  get "/new" do
    erb :'/user/new'
  end

  get '/signup' do
    erb :'/user/index'
  end

  post '/user/signup' do
    binding.pry
    # @user = User.create(:username => params[:username], :password => params[:password], :email => params[:email])
    @user = User.create(params[:user])
    if @user.save
      redirect "/success"
    else
      redirect "/failure"
    end

    @users = User.all
   
  end

  get '/login' do
    @users = User.all
    erb :'/user/new'
  end
  
  
post '/login' do
    @user = User.find_by(username: params[:username], password: params[:password])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect "/session/success"
    else
      redirect "/session/failure"
    end
  end
end