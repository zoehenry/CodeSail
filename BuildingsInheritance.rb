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


class Hospital < Building
  attr_accessor :num_of_patients
  def initialize(patient_count, window_count, wall_count, story_count, material, color, ac)
    super(window_count, wall_count, story_count, material, color, ac)
    @num_of_patients = patient_count
  end

  def make_siren_sound
    puts "BLEEP BLEEP BLEEP"
  end
end

yalehealth = Hospital.new(20,50,4,5,["glass","metal"], "white", true)
