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
  end

end
