require 'deck'
require 'hand'
require 'card'

describe Hand do
  let(:deck) { double(:deck) }
  let(:hand) { Hand.deal_from(Deck.new) }
  let(:card) { double(:card) }

  # describe "#initialize" do
  #   it "initializes with 5 cards" do
  #     expect(hand.cards.length).to eq(5)
  #   end
  # end
  describe "::deal_from" do
    it "initialized with 5 cards" do
      expect(deck).to receive(:deal).with(5)
      Hand.deal_from(deck)
    end
  end

  describe "#discard" do
    # it "returns n cards" do
    #
    # end

    it "removes n cards from the hand" do
      expect(hand.cards).to receive(:delete).exactly(2).times

      hand.discard([1,4])
    end
  end

  describe "#deal_new_cards" do
    it "receive new cards" do
      allow(deck).to receive(:take).with(1).and_return([card])
      
      hand.discard([0,1])
      hand.deal_new_cards(deck.take(1))
      expect(hand.cards.length).to eq(4)
    end
  end
end
