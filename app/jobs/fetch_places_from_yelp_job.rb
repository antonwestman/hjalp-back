class FetchPlacesFromYelpJob

  def self.perform
    offset = 0
    while true
      response = Yelp.client.search('Hammarby Sjöstad', { term: 'restaurants', cll:"59.305019,18.108809", radius_filter: 2000, offset: offset }, {lang: "sv"})
      create_places response.businesses
      offset += response.businesses.count
      break if offset >= response.total
    end
  end

  private

  def self.create_places(places)
    places.each do |place|
      create_place place
    end
  end

  def self.create_place(place)
    food_place = FoodPlace.where(yelp_id: place.id).first_or_initialize
    food_place.rating = place.rating
    food_place.image_url = place.image_url
    food_place.name = place.name
    food_place.description = place.snippet_text
    food_place.is_closed = place.is_closed
    if place.location.coordinate
      food_place.longitude = place.location.coordinate.longitude
      food_place.latitude = place.location.coordinate.latitude
    end
    assign_genres(place.categories, food_place)
    food_place.save
  end

  def self.assign_genres(genres, place)
    genres.each do |genre|
      food_genre = FoodGenre.where(name: genre[0]).first_or_create
      place.genres << food_genre
    end
  end

end