class Image < ActiveRecord::Base
  belongs_to :sushi

  def width
    "300px"
  end
end

img = Image.new
img.width = "300px"
puts img.width

img.sushi => Sushi.find(img.sushi_id)

sashimi = Sushi.new
img.sushi = sashimi
=> img.sushi_id = sashimi.id

puts img.sushi
