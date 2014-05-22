require 'sinatra'
require ''

set :bind '0.0.0.0'

get '/main' do
  erb :main
end

post '/main' do
  puts params
  @password = Joke.new
  erb :main
end
