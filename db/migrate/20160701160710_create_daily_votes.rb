class CreateDailyVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :daily_votes do |t|
      t.integer :user_id
      t.integer :food_place_id
      t.integer :day_id
      t.timestamps
    end
  end
end
