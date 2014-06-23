require 'sqlite3'
namespace :db do

  desc "creates a database"
  task :create_db do
    db ||= SQLite3::Database.new("test.db")
  end

  desc "loads a database"
  task :load_db => :create_db do

  end

  desc "deletes a database"
  task :drop_db => :load_db do
    File.delete("test.db")
  end

end


