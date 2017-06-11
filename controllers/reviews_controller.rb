# Create: user can create a review for a restaurant.
post "/restaurants/:id/reviews" do
	@restaurant = Restaurant.find(params[:id]) # Finds a restaurant with specific id.
	# Creates a review in the table reviews.
	@review = Review.create(restaurant_id: @restaurant.id, restaurant_name: @restaurant.restaurant_name, cuisine_type: @restaurant.cuisine_type, location: @restaurant.location, post_code: @restaurant.post_code, price: @restaurant.price, opening_times: @restaurant.opening_times, review_text: params[:review_text])
 	redirect("/restaurants/#{@restaurant.id}/reviews")
end

# Index: user can view a specific restaurant and their reviews.
get "/restaurants/:id/reviews" do
	@restaurant = Restaurant.find(params[:id]) # Finds a restaurant with specific id.
	@reviews = Review.all # Lists all reviews on this resturant
	@review = Review.find_by(restaurant_id: @restaurant.id) # Finds a review with same id as restaurant.
	erb :"reviews/index"
end

# Show: user can read a specific review.
get "/restaurants/:id/reviews/:id2" do
	@restaurant = Restaurant.find(params[:id]) # Finds a restaurant with specific id.
	@review = Review.find(params[:id2]) # Finds a review with same id as restaurant.
	erb :"reviews/show"
end

# Edit: Allows user to make changes to a review.
get "/restaurants/:id/reviews/:id2/edit" do
	@restaurant = Restaurant.find(params[:id]) # Finds a restaurant with specific id.
	@review = Review.find(params[:id2]) # Finds a review with same id as restaurant.
	erb :"reviews/edit"
	
end

# Update: saved changes made to a review.
patch "/restaurants/:id/reviews/:id2/update" do
	@restaurant = Restaurant.find(params[:id]) # Finds a restaurant with specific id.
	@review = Review.find(params[:id2]) # Finds a review with same id as restaurant.
	# Updates each review element.
	@review.update(review_text: params[:review_text])
	
	redirect("/restaurants/#{@restaurant.id}/reviews")
end

# Delete: deletes a specific review.
delete "/restaurants/:id/reviews/:id2/delete" do
	@restaurant = Restaurant.find(params[:id]) # Finds a restaurant with specific id.
	@review = Review.find(params[:id2]) # Finds a review with same id as restaurant.
	@review.destroy

	redirect("/restaurants/#{@restaurant.id}")
end