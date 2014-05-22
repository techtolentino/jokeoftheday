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

  def build_joke(data)
    MakeJoke.new(data[:id], data[:joke], data[:answer])
  end

  def create_joke(data)
    @db.execute <<-SQL
      INSERT INTO jokes(joke, answer)
      VALUES("#{data[:joke]}", "#{data[:answer]}");
    SQL
    result = @db.execute <<-SQL
      SELECT * FROM jokes WHERE id=(SELECT MAX(id) FROM jokes);
    SQL
    data[:id] = result.first.first
    build_joke(data)
  end

  def delete_joke(data)
    @db.execute <<-SQL
      DELETE FROM jokes WHERE id = #{data[:id]};
    SQL
    build_joke(data)
  end

end

module Joke
  def self.db
    @__db_instance ||= DB.new("app.db")
  end
end




