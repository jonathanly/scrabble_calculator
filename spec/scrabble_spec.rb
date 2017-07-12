require 'scrabble'

RSpec.describe Scrabble do

  before(:all) do
    @scrabble = Scrabble.new
  end

  it "initializes a new instance of the Scrabble class" do
    expect(@scrabble).to be_an_instance_of Scrabble
  end

  describe "#convert_to_letter_values" do
    it "converts a string to an array of corresponding letter values" do
      hello = @scrabble.convert_to_letter_values("Hello")
      expect(hello).to be_an_instance_of Array
      expect(hello).to eq [4, 1, 1, 1, 1]
    end
  end


  describe "#score" do
    context "on valid argument input" do
      it "returns a number" do
        expect(@scrabble.score("example")).to be_an_instance_of Fixnum
      end

      it "returns correct score for a word" do
        expect(@scrabble.score("example")).to eq 18
      end

      it "is insensitive to character case" do
        expect(@scrabble.score("eXaMplE")).to eq 18
      end

      it "can calculate two words" do
        expect(@scrabble.score("cat videos")).to eq 15
      end
    end

    context "on invalid argument input" do
      it "returns 0 if nil" do
        expect(@scrabble.score(nil)).to eq 0
      end

      it "returns 0 if string is empty" do
        expect(@scrabble.score("")).to eq 0
      end

      it "returns 0 if characters are invalid" do
        expect(@scrabble.score("!@$%^")).to eq 0
      end
    end
  end

  describe "#double_word" do
    it "calculates double word score correctly" do
      expect(@scrabble.double_word("example")).to eq 36
    end
  end

  describe "#triple_word" do
    it "calculates triple word score correctly" do
      expect(@scrabble.triple_word("example")).to eq 54
    end
  end

  describe "#double_letter" do
    it "calculates double letter score correctly" do
      expect(@scrabble.double_letter("example", "x")).to eq 26
    end
  end

  describe "#triple_letter" do
    it "calculates triple letter score correctly" do
      expect(@scrabble.triple_letter("example", "x")).to eq 34
    end
  end
end
