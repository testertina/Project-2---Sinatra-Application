class AddGeocoder < ActiveRecord::Migration[5.1]
  def change
  	add_column :restaurants, :post_code, :string
  	add_column :reviews, :post_code, :string
  end
end
