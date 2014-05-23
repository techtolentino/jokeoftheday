require 'sinatra'
require 'Joke'

set :bind, '0.0.0.0'

get '/main' do
  erb :layout
end

post '/main' do
  puts params
  @password = Joke.new
  erb :layout
end
