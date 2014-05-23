require "spec_helper"

describe "add_joke" do
  before(:each) do
    @j = Joke::MakeJoke.new(1, "Why did the chicken cross the road?", "To get to the other side")
  end
  it "is a class" do
    joke1 = Joke::MakeJoke.new(1, "Why did the chicken cross the road?", "To get to the other side")
    expect(joke1).to be_a(Joke::MakeJoke)
  end

  it "can create a unique id for a joke-answer pair" do
    expect(@j.id).to eq(1)
  end

  it "returns a question" do
    expect(@j.joke).to eq("Why did the chicken cross the road?")
  end

  it "returns an answer" do
    expect(@j.answer).to eq("To get to the other side")
  end

end
