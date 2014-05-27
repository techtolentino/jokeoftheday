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
end


post '/' do
  # user = Joke::Login.new.run(username, password)
  # @name = user.username
  # @pass = user.password
  # erb :signin
  # @name = params[:user]
  # @pass = params[:pwd]

  result = Joke::Login.run(params[:user], params[:pwd])

  if result[:success?]
    session[:username] = result[:user]
    redirect to '/add_joke'
  else
    session[:error] = result[:error]
    redirect to '/'
  end
end

get '/add_joke' do
  erb :add_joke
end

post '/add_joke' do
  data = {
    joke: params[:question],
    answer: params[:answer]
  }
  j = Joke::AddJoke.new.run(data)
  redirect to '/'
end

