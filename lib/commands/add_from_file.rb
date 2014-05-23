class Joke::AddFromFile
  def self.run(file_name)
    # read the file into a string
    # split the string into jokes strings
    # iterate through jokes and split into joke array and answer array
    # call create_joke
    content = File.read(file_name)
    jokes_array = content.split("\n~~~~\n")
    jokes_array.each do |joke|
      j = joke.split("\n~~\n")
      joke_hash = {joke: j.first, answer: j.last}
      Joke.db.create_joke(joke_hash)
    end
  end
end
