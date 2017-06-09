# Index: user can view all restaurants.
get "/restaurants" do
	@restaurants = Restaurant.all
	erb :"restaurants/index"
end

# New: user can input data for a new restaurant.
get "/restaurants/new" do
	@restaurants = Restaurant.all
	erb :"restaurants/new"
end

# Show: user can view a specific restaurant to view.
get "/restaurants/:id" do
	@restaurant = Restaurant.find(params[:id])
	erb :"restaurants/show"
end

# Create: user can save their new restaurant data.
post "/restaurants" do
	@restaurant = Restaurant.create(restaurant_name: params[:restaurant_name], cuisine_type: params[:cuisine_type], location: params[:location], price: params[:price], opening_times: params[:opening_times], latitude: params[:latitude], longitude: params[:longitude])
 	redirect("/restaurants/#{@restaurant.id}")
end

# Edit: user can edit a specific restaurant.
get "/restaurants/:id/edit" do
	@restaurant = Restaurant.find(params[:id])
	erb :"restaurants/edit"
end

# Update: user an save the changes made to a specific website.
put "/restaurants/:id/update" do
	@restaurant = Restaurant.find(params[:id])
	@restaurant.update(restaurant_name: params[:restaurant_name])
	@restaurant.update(cuisine_type: params[:cuisine_type])
	@restaurant.update(location: params[:location])
	@restaurant.update(price: params[:price])
	@restaurant.update(opening_times: params[:opening_times])
	
	redirect("/restaurants")
end

# Delete: user can delete a specific restaurant.
delete "/restaurants/:id/delete" do
	@restaurant = Restaurant.find(params[:id])
	@restaurant.destroy

	redirect("/restaurants")
end