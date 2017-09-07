class Bet
	attr_accessor :money

	def initialize(money)
	  @initial_pot = money
	  @money = money
	end

	def bet(amount)
	  @money -= amount
	end

	def bankrupt
	  puts "Sorry. You don't have the minimum amount of money needed to play."
	  @money <=10
	end

	def win(amount)
	  @money += amount
	end

	def to_s
	  puts "$#{@money}"
	end
end
