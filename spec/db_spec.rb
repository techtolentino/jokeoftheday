require "spec_helper"
require "sqlite3"
require "fileutils"
require "pry-debugger"

describe "db" do
  before(:each) do
    @db = Joke::DB.new("app.db")
  end
  # after(:each) do
  #   FileUtils.rm("app.db") if File.exists?("app.db")
  # end

  it "exists" do
    expect(Joke::DB).to be_a(Class)
  end

  it "returns a db" do
    expect(Joke.db).to be_a(Joke::DB)
  end

  it "is a singleton" do
    db1 = Joke.db
    db2 = Joke.db
    expect(db1).to be(db2)
  end

  it "can return a hash" do
    db1 = Joke.db
    expect(db1.jokes).to be_a(Hash)
  end

  it "build_a_joke can build a joke from data" do
    joke1 = @db.build_joke(:id => 1, :joke => "What is life", :answer => "a joke")

    expect(joke1.id).to eq(1)
    expect(joke1.joke).to eq("What is life")
    expect(joke1.answer).to eq("a joke")
  end

  it "create_joke can store a joke in the database" do

  end
    # binding.pry


end
