require "spec_helper"

describe "add_joke" do

  before(:each) do
    @db = Joke::Database.new
    @sql = SQLite3::Database.new("app.db")
  end

  it "exists" do
    expect(Joke::AddJoke).to be_a(Class)
  end

  describe "a joke can be added" do
      let(:j) {AddJoke.new.run(id: 1, joke: "How many?",
        answer: "hahaha")}
      let(:j_data) {{id: j[:joke].id, joke: j[:j]}}

    it "checks for minimum length" do

    end
  end

end
