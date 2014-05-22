module Joke
end

require 'sqlite3'
require_relative './joke/db.rb'
require_relative './commands/add_joke.rb'
require_relative './commands/get_joke.rb'
