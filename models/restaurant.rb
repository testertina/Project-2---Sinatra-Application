require "geocoder"

class Restaurant < ActiveRecord::Base
	extend Geocoder::Model::ActiveRecord
  has_many :reviews  

  geocoded_by :post_code
  after_validation :geocode

end