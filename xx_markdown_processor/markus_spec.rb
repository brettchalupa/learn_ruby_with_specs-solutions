require_relative "markus"

# Learn more about Markdown: https://commonmark.org
RSpec.describe "Lesson XX - Markdown Processor (Simplified)" do
  describe "Markus" do
    describe ".convert_to_html" do
      it "converts the passed in Markdown string to HTML" do
        expect(Markus.convert_to_html('Hello, **world**!'))
          .to eql('<p>Hello, <strong>world</strong>!</p>')

        expect(Markus.convert_to_html('I just read _The Wind-Up Bird Chronicle_.'))
          .to eql('<p>I just read <em>The Wind-Up Bird Chronicle</em>.</p>')

        expect(Markus.convert_to_html('Nothing I **love** more than [cool links](https://example.com).'))
          .to eql('<p>Nothing I <strong>love</strong> more than <a href="https://example.com">cool links</a>.</p>')
      end
    end

    context "when the argument is not a string" do
      it "attempts to convert it to a string" do
        expect(Markus.convert_to_html(10))
          .to eql('<p>10</p>')
      end
    end
  end
end
