# Index: user can view all reviews.
# get "/reviews" do
# 	@reviews = Review.all
# 	erb :"reviews/index"
# end

# # New
# get "/reviews/new" do
# end

# Show user can view a specific restaurant and their reviews.
get "/restaurants/:id/reviews/:id" do
	@restaurant = Restaurant.find(params[:id]) # Finds a restaurant with specific id.
	erb :"reviews/show"
end

# Create
post "/reviews" do
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