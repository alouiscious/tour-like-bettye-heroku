require './config/environment'

class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
 
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, ENV.fetch('SESSION_SECRET') 
  end
    


end
