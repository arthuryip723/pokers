require 'deck'
require 'hand'

describe Hand do
  let(:hand) { Hand.new }
  let(:deck) { double(:deck) }
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
end
