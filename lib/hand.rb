require_relative 'deck'

class Hand
  HAND_SIZE = 5

  def self.deal_from(deck)
    Hand.new(deck.deal(HAND_SIZE))
  end

  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def discard(card_indices)
    discarded_cards = []
    # card_indices.sort!.reverse!
    card_indices.each do |index|
      discarded_cards << cards[index]
    end
    discarded_cards.each { |card| cards.delete(card) }
    discarded_cards
  end

  def deal_new_cards(cards)
    self.cards.concat(cards)
  end

  private

  def flush?
    cards.map(&:suit).uniq.count == 1
  end

  def straight?
    cards.sort
  end
end
