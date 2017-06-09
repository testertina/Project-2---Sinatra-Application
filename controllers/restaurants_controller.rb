# Index
get "/restaurants" do
	@restaurants = Restaurant.all
	erb :"restaurants/index"
end

# New
get "/restaurants/new" do
	# @restaurants = Restaurant.all
	# erb :"restaurants/new"
end

# Show
get "/restaurants/:id" do
	@restaurant = Restaurant.find(params[:id])
	erb :"restaurants/show"
end

# Create
post "/restaurants" do
	# @restaurant = Restaurant.create(params[:restaurant])
 	# redirect("/restaurants/#{@restaurant.id}")
end

# Edit
get "restaurants/:id/edit" do
	@restaurant = Restaurant.find(params[:id])
	erb :"restaurants/edit"
end

# Update
put "/restaurants/:id/update" do
end

# Delete
delete "/restaurants/:id/delete" do
end