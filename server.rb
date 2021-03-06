require 'sinatra'
require 'rubygems'
require "warden"
require_relative "./lib/joke.rb"

enable :sessions

set :bind, '0.0.0.0'

get '/' do
  joke = Joke::GetJokeOfTheDay.new.run
  @joke = joke.joke

  random = Joke::GetRandomJoke.new.run
  @joke_random = random.joke
  erb :homepage
end

post '/signin' do
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

get '/signin' do
  erb :signin
end

post '/add_joke' do
  data = {
    joke: params[:question],
    answer: params[:answer]
  }
  j = Joke::AddJoke.new.run(data)
  redirect to '/'
end

