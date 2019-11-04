require './config/environment'

class ApplicationController < Sinatra::Base
 
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    # set :views, Proc.new { File.join(root, "./views") }
    # register Sinatra::Flash
    # register Sinatra::ActiveRecordExtension
    # enable :sessions
    # set :session_secret, ENV.fetch('SESSION_SECRET') 
  end
    
  get '/' do
    redirect to  'new'
  end

  get "/new" do
    erb :'/index'
  end

  get '/signup' do
    erb :'new'
  end

  post '/signup' do
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
