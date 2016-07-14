class RecommenderService
  attr_accessor :mood

  def initialize(mood)
    @mood = mood
  end

  def recommend
    restaurant_ids = Tag.where(name: @mood).pluck(:restaurant_id).uniq
    restaurants = Restaurant.find(restaurant_ids)

    restaurants
  end
end
