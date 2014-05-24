require 'sinatra'
require 'rubygems'
# require_relative "./lib/commands/get_joke_of_the_day.rb"
require_relative "./lib/joke.rb"

set :bind, '0.0.0.0'

get '/' do
  joke = Joke::GetJokeOfTheDay.new.run
  @joke = joke.joke
  erb :homepage
end


get '/test' do
  joke = Joke::GetJokeOfTheDay.new.run
  @joke = joke.joke
  erb :test
end
