require_relative 'card'

class Deck
  attr_reader :cards

  def initialize
    @cards = Card.all_cards
  end

  def shuffle
    cards.shuffle
  end

end
