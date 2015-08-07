class Card
  SUITS = {
    :clubs    => "♣",
    :diamonds => "♦",
    :hearts   => "♥",
    :spades   => "♠"
  }

  VALUES = {
    :deuce => "2",
    :three => "3",
    :four  => "4",
    :five  => "5",
    :six   => "6",
    :seven => "7",
    :eight => "8",
    :nine  => "9",
    :ten   => "10",
    :jack  => "J",
    :queen => "Q",
    :king  => "K",
    :ace   => "A"
  }

  SUITS_POWERS = [:clubs, :diamonds, :hearts, :spades]
  VALUE_POWERS = [:deuce, :three, :four, :five,
    :six, :seven, :eight, :nine,
    :ten, :jack, :queen, :king,
    :ace
  ]

  def self.all_cards
    deck = []

    SUITS.each_key do |suit|
      VALUES.each_key do |value|
        deck << Card.new(suit, value)
      end
    end

    deck
  end

  attr_reader :suit, :value

  def initialize(suit, value)
    raise unless SUITS.include?(suit) && VALUES.include?(value)

    @suit, @value = suit, value
  end

  def <=>(card)
    case VALUE_POWERS.index(value) <=> VALUE_POWERS.index(card.value)
    when -1 then return -1
    when 0
      return SUITS_POWERS.index(suit) <=> SUITS_POWERS.index(card.suit)
    when 1 then return 1
    end
  end
end
