class CreateJoinTablePreferenceFoodPlace < ActiveRecord::Migration[5.0]
  def change
    create_join_table :preferences, :food_places do |t|
      t.index [:preference_id, :food_place_id], name: :pref_to_food_place
    end
  end
end
