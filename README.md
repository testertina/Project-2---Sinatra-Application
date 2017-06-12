# README

Welcome to RESTaurant Reviews.

This is a website created using Sinatra, demonstrating the following technologies:

* HTML & CSS
* JavaScript and JQuery
* Ruby
* Sinatra
* ActiveRecord ORM

## MVP

Resource: Restaurants
Gems: Google Maps API, Geocode.

Model: Resturants table containing: unique id, name, cusine_type, location, cost, opening_times.

###Seven RESTful routes:

* Index: show all restaurants "/restaurants"
* Show: show specific restaurants "/restaurants/:id"
* Edit: edit an existing restaurant "/restaurants/:id/edit"
* Update: update an existing restaurant "/restaurants/:id"
* Create: create a new restaurant "/restaurants"
* New: add a new restaurant "/restaurants/new
* Delete: delete an existing restaurant "/restaurants/:id"

###Gems

GEOCODER: Input post code, use geocoder gem file to convert post code into longitude and latitude, display this on the cursor in google maps.

## Extension

Second resource: Reviews

Model: Review table containing: title, body, restaurant_id.  This will link to the restaurant table. The restaurant_id will link to the primary key id in restaurants table using a foreign key.

* Index: show specific restaurants' reviews "/restaurants/:id/reviews"
* Show: show specific restaurants' specific review "/restaurants/:id/reviews/:id"
* Edit: edit an existing restaurant review "/restaurants/:id/reviews/:id"
* Update: update an existing restaurant review "/restaurants/:id/reviews/:id"
* Delete: delete an existing restaurant review "/restaurants/:id/reviews/:id"

Create: create a new restaurant review will be done on restaurant page.
New: add a new restaurant will be done on restaurant page.


## Using ActiveRecord

* Create Restaurants controller
* Create Reviews controller

These will contain the RESTful routes needed for each resource.

* Create an app.rb

This file will require the models and controllers and work as a router.

```
# Load models
Dir[File.dirname(__FILE__) + '/models/*.rb'].each { |file| require file }

# Load controllers
Dir[File.dirname(__FILE__) + '/controllers/*.rb'].each { |file| require file }
```

* Create an config.ru

This file will run the app.rb file (i.e. run the router) using ``` rackup ``` (or shotgun).

* Gemfile

This file contains all the gems required for this project. It will be initialised in terminal using ``` bundle ```.

* home.erb

This is a view file which will load upon the rackup. It's URL is "/".  On this page there will be options to either view restaurants/reviews or create restaurants/reviews.

* layout.erb

This file contains the base HTML layout the whole website should follow.

* resturants.rb and reviews.rb

These are files which contain the classes for the restaurants and reviews resources, respectively.  Within these classes the dependancies are specified.

```
class Restaurant < ActiveRecord::Base
  has_many :reviews  
end
```

* Rake file

Requires ActiveRecord.

Rake is a tool you can use with Ruby projects. It allows you to use ruby code to define "tasks" that can be run in the command line.

Rake can be downloaded and included in ruby projects as a ruby gem.

Once installed, you define tasks in a file named "Rakefile" that you add to your project.

We call it a "build tool" because Rake comes with some libraries that make it easy to do tasks that are common during the build/deploy process, like file operations (creating, deleting, renaming, & moving files), publishing sites via FTP/SSH, and running tests.

* Migrations

```
rake db:create_migration NAME=restaurants
```

This command in terminal creates migration files which can be used to create tables for the resources we need.  In this instance it will store the table we need for a Resturant input.

```
class Restaurants < ActiveRecord::Migration[5.1]
  def change
  	create_table :restaurants do |t|
  		t.text :restaurant_name, VARCHAR(200), NOT NULL
  		t.text :cuisine_type, VARCHAR(20), NOT NULL
  		t.text :location, NOT NULL
  		t.text :price, VARCHAR(4) CHECK (cost == '£' OR cost == '££' OR cost == '£££' OR cost == '££££')
  		t.text :opening_times, NOT NULL
  		t.float :latitude, NOT NULL
  		t.float :longitude, NOT NULL
  end
end
```
Also, setting validations on the input the user can give.

* database.yml

This file specifies what database type to use i.e. postgres and connects to your database in postgres.

```
development:
  adapter: postgresql
  database: cookbook_development
```

The database "restaurant_reviews" is created in psql so when the migration files are migrated in terminal they have a database to link to.

```
rake db:migrate
```
This will create a schema file which is the blueprint to creat a resturants and reviews. This is not to be edited.

* Editing RestaurantsController

Created 7 RESTful routes for the Restaurants controller.

The user must be able to:

* INDEX: View all restaurants.
* SHOW: View a specific restaurants.
* CREATE: Create a restaurant.
* NEW: Save a new restaurant.
* EDIT: A specific restaurant.
* UPDATE: Save changes made to a specific restaurant.

Each RESTful route (exceptions: DELETE and UPDATE) have corresponding erb files in views/restaurants.  These files are loaded to the site when the user request the corresponding RESTful route.

Each RESTful route is appropiately commented within the restaurant_controller.rb file.

* Editing ReviewsController

Created 6 RESTful routes for the Reviews Controller.

The user must be able to:

* INDEX: View all reviews associated with a restaurant.
* SHOW: View a specific review associated with a restaurant.
* CREATE: Create a review for a particular restaurant.
* EDIT: A specific review.
* UPDATE: Save changes made to a specific review.

Each RESTful route (exceptions: DELETE and UPDATE) have corresponding erb files in views/restaurants.  These files are loaded to the site when the user request the corresponding RESTful route.

No NEW RESTful route as a review is created in the restaurants/show.erb and saved to the review table using a foreign key.

## Styling

Attempted to use Bootstrap, however customisation of Bootstrap elements can be fiddly.

Instead a CSS file was created within a public folder in the sinatra-app.  Elements within the erb files for Restaurants and Reviews have class names which are used to define styling.  The app is not responsive on mobiles/tablets, also when console is opened items shift.

## Extra Gems: Geocoder and Google Maps API

### Geocoder

```gem geocoder ``` within the gemfile.

GEOCODER: Input post code, use geocoder gem file to convert post code into longitude and latitude, display this on the cursor in google maps.

Had to create a new migration in order to add postcode to the restaurants and reviews tables.  This is required for geocoder to find the coordinates by postcode.

Technique was found using: 

* https://github.com/alexreisner/geocoder
* http://www.rubygeocoder.com/

Geocoder is then enabled in the restaurants and reviews models.

### Google Maps API

Created an API key using gmail account.  Enabled specific API's following instructions from:

https://github.com/edwardsamuel/google-maps-services-ruby

Found on google a step by step on how to implement google maps within html.

Created a public JS file in which JS could be contained.


