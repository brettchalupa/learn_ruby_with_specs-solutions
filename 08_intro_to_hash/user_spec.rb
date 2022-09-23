require_relative "user"

RSpec.describe "Lesson 07 - Our First Class Instance" do
  describe User do
    describe "#to_hash" do
      it "returns the attributes of the User as a hash" do
        user = User.new("coop@fbi.gov", "Dale", "Cooper")

        expect(user.to_hash).to be_a(Hash)
        expect(user.to_hash).to eql({
          name: "Dale Cooper",
          email: "coop@fbi.gov"
        })
      end
    end
  end
end
