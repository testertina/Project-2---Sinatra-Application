require 'sinatra'
require 'pg'
require 'rubygems'
require 'bundler'
require 'google_maps_service'

configure :development do
	set :public_folder, 'public'  	
end
Bundler.require
use Rack::MethodOverride
require File.join(File.dirname(__FILE__), 'app.rb')
run Sinatra::Application