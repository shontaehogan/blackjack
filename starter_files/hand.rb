class Hand
  attr_accessor :player_hand, :dealer_hand, :deck, :player_score, :dealer_score

  def initialize
    @player_hand = []
    @dealer_hand = []
    @player_score = 0
    @dealer_score = 0
    @deck = Deck.new
  end

  def player_deal
    2.times do
      card = @deck.draw!
      puts 'Player was dealt ' + card.rank.to_s + card.suit
      @player_hand << card
    end
    puts
  end

  def dealer_deal
    2.times do
      card = @deck.draw!
      puts 'Dealer was dealt ' + card.rank.to_s + card.suit
      @dealer_hand << card
    end
    puts
  end

  def player_draw
    card = @deck.draw!
    puts 'Player was dealt ' + card.rank.to_s + card.suit
    @player_hand << card
    if card.face_card?
      card.rank = 10
    end
      if card.ace?
        if @player_score > 10
          card.rank = 1
        elsif @player_score < 10
          card.rank = 11
        end
      end
    @player_score += card.rank
  end

  def dealer_draw
    card = @deck.draw!
    puts 'Dealer was dealt ' + card.rank.to_s + card.suit
    @dealer_hand << card
    if card.face_card?
      card.rank = 10
    end
    if card.ace?
      if @player_score > 10
        card.rank = 1
      elsif @player_score < 10
        card.rank = 11
      end
    end
    @dealer_score += card.rank
  end

  def score_player
    self.player_hand.each do |card|
      if card.face_card?
        card.rank = 10
      end
      if card.ace?
        if @player_score > 10
          card.rank = 1
        elsif @player_score < 10
          card.rank = 11
        end
      end
      @player_score += card.rank.to_i
    end
  end

  def score_dealer
    self.dealer_hand.each do |card|
      if card.face_card?
        card.rank = 10
      end
      if card.ace?
        if @dealer_score > 10
          card.rank = 1
        elsif @dealer_score < 10
          card.rank = 11
        end
      end
      @dealer_score += card.rank.to_i
    end
  end
  def scores
    puts "Your score is #{@player_score}"
    puts "Dealer's score is #{@dealer_score}"
    puts
  end
end
