module Joke
end

require 'sqlite3'
require_relative './joke/db.rb'
require_relative './commands/add_joke.rb'
require_relative './commands/get_joke.rb'
require_relative './joke/make_joke.rb'
require_relative './commands/login.rb'
require_relative './commands/add_from_file.rb'

path = "#{File.dirname(__FILE__)}/../data/jokes/computer_jokes.txt"
Joke::AddFromFile.run(path)
path = "#{File.dirname(__FILE__)}/../data/jokes/music_jokes.txt"
Joke::AddFromFile.run(path)
