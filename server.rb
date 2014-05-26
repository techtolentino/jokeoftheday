require 'sinatra'
require 'rubygems'
# require_relative "./lib/commands/get_joke_of_the_day.rb"
require_relative "./lib/joke.rb"

set :bind, '0.0.0.0'

get '/' do
  joke = Joke::GetJokeOfTheDay.new.run
  @joke = joke.joke

  random = Joke::GetRandomJoke.new.run
  @joke_random = random.joke
  erb :homepage

  user = Joke::Login.new.run(username, password)
  erb :signin
end


get '/test' do
  joke = Joke::GetJokeOfTheDay.new.run
  @joke = joke.joke
  erb :test
end

get '/random' do
  random = Joke::GetRandomJoke.new.run
  @joke_random = random.joke
  erb :random
end
