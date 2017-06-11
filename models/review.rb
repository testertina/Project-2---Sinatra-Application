class Review < ActiveRecord::Base
	
  has_one :restaurant

  configure :development do
		set :public_folder, 'public'
  	register Sinatra::Reloader
	end

end
