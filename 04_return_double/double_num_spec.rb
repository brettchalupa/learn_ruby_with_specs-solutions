require_relative "double_num"

RSpec.describe "Lesson 04 - Return a Doubled Number" do
  describe "#double_num" do
    it "returns the doubled value of the number" do
      expect(double_num(10)).to eql(20)
      expect(double_num(108)).to eql(216)
    end
  end
end
