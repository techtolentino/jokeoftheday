module Joke
end

require 'sqlite3'
require_relative './joke/db.rb'
require_relative './commands/add_joke.rb'
require_relative './commands/get_joke_of_day.rb'
require_relative './joke/make_joke.rb'
require_relative './commands/login.rb'
require_relative './commands/get_random_joke.rb'
require_relative './joke/user.rb'
# require_relative './commands/add_from_file.rb'

# path = "#{File.dirname(__FILE__)}/../data/jokes/jokes.txt"
# Joke::AddFromFile.run(path)

