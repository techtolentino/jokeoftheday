require "spec_helper"
require "sqlite3"
require "fileutils"

describe "db" do
  before(:each) do
    @db = Joke::DB.new("app.db")
  end
  after(:each) do
    FileUtils.rm("app.db") if File.exists?("app.db")
  end

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


end
