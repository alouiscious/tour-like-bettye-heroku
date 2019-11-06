require './config/environment'

class SessionController < ApplicationController
  
  get '/signup' do
    erb :'sessions/signup'
  end

  post '/signup' do
    @user = User.create(:username => params[:username], :password => params[:password], :email => params[:email], :phone => params[:phone], :bandname => params[:bandname], :first_name => params[:first_name], :last_name => params[:last_name], :fullname => params[:fullname], :nickname => [:nickname], :zipcode => params[:zipcode])
    if @user.save
      redirect "/login"
    else
      # redirect "/session/failure"
      erb :'/sessions/failure'
    end
      @users = User.all
  end

  get '/login' do
    @users = User.all
    erb :'/users/login'
  end
  
  post '/login' do
    if logged_in?    
     user = User.find_by(:username => params[:username])
    end

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      # session[:first_name] = user.first_name
      # session[:last_logged_in_at] = DateTime.now
      redirect "/account"
    else
      redirect "/failure"
    end
  end


  get 'account' do
    if @current_user.id
      @current_user = User.find_by_id(session[:user_id])
      erb :'users/user_venues'
    else
      redirect '/failure'
    end
  end


  get '/failure' do
    erb :'/sessions/failure'
  end

  get '/logout' do
    session.clear
    redirect '/'
  end

end