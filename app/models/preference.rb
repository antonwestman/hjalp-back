class Preference < ApplicationRecord
  # belongs_to :user
  has_and_belongs_to_many :genres, class_name: "FoodGenre"
  has_and_belongs_to_many :places, class_name: "FoodPlace"

end
