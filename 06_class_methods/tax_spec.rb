require_relative "tax"

RSpec.describe "Lesson 06 - Class Methods (+ float math)" do
  describe Tax do
    # NOTE: the `.` represents a class method in the described class
    describe ".calculate" do
      it "returns the sales tax amount of 6% of the passed in order total" do
        expect(Tax.calculate(10.00)).to eql(0.60)
      end

      context "when the sales tax returns a decimal beyond two places" do
        it "rounds the value" do
          expect(Tax.calculate(5.34)).to eql(0.32)
          expect(Tax.calculate(108.62)).to eql(6.52)
        end
      end
    end
  end
end
