class AddYelpFieldsToFoodPlaces < ActiveRecord::Migration[5.0]
  def change
    add_column :food_places, :yelp_id, :string
    add_column :food_places, :description, :string
    add_column :food_places, :image_url, :string
    add_column :food_places, :is_closed, :boolean
  end
end
