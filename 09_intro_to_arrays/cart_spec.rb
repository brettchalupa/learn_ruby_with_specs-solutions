require_relative "cart"

RSpec.describe "Lesson 09 - Intro to Arrays" do
  describe Cart do
    describe "#add_item" do
      it "adds the passed in item to the items array" do
        cart = Cart.new
        cart.add_item("Apples")
        cart.add_item("Sweet Potatoes")
        expect(cart.items).to be_a(Array)
        expect(cart.items).to contain_exactly("Apples", "Sweet Potatoes")
      end
    end
  end
end
