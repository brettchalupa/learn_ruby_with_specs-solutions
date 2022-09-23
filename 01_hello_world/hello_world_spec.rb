require_relative "hello_world"

# NOTE: the pound sign (#) followed by a word indicated a method in Ruby speak. If we were talking about a method named `bark` a class called `Dog`, we'd write it out as `Dog#bark`.
RSpec.describe "#hello_world" do
  it "prints a greeting to stdout" do
    expect { hello_world }
      .to output { "Hello, world!" }.to_stdout
  end
end