require 'deck'

describe Deck do
  let(:deck) { Deck.new }

  describe "#initialize" do

    it "initializes with 52 cards" do
      expect(deck.cards.length).to eq(52)
    end
  end

  describe "#shuffle" do
    # let(:shuffled_deck) { Deck.new.shuffle }
    it "shuffles cards" do
      expect(deck.cards).to receive(:shuffle)
      deck.shuffle
    end
  end

  describe "#deal" do
    it "deal n cards from the deck" do
      deck.deal(3)
      expect(deck.cards.length).to eq(49)
    end

    it "returns an array" do
      expect(deck.deal(3)).to be_a(Array)
    end

    it "returns n cards" do
      length = deck.deal(3).length

      expect(length).to eq(3)
    end
  end

  describe "#return" do
    it "returns cards to the deck" do
      dealt_cards = deck.deal(5)
      deck.return(dealt_cards.take(2))

      expect(deck.cards.length).to eq(49)
    end
  end
end
