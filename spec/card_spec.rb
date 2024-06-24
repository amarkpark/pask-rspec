class Card
  attr_reader :rank
  attr_reader :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

RSpec.describe Card do
  before(:each) do
    @card = Card.new("A", "S")
  end

  it "has a rank" do
    expect(@card.rank).to eq("A")
  end

  it "has a suit" do
    expect(@card.suit).to eq("S")
  end
end
