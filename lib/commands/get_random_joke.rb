module Joke
  class GetRandomJoke
    def run
      j = Joke.db.get_random

      if j.nil?
        return {:success? => false, :error => "Database couldn't retrieve data"}
      end

      res = OpenStruct.new(
        success?: true,
        joke: j
      )
    end
  end
end
