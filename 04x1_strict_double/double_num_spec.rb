require_relative "double_num"

RSpec.describe "Lesson 04x1 - Raising Errors with Invalid Args" do
  describe "#double_num" do
    it "returns the doubled value of the number" do
      expect(double_num(10)).to eql(20)
      expect(double_num(108)).to eql(216)
    end

    it "supports floats" do
      expect(double_num(12.5)).to eql(25.0)
      expect(double_num(243.33)).to eql(486.66)
    end

    # NOTE: because Ruby is dynamically typed, it can be helpful to be
    # particularly defensive about what data makes it into a class instance or a
    # given method
    it "raises an exception when the arg is not a number" do
      expect { double_num("ten") }.to raise_error(ArgumentError, "argument must be a number")
      expect { double_num("10") }.to raise_error(ArgumentError, "argument must be a number")
      expect { double_num(Object.new) }.to raise_error(ArgumentError, "argument must be a number")
    end
  end
end
