require './config/environment'

class ApplicationController < Sinatra::Base
 
  configure do
    set :public_folder, './public'
    set :views, 'app/views'
    set :views, Proc.new { File.join(root, "./views") }
    # register Sinatra::Flash
    register Sinatra::ActiveRecordExtension
    enable :sessions
    set :session_secret, ENV.fetch('SESSION_SECRET') 
  end
    
  get '/' do
    erb :'user/index'
  end

  get '/signup' do
    erb :'session/signup'
  end

  post '/signup' do
    @user = User.create(:username => params[:username], :password => params[:password], :email => params[:email], :phone => params[:phone], :bandname => params[:bandname], :first_name => params[:first_name], :last_name => params[:last_name], :zipcode => params[:zipcode])
    if @user.save
      redirect "/success"

    else
      # redirect "/session/failure"
      erb :'/session/failure'
    end

    @users = User.all
   
  end

  get '/login' do
    @users = User.all
    erb :'/user/login'
  end
  
  
post '/login' do
    user = User.find_by(:username => params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect "/user/user_venues"
    else
      redirect "/failure"
    end
  end

end
