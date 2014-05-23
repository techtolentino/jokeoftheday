require 'ostruct'

module Joke

class AddJoke

  def run(input)
    if input[:joke] < 10 && input[:answer] < 4
      return {success?: false, error: "Please make a valid entry."}
    else
      joke = Joke.db.create_joke(joke: input[:joke], answer: input[:answer])
    end

    if joke.nil?
      return {success?: false, error: "Database couldn't store joke."}
    end

    j = OpenStruct.new(
      success?: true,
      joke: joke
    )


  end

end
end
