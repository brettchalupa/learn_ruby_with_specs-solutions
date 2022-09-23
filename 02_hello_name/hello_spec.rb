require_relative "hello"

RSpec.describe "Lesson 02 - Hello w/ Name" do
  describe "#hello" do
    it "prints a greeting to the passed in name to stdout" do
      expect { hello("Jayden") }
        .to output { "Hello, Jayden!" }.to_stdout

      expect { hello("Otis") }
        .to output { "Hello, Otis!" }.to_stdout
    end
  end
end
