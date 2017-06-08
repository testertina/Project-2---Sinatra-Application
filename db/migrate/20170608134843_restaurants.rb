class Restaurants < ActiveRecord::Migration[5.1]
  def change
  	create_table :restaurants do |t|
  		t.text :restaurant_name, VARCHAR(200), NOT NULL
  		t.text :cuisine_type, VARCHAR(20), NOT NULL
  		t.text :location, NOT NULL
  		t.text :price, VARCHAR(4) CHECK (cost == '£' OR cost == '££' OR cost == '£££' OR cost == '££££')
  		t.text :opening_times NOT NULL
  end
end
