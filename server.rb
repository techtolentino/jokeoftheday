require 'sinatra'
require 'rubygems'
# require 'Joke'

set :bind, '0.0.0.0'

get '/' do
  erb :layout
end

post '/' do
  # puts params
  # @password = Joke.new
  # erb :layout
end
