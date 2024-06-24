class Card
  attr_reader :type

  def initialize(type)
    @type = type
  end
end

RSpec.configure do |config|
  config.before(:all) do
    card = Card.new("A", "S")
  end
end

RSpec.describe Card do
  # it "has a type" do
  #   card = Card.new("AS")
  #   expect(card.type).to eq("AS")
  # end

  it "has a rank" do
    expect(card.rank).to eq("A")
  end

  it "has a suit" do
    expect(card.suit).to eq("S")
  end
end

# RSpec.describe do
#   it "can calculate" do
#     expect(1+2).to eq(4)
#   end
# end
