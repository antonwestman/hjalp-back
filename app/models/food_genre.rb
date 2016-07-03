class FoodGenre < ApplicationRecord
  has_and_belongs_to_many :places, class_name: "FoodPlace"
  has_and_belongs_to_many :preferences

end
