require './config/environment'

class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
 
  configure do
    set :public_folder, 'public'
    set :views, Proc.new { File.join(root, "/views/") }
    enable :sessions
    set :session_secret, "pw"
    end


end
