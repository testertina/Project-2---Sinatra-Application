require 'sinatra'
require 'pg'
require 'rubygems'
require 'bundler'
require 'google_maps_service'

# require 'activerecord'

# Setup global parameters
GoogleMapsService.configure do |config|
  config.key = 'AIzaSyDbisQE-C7pGakNwFKRdZI2Re9Q0NkLIBY'
  config.retry_timeout = 20
  config.queries_per_second = 10
end

# ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'] || 'postgres://localhost/restaurant_reviews')


configure :development do
	set :public_folder, 'public'  	
end
Bundler.require
use Rack::MethodOverride
require File.join(File.dirname(__FILE__), 'app.rb')

run Sinatra::Application