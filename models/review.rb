require "geocoder"

class Review < ActiveRecord::Base
	extend Geocoder::Model::ActiveRecord
  has_one :restaurant

  geocoded_by :postcode
  after_validation :geocode
end
