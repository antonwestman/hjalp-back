class CreateJoinTablePreferenceFoodGenre < ActiveRecord::Migration[5.0]
  def change
    create_join_table :preferences, :food_genres do |t|
      t.index [:preference_id, :food_genre_id], name: :pref_to_food_genre
    end
  end
end
