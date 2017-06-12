require_relative "../models/restaurant.rb"
require_relative "../models/review.rb"

Restaurant.create(restaurant_name: "Omar's", cuisine_type: "Lebanese", location: "Southend", post_code: "SS1 3AU", price: "££", opening_times: "9am-10pm")
Restaurant.create(restaurant_name: "Tina's", cuisine_type: "Indian", location: "Camden", post_code: "NW3 2EG", price: "£", opening_times: "9am-12am")
Restaurant.create(restaurant_name: "Max's", cuisine_type: "Italian", location: "London", post_code: "NW1 8HB", price: "££", opening_times: "9am-10pm")
Restaurant.create(restaurant_name: "Ese's", cuisine_type: "Nigerian", location: "Brighton", post_code: "BN2 4RQ", price: "£££", opening_times: "9am-10pm")

@review = Review.create(restaurant_name: "Omar's", cuisine_type: "Lebanese", location: "Southend", post_code: "SS1 3AU", price: "££", opening_times: "9am-10pm", review_text: "This place is so friendly!")
@review = Review.create(restaurant_name: "Tina's", cuisine_type: "Indian", location: "Camden", post_code: "NW3 2EG", price: "£", opening_times: "9am-12am", review_text: "Tasty food!")
@review = Review.create(restaurant_name: "Max's", cuisine_type: "Italian", location: "London", post_code: "NW1 8HB", price: "££", opening_times: "9am-10pm", review_text: "Great service! Will Return.")
@review = Review.create(restaurant_name: "Ese's", cuisine_type: "Nigerian", location: "Brighton", post_code: "BN2 4RQ", price: "£££", opening_times: "9am-10pm", review_text: "Good range of food.")