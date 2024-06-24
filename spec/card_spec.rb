class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

RSpec.describe Card do
  let(:card) { Card.new("A", "S") }

  it "has a rank accessor" do
    expect(card.rank).to eq("A")
    card.rank = "3"
    expect(card.rank).to eq("3")
  end

  it "has a suit accessor" do
    expect(card.suit).to eq("S")
    card.suit = "H"
    expect(card.suit).to eq("H")
  end

  # it "shows off custom error message" do
  #   card.suit = "notta suit"
  #   testsuit = "Zoot"
  #   expect(card.suit).to eq(testsuit), "Expected #{testsuit} but returned #{card.suit}."
  # end
end
