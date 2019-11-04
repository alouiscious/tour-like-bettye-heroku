ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])
Dotenv.load if ENV['SINATRA_ENV'] == "development"

# ActiveRecord::Base.establish_connection(
#   :adapter => "sqlite3",
#   :database => "db/#{ENV['SINATRA_ENV']}.sqlite"
# )

set :database_file, "./database.yml"
require_all 'app'
require './app/controllers/session_controller'
require './app/controllers/user_controller'
require './app/controllers/application_controller'

