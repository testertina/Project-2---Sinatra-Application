require 'sinatra'
require 'pg'
require 'rubygems'
require 'bundler'

Bundler.require
use Rack::MethodOverride
require File.join(File.dirname(__FILE__), 'app.rb')
run Sinatra::Application