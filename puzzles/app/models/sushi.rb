class Sushi < ActiveRecord::Base
  has_many :images
end

tuna = Sushi.new
puts tuna.images => []
tuna.images.length
tuna.images.first
tuna.images.last

img1 = Image.new
img1.url = "http://imgur.com/1"
tuna.images << img1

img2 = Image.new
img2.url = "http://imgur.com/2"
tuna.images << img2

tuna.save!

puts tuna.images => [img1, img2]
tuna.images.first => img1
tuna.images.last => img2
