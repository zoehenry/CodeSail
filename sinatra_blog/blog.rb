require 'sinatra'

get '/' do
  @name = "Zoe Henry"
  erb :homepage
end

get '/aboutme' do
  @name = "Zoe Henry"
  @hometown = "Los Angeles, CA"
  @age = "18"
  @hobbies = ["exercising", "eating food", "watching tv", "hanging out with friends"]
  @favoritecolor = "purple"
  erb :about_me
end

get '/abouthometown' do
  @hometown = "Los Angeles, CA"
  @funfact = "there's a beach"

  erb :about_my_hometown
end

get '/blogpost' do
  @name = "Zoe Henry"
  @newtopic = ["Sinatra", "HTML", "CSS"]
  @date = "June 7th, 2016"

  erb :blog_post_06_07_2016
end
