class Building
  attr_accessor :num_windows, :num_walls, :num_stories, :building_materials, :colors, :has_aircon
  def initialize(window_count, wall_count, story_count, material, color, ac)
    @num_windows = window_count
    @num_walls = wall_count
    @num_stories = story_count
    @building_materials = material
    @colors = color
    @has_aircon = ac
  end
end

building1 = Building.new(4, 4, 3, "metal", "blue", true)

building2 = Building.new(10, 4, 1, "wood", "orange", false)
