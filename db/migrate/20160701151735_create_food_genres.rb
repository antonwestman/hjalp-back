class CreateFoodGenres < ActiveRecord::Migration[5.0]
  def change
    create_table :food_genres do |t|
      t.string    :name
      t.timestamps
    end
  end
end
