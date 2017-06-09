# Index
get "/restaurants" do
	@restaurants = Restaurant.all
	erb :"restaurants/index"
end

# New
get "/restaurants/new" do
	@restaurants = Restaurant.all
	erb :"restaurants/new"
end

# Show
get "/restaurants/:id" do
	@restaurant = Restaurant.find(params[:id])
	erb :"restaurants/show"
end

# Create
post "/restaurants" do
	@restaurant = Restaurant.create(restaurant_name: params[:restaurant_name], cuisine_type: params[:cuisine_type], location: params[:location], price: params[:price], opening_times: params[:opening_times], latitude: params[:latitude], longitude: params[:longitude])
 	redirect("/restaurants/#{@restaurant.id}")
end

# Edit
get "/restaurants/:id/edit" do
	@restaurant = Restaurant.find(params[:id])
	erb :"restaurants/edit"
end

# Update
put "/restaurants/:id/update" do
	@restaurant = Restaurant.find(params[:id])
	@restaurant.update(restaurant_name: params[:restaurant_name])
	@restaurant.update(cuisine_type: params[:cuisine_type])
	@restaurant.update(location: params[:location])
	@restaurant.update(price: params[:price])
	@restaurant.update(opening_times: params[:opening_times])
	
	redirect("/restaurants")
end

# Delete
delete "/restaurants/:id/delete" do
end