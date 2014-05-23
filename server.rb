require 'sinatra'
require 'rubygems'
# require 'Joke'

set :bind, '0.0.0.0'

get '/' do
  # erb :layout
  File.read(File.join('views', 'layout.erb'))
end

post '/' do
  # puts params
  # @password = Joke.new
  # erb :layout
end
