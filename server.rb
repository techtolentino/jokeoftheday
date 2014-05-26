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
  @name = params[:username]
  @pass = params[:password]
  @result = Joke::Login.run(@name, @pass)

  if @result[:success?]
    session[:username] =@result[:username]
    redirect to '/add_joke'
  else
    session[:error] = @result[:error]
    redirect to '/'
  end
end


# get '/test' do
#   joke = Joke::GetJokeOfTheDay.new.run
#   @joke = joke.joke
#   erb :test
# end

# get '/random' do
#   random = Joke::GetRandomJoke.new.run
#   @joke_random = random.joke
#   erb :random
# end
