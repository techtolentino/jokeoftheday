require "ostruct"
require "bcrypt"

module Joke
  class Login
    def self.run(username, password)
      user = Joke.db.get_user_by_username(username)
      if !user
        return { success?: false,
          error: "Incorrect username" }
      end

      # password = BCrypt::Password.create(password)

      if password != user.password
        return { success?: false,
          error: "Incorrect password" }
      end

      result = OpenStruct.new(
        success?: true,
        user: user,
        message: "Login successful"
      )
    end
  end
end
