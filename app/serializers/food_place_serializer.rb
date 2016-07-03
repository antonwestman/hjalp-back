class FoodPlaceSerializer < ActiveModel::Serializer
  attributes :id, :name, :longitude, :latitude, :genres, :rating

  def genres
    object.genres
  end

end
