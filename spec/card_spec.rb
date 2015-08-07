require 'card'

describe Card do
  describe "#initialize" do
    it "initialize with suit and value" do
      card = Card.new(:clubs, :king)
      expect(card.suit).to be(:clubs)
      expect(card.value).to be(:king)
    end

    it "raises error with invalid suit" do
      expect { Card.new(:suedes, :king) }.to raise_error
    end

    it "raises error with invalid value" do
      expect { Card.new(:clubs, :knave) }.to raise_error
    end
  end

  describe "#<=>" do
    it "compares the power of cards" do
      three = Card.new(:hearts, :three)
      four  = Card.new(:hearts, :four)

      # expect(four > three).to be true
      # expect(three < four).to be false
      expect(four <=> three).to be(1)
      expect(three <=> four).to be(-1)
    end

    it "compares the power of suit" do
      three_clubs = Card.new(:clubs, :three)
      three_spades = Card.new(:spades, :three)

      # expect(three_club < three_spades).to be true
      # expect(three_spades < three_club).to be false
      expect(three_clubs <=> three_spades).to eq -1
    end
  end
end
