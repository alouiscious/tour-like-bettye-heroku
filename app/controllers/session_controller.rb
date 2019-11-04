require './config/environment'

class SessionController < Sinatra::Base

  
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
      erb :'/user/success'
    else
      redirect '/failure'
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