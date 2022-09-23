require_relative "user"

RSpec.describe "Lesson 07 - Our First Class Instance" do
  describe "User" do
    describe "#full_name" do
      it "returns the full name of the user" do
        user = User.new("coop@fbi.gov", "Dale", "Cooper")
        expect(user.full_name).to eql("Dale Cooper")
      end

      it "does not require last name" do
        user = User.new("madonna@example.com", "Madonna")
        expect(user.full_name).to eql("Madonna")
      end
    end
  end
end
