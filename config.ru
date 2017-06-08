require 'sinatra'
require 'pg'
require 'sinatra/reloader' if development?

use Rack::MethodOverride

run app