require 'card'

describe Card do
  describe "#initilize" do
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

end
