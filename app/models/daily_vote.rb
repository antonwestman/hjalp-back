class DailyVote < ApplicationRecord
  belongs_to :day
  belongs_to :voter, class_name: "User"
  belongs_to :place, class_name: "FoodPlace"
end
