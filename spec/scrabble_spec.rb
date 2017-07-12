require 'scrabble'

RSpec.describe 'Scrabble App' do

  before(:all) do
    @scrabble = Scrabble.new
  end

  it "create an instance of the Scrabble class" do
    expect(@scrabble).to be_an_instance_of(Scrabble)
  end

  it "converts a string to an array of corresponding character values" do
    hello = @scrabble.convert_to_letter_values("Hello")
    expect(hello).to be_an_instance_of(Array)
    expect(hello).to eq([4, 1, 1, 1, 1])
  end



end
