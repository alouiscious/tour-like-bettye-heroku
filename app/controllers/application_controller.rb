require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :'/user/index'

  end

  get "/new" do
    erb :'/user/new'
  end

end
