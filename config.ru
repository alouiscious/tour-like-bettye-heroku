require './config/environment'
require 'sinatra'



if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

# require_relative 'app/controllers/application_controller'
# require_relative 'app/controllers/session_controller'
# require_relative 'app/controllers/user_controller'
require_all 'app'
use Rack::MethodOverride

run ApplicationController

# use UserController
use SessionController

