class Joke::MakeJoke
  attr_reader :id, :joke, :answer
  def initialize(id, joke, answer)
    @id = id
    @joke = joke
    @answer = answer
  end
end
