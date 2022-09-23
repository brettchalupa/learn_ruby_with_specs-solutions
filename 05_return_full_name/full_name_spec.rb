require_relative "full_name"

RSpec.describe "Lesson 05 - Return Full Name (w/ Optional Param)" do
  describe "#full_name" do
    it "returns a string of the passed in first and last name" do
      expect(full_name("Dale", "Cooper")).to eql("Dale Cooper")
      expect(full_name("Laura", "Palmer")).to eql("Laura Palmer")
    end

    it "accomodates those without a last name" do
      expect(full_name("Madonna")).to eql("Madonna")
      expect(full_name("Prince")).to eql("Prince")
    end
  end
end
