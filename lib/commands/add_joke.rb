module Joke

class AddJoke

  def run(input)
    if input[:joke] < 10 && input[:answer] < 4
      return {success?: false, error: "Please make a valid entry."}
    end

    joke = Joke.db.create_joke(joke: input[:joke], answer: input[:answer])

    if joke.nil?
      return {success?: false, error: "Database couldn't store joke."}
    end

    {
      success?: true,
      joke: joke
    }


  end

end
end
