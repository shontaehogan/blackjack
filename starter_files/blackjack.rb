require_relative 'bet.rb'
require_relative 'hand.rb'
require_relative 'cards.rb'
require_relative 'deck.rb'

class Blackjack
    puts "Welcome to Blackjack!"
      newgame = Hand.new
      newgame.player_deal
      newgame.score_player
    puts "Your score is #{newgame.player_score}"

  while newgame.player_score < 21 && newgame.dealer_score < 21
    puts 'Would you like to hit or stand? (H/S)'
    input = gets.downcase.chomp
    if input == 'h'
      newgame.player_draw
    puts "Your score is #{newgame.player_score}"
    elsif input == 's'
    puts "Player stands."
    puts
      newgame.dealer_deal
      newgame.score_dealer
    puts "Dealer's score is #{newgame.dealer_score}"
    if newgame.dealer_score >= 17
    puts "Dealer stands."
    else
      newgame.dealer_draw
    puts "Dealer's score is #{newgame.dealer_score}"
    end
    else
    puts "That is not a vaild input."
    redo
    end
  end
    if newgame.player_score == 21
    puts "BLACKJACK! You win!!"
    elsif newgame.player_score > 21
    puts "Bust! Game over..."
    elsif newgame.dealer_score > 21
    puts "Dealer bust! You win!"
    elsif newgame.player_score > newgame.dealer_score
    puts "Player wins"
    else
    puts "Dealer wins."
  end
end
