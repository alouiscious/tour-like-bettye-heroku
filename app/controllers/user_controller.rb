require './config/environment'

class UserController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "pw"
    end
  
  get '/signup' do
    erb :'/user/new'
  end

  post '/signup' do
    user = User.new(:username => params[:username], :password => params[:password])
    if user.save
      redirect "/login"
    else
      redirect "/failure"
    end
  end

  get '/login' do
    erb :'/user/user_venues'

  end

  post '/login' do
    binding.pry
    user = User.find_by(:username => params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect "/success"
    else
      redirect "/failure"
    end
  end
end