require './config/environment'

class SessionController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, 'pw'
  end
  

  get '/success' do
    if logged_in?
      redirect '/success/:id'
    else
      puts "Welcome, please login to your Tour Like Bettye account"
      erb :'session/login'
    end
  end

  get '/success/:id' do
    @user = User.find_by_id(params[:id])
    
    erb :'user/user_venues'
  end


  get '/failure' do
    erb :'/session/failure'
  end

  get '/logout' do
    session.clear
    redirect '/'
  end

end