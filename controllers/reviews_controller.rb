# Index: user can view all reviews.
# get "/reviews" do
# 	@reviews = Review.all
# 	erb :"reviews/index"
# end

# # New
# get "/reviews/new" do
# end

# Create
post "/restaurants/:id/reviews" do
	@restaurant = Restaurant.find(params[:id]) # Finds a restaurant with specific id.
	@review = Review.create(restaurant_id: @restaurant.id, restaurant_name: @restaurant.restaurant_name, cuisine_type: @restaurant.cuisine_type, location: @restaurant.location, price: @restaurant.price, opening_times: @restaurant.opening_times, review_text: params[:review_text])
 	redirect("/restaurants/#{@restaurant.id}/reviews")
end

# Index user can view a specific restaurant and their reviews.
get "/restaurants/:id/reviews" do
	@restaurant = Restaurant.find(params[:id]) # Finds a restaurant with specific id.
	@reviews = Review.all
	# @review = Review.find_by(restaurant_id: @restaurant.id) # Finds a review with same id as restaurant.
	erb :"reviews/index"
end


# Edit
get "reviews/:id" do
end

# Update
put "/reviews/:id" do
end

# Delete
delete "/restaurants/:id" do
end