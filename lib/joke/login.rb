class Joke::Login
  attr_reader :password

  def initialize(password="shit")
    @password = password
  end

end
