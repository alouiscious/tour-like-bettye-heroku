require './config/environment'

class ApplicationController < Sinatra::Base
 
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    # register Sinatra::Flash
    register Sinatra::ActiveRecordExtension
    enable :sessions
    # set :session_secret, ENV.fetch('SESSION_SECRET') 
  end
    


end
