class FoodPlace < ApplicationRecord
  has_and_belongs_to_many :genres, class_name: "FoodGenre"
  has_and_belongs_to_many :preferences
end
