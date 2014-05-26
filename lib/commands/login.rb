require "ostruct"

module Joke

  class Login

  def run(username, password)
    user = Joke.db.get_user_by_username(username)

    if !user
      return { success?: false,
        error: "Incorrest username" }
    end

    if password != user.password
      return { success?: false,
        error: "Incorrect Password" }
    end

    result = OpenStruct.new(
      success?: true,
      username: user,
      message: "Login successful"
    )

  end

end
end
