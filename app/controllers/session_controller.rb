require './config/environment'

class SessionController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, 'pw'
  end
  
  helpers do

    def logged_in?
      !!session[:user_id]
    end

    def current_user
      User.find(session[:user_id])
    end
  end

  get '/success' do
    if logged_in?
      erb :'/user/user_venues'
    else
      redirect '/'
    end
  end

  get '/failure' do
    erb :'/session/failure'
  end

  get '/logout' do
    session.clear
    redirect '/'
  end



end