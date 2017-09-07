require_relative 'cards.rb'

class Deck

  SUITS = ["Hearts", "Diamonds", "Spades", "Clubs"]
  VALUES = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]

  attr_accessor :deck
  def initialize
    @collection = []
    SUITS.each do |suit|
      VALUES.each do |value|
        @collection << Card.new(value, suit)
      end
    end
    @collection.shuffle!
  end
  def draw!
    @collection.pop
  end
end
