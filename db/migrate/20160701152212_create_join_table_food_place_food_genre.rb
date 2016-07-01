class CreateJoinTableFoodPlaceFoodGenre < ActiveRecord::Migration[5.0]
  def change
    create_join_table :food_places, :food_genres do |t|
      t.index [:food_place_id, :food_genre_id]
    end
  end
end
