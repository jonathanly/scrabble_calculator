require 'scrabble'

RSpec.describe Scrabble do

  before(:all) do
    @scrabble = Scrabble.new
  end

  it "initializes a new instance of the Scrabble class" do
    expect(@scrabble).to be_an_instance_of Scrabble
  end

  it "converts a string to an array of corresponding character values" do
    hello = @scrabble.convert_to_letter_values("Hello")
    expect(hello).to be_an_instance_of Array
    expect(hello).to eq [4, 1, 1, 1, 1]
  end

  describe "score method" do
    it "returns 0 if nil is passed as a parameter" do
      expect(@scrabble.score(nil)).to eq 0
    end

    it "returns 0 an empty string is passed as a parameter" do
      expect(@scrabble.score("")).to eq 0
    end

    it "returns a number when a string is passed as a parameter" do
      expect(@scrabble.score("example")).to be_an_instance_of Fixnum
    end

    it "returns the correct score for a word" do
      expect(@scrabble.score("example")).to eq 18
      expect(@scrabble.score("unicorn")).to eq 9
      expect(@scrabble.score("developer")).to eq 15
    end

    it "is insensitive to character case" do
      expect(@scrabble.score("example")).to eq 18
      expect(@scrabble.score("eXaMplE")).to eq 18
    end
  end

  it "calculates double word score correctly" do
    expect(@scrabble.double_word("example")).to eq 36
    expect(@scrabble.double_word("unicorn")).to eq 18
    expect(@scrabble.double_word("developer")).to eq 30
  end

  it "calculates triple word score correctly" do
    expect(@scrabble.triple_word("example")).to eq 54
    expect(@scrabble.triple_word("unicorn")).to eq 27
    expect(@scrabble.triple_word("developer")).to eq 45
  end

  it "calculates double letter score correctly" do
    expect(@scrabble.double_letter("example", "x")).to eq 26
    # expect(@scrabble.triple_word("unicorn")).to eq 27
    # expect(@scrabble.triple_word("developer")).to eq 45
  end
end
