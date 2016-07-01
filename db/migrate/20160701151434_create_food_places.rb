class CreateFoodPlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :food_places do |t|
      t.string    :name, null: false
      t.decimal   :rating, default: 0
      t.decimal   :longitude
      t.decimal   :latitude
      t.timestamps
    end
  end
end
