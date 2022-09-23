require_relative "hello"

RSpec.describe "#hello" do
  it "prints a greeting to the passed in name to stdout" do
    expect { hello("Jayden") }
      .to output { "Hello, Jayden!" }.to_stdout
  end
end
