require "caesar"

RSpec.describe "caesar_cipher function" do
  it "cipher a short word" do
    expect(caesar_cipher("word", 1)).to eq("xpse")
    expect(caesar_cipher("word", 2)).to eq("yqtf")
    expect(caesar_cipher("word", 4)).to eq("asvh")
  end

  it "longer sentence" do
    expect(caesar_cipher("what a string", 5)).to eq("bmfy f xywnsl")
  end

  it "preserve punctuation" do
    expect(caesar_cipher("what a string!", 5)).to eq("bmfy f xywnsl!")
  end
  
  it "preserve capitalization" do
    expect(caesar_cipher("What a string", 5)).to eq("Bmfy f xywnsl")
  end
end

