require 'sinatra'

get '/' do
    @name = "Skylar Shibayama"
  erb :homepage
end

get '/aboutme' do
  @name = "Skylar Shibayama"
  @hometown = "Shoreline, WA"
  @age = "21"

  erb :about_me
end

get '/abouthometown' do
  @hometown = "Shoreline, WA"
  @funfact = "there is a lake"

  erb :about_my_hometown
end

get '/blogpost' do
  @name = "Skylar Shibayama"
  @newtopic = "Sinatra"

  erb :blog_post_06_07_2016
end
