require_relative 'deck'

class Hand
  def self.deal_from(deck)
    Hand.new(deck.deal(5))
  end

  def initialize(cards)
    @cards = cards
  end
end
