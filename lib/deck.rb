require_relative 'card'

class Deck
  attr_reader :cards

  def initialize
    @cards = Card.all_cards
  end

  def shuffle
    cards.shuffle
  end

  def deal(num_cards)
    cards.shift(num_cards)
  end

  def return(new_cards)
    cards.concat(new_cards)
  end
end
