# EXTRA CREDIT:
#
# Create a program that will play the Greed Game.
# Rules for the game are in GREED_RULES.TXT.
#
# You already have a DiceSet class and score function you can use.
# Write a player class and a Game class to complete the project.  This
# is a free form assignment, so approach it however you desire.

 class DiceSet
  attr :values
  def roll (number)
    @values = []
    while number > 0 do
      number = number - 1
      @values.push(1 + rand(6))
    end
  end
 end
 player1 = DiceSet.new
 player2 = DiceSet.new
 player1.roll(5)
 player2.roll(5)

class score
	attr :points
	def calcu
end

 p "Jugador 1: #{player1.values}"
 p "Jugador 2: #{player2.values}"