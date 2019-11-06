require './config/environment'

class ApplicationController < Sinatra::Base
 
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    # set :views, Proc.new { File.join(root, "./views") }
    # register Sinatra::Flash
    # register Sinatra::ActiveRecordExtension
    enable :sessions
    set :session_secret, ENV.fetch('SESSION_SECRET') 
  end
    
  get '/' do
    erb :'user/index'
  end

  private

    def logged_in?(session)
      !!session[:user_id]
    end
  
    def current_user(session)
      User.find(session[:user_id])
    end
    
  
end
