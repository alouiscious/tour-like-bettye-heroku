require './config/environment'
require 'sinatra'

use RackMethodOverride

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

require_relative 'app/controllers/application_controller'
require_relative 'app/controllers/session_controller'
require_relative 'app/controllers/user_controller'

use UserController
use SessionController
run ApplicationController
