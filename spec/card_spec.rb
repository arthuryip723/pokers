require 'card'

describe Card do
  describe "#initilize" do
    it "initialize with suit and value" do
      card = Card.new(:clubs, :king)
      expect(card.suit).to be(:clubs)
      expect(card.value).to be(:king)
    end
  end

end
