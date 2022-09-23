require_relative "item"

RSpec.describe "Lesson 11 - Multiple Classes" do
  describe Item do
    subject(:item) { Item.new(name: "Apples", quantity: 2, unit_price: 2.40) }

    describe "#quantity" do
      it "returns the initialized quantity" do
        expect(item.quantity).to eql(2)
      end
    end

    describe "#unit_price" do
      it "returns the initialized unit_price" do
        expect(item.unit_price).to eql(2.40)
      end
    end
  end
end
