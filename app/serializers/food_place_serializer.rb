class FoodPlaceSerializer < ActiveModel::Serializer
  attributes :id,
             :name,
             :longitude,
             :latitude,
             :genres,
             :rating,
             :image_url,
             :description

  def genres
    object.genres
  end

end
