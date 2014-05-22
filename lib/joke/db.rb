class Joke::DB

  def initialize

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
    @__db_instance ||= DB.new
  end
end
