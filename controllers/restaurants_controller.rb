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

# Create
post "/restaurants" do
	@resturants = Restaurant.create!(params[:restaurant])
  redirect("/restaurants/#{@restaurant.id}")
end

# Show
get "/restaurants/:id" do
end

# Edit
get "restaurants/:id" do
end

# Update
put "/restaurants/:id" do
end

# Delete
delete "/restaurants/:id" do
end