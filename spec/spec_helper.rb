require 'pry'
require './lib/joke.rb'
include Joke


RSpec.configure do |config|
  config.before(:each) do
    Joke.instance_variable_set(:@__db_instance, nil)
  end
end
