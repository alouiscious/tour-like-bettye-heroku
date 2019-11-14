require './config/environment'
require 'sinatra'
require 'open-uri'

# if ActiveRecord::Migrator.needs_migration?
#   raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
# end

require_all 'app'
use Rack::MethodOverride

run ApplicationController
use UsersController
use SessionsController
use ToursController

