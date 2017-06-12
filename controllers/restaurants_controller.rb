# Index: user can view all restaurants.
get "/restaurants" do
	@restaurants = Restaurant.all
	erb :"restaurants/index"
end

# New: user can input data for a new restaurant.
get "/restaurants/new" do
	@restaurants = Restaurant.all # Finds all restaurants
	erb :"restaurants/new"
end

# Show: user can view a specific restaurant to view.
get "/restaurants/:id" do
	@restaurant = Restaurant.find(params[:id]) # Finds a restaurant with specific id.
	erb :"restaurants/show"
end

# Post review: user can add review to a specific restaurant.
post "/restaurants/:id" do
	@restaurant = Restaurant.find(params[:id]) # Finds a restaurant with specific id.
	@review = Review.create(restaurant_id: @restaurant.id, restaurant_name: @restaurant.restaurant_name, cuisine_type: @restaurant.cuisine_type, location: @restaurant.location, post_code: @restaurant.post_code, price: @restaurant.price, opening_times: @restaurant.opening_times, review_text: params[:review_text])
	redirect("/restaurant/:id")
end

# Create: user can save their new restaurant data.
post "/restaurants" do
	# Save new restaurant elements within a restaurant variable.
	@restaurant = Restaurant.create(restaurant_name: params[:restaurant_name], cuisine_type: params[:cuisine_type], location: params[:location], post_code: params[:post_code], price: params[:price], opening_times: params[:opening_times], latitude: params[:latitude], longitude: params[:longitude])
 	redirect("/restaurants/#{@restaurant.id}")
end

# Edit: user can edit a specific restaurant.
get "/restaurants/:id/edit" do
	@restaurant = Restaurant.find(params[:id]) # Finds a restaurant with specific id.
	erb :"restaurants/edit"
end

# Update: user an save the changes made to a specific website.
put "/restaurants/:id/update" do
	@restaurant = Restaurant.find(params[:id]) # Finds a restaurant with specific id.
	# Updates each restaurant element.
	@restaurant.update(restaurant_name: params[:restaurant_name])
	@restaurant.update(cuisine_type: params[:cuisine_type])
	@restaurant.update(location: params[:location])
	@restaurant.update(post_code: params[:post_code])
	@restaurant.update(price: params[:price])
	@restaurant.update(opening_times: params[:opening_times])
	
	redirect("/restaurants")
end

# Delete: user can delete a specific restaurant.
delete "/restaurants/:id/delete" do
	@restaurant = Restaurant.find(params[:id]) # Finds a restaurant with specific id.
	@reviews = Review.all # Lists all reviews on this restaurant
	@restaurant_reviews = @restaurant.reviews # Finds a review with same id as restaurant.
	@restaurant_reviews.destroy
	@restaurant.destroy
	redirect("/restaurants")
end