class Restaurants < ActiveRecord::Migration[5.1]
  def change
  	create_table :restaurants do |t|
  		t.string :restaurant_name, :limit => 200, :null => false
  		t.string :cuisine_type, :limit => 20, :null => false
  		t.string :location, :null => false
  		t.string :price, :limit => 4, :null => false
  		t.string :opening_times, :null => false
  		t.float :latitude, :null => false
  		t.float :longitude, :null => false
  	end
  end
end
