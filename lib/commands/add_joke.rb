require 'ostruct'

module Joke

class AddJoke

  def run(input)
    joke = Joke.db.create_joke(joke: input[:joke], answer: input[:answer])

    if joke.length < 1
      return {success?: false, error: "Database couldn't store joke."}
    end

    j = OpenStruct.new(
      success?: true,
      joke: joke
    )


  end

end
end
