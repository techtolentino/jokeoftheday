class Joke::DB

  def initialize(file)
    @db = SQLite3::Database.new(file)

    @db.execute <<-SQL
      CREATE TABLE IF NOT EXISTS jokes(
        id integer PRIMARY KEY AUTOINCREMENT,
        joke string,
        answer string);
      SQL

    @db.execute <<-SQL
      CREATE TABLE IF NOT EXISTS categories(
        id integer PRIMARY KEY AUTOINCREMENT,
        type string);
    SQL

    @db.execute <<-SQL
      CREATE TABLE IF NOT EXISTS joke_categories(
        id integer PRIMARY KEY AUTOINCREMENT,
        category_id integer,
        joke_id integer,
        FOREIGN KEY(joke_id) REFERENCES jokes(id)
        );
    SQL

  end

  def build_joke

  end

  def create_joke

  end

  def delete_joke

  end

end

module Joke
  def self.db
    @__db_instance ||= DB.new("app.db")
  end
end


