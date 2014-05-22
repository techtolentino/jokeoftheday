require "spec_helper"

describe "add_joke" do
  it "is a class" do
    joke1 = Joke::MakeJoke.new(1, "Why did the chicken cross the road?", "To get to the other side")
    expect(joke1).to be_a(Joke::MakeJoke)
  end

  it "can create a unique id for a joke-answer pair" do

  end
end
