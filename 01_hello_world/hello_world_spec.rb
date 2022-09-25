# NOTE: welcome to the first exercise! Your journey with Ruby begins here. This
# file contains the RSpec code that I've written, which you won't change. There
# will be some comments in the early lessons' specs, but soon enough, the spec
# will start to speak for itself.

# This requires the neighboring file you need to write your code in to make this test pass:
# `01_hello_world/hello_world.rb`
require_relative "hello_world"

# Below is our first RSpec example. As you can see, it reads quite nicely.
# That's the benefit of specs--you can write documentation while testing the
# code. Win-win.
RSpec.describe "Lesson 01 - Hello, world!" do
  # The pound sign (#) followed by a word indicates a method in Ruby speak.
  # If we were talking about a method named `bark` a class called `Dog`, we'd
  # write it out as `Dog#bark`.
  #
  # In this case, the spec is describing a globally available method.
  describe "#hello_world" do
    it "prints a greeting to stdout" do
      expect { hello_world }
        .to output { "Hello, world!" }.to_stdout
    end
  end
end
