require 'scrabble'

describe Scrabble do

  before(:all) do
    @scrabble = Scrabble.new
  end

  it "creates an instance of the Scrabble class" do
    expect(@scrabble).to be_an_instance_of(Scrabble)
  end

end
