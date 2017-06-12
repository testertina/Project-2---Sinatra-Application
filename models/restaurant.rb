require "geocoder"

class Restaurant < ActiveRecord::Base
	extend Geocoder::Model::ActiveRecord
  has_many :reviews, dependent: :destroy  

  geocoded_by :post_code
  after_validation :geocode

end
