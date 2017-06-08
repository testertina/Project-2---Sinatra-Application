class CreateReviews < ActiveRecord::Migration[5.1]
  def change
  	  create_table :reviews do |t|
  	  	t.references :restaurant, index: true		
	  		t.string :restaurant_name, :limit => 200, null: false
	  		t.string :cuisine_type, :limit => 20, null: false
	  		t.string :location, null: false
	  		t.string :price, :limit => 4 :price => '£', :price => '££', :price => '£££', :price => '££££'
	  		t.string :opening_times, null: false
	  		t.text :review_text, null: false 

	  		t.timestamps
					
	  	end
	  	add_foreign_key :reviews, :restaurants, column: :restaurant_id	
  end
end
