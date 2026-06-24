require_relative '../lib/word_counter'

describe "word_counter" do
  let(:dict) { ["below", "down", "go", "going", "horn", "how",
                 "howdy", "it", "i", "low", "own", "part",
                 "partner", "sit"] }

  it "counts a single word" do
    expect(word_counter("below", dict)).to eq({"below" => 1, "low" => 1})
  end

  it "counts multiple words in a sentence" do
    result = word_counter("Howdy partner, sit down! How's it going?", dict)
    expect(result["howdy"]).to eq(1)
    expect(result["sit"]).to eq(1)
    expect(result["down"]).to eq(1)
  end

  it "is case insensitive" do
    expect(word_counter("HOW how How", dict)["how"]).to eq(3)
  end
end