# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Tag.create(name: 'happy', restaurant_id: 1)
Tag.create(name: 'angry', restaurant_id: 2)
Tag.create(name: 'sad', restaurant_id: 3)
Tag.create(name: 'happy', restaurant_id: 4)
Tag.create(name: 'happy', restaurant_id: 5)

Restaurant.create(name: "Happy Chinese Food", food_type: "Chinese")
Restaurant.create(name: "Angry Japanese Food", food_type: "Japanese")
Restaurant.create(name: "Sad American Food", food_type: "American")
Restaurant.create(name: "Happy Italian Food", food_type: "Italian")
Restaurant.create(name: "Happy Chicken and Rice Food", food_type: "Mediterranean")
