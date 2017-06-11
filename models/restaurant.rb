require "geocoder"

class Restaurant < ActiveRecord::Base
	extend Geocoder::Model::ActiveRecord
  has_many :reviews  

  geocoded_by :post_code
  after_validation :geocode

  configure :development do
		set :public_folder, 'public'
  	register Sinatra::Reloader
	end
end