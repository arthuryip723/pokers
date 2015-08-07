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

  describe "#take" do
    
  end

  describe "#return"
end
