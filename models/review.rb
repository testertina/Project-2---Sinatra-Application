class Review < ActiveRecord::Base
  has_one :restaurant
end
