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
  def initialize
    @values = []
    number = 5
    while number > 0 do
      number -= 1
      @values.push(1 + rand(6))
    end
  end
 end

class Score
	def calc(dice)
  	#asegurando que tirada tenga algun valor 
	  if dice.length == 0
	    return 0
	end

  one = 0
  two = 0
  three = 0
  four = 0
  five = 0
  six = 0
  result = 0

  #mirando las tiradas

  dice.each do |value|
    if value == 1
      one += 1
    end
    if value == 2
      two += 1
    end
    if value == 3
      three += 1
    end
    if value == 4
      four += 1
    end
    if value == 5
      five += 1
    end
    if value == 6
      six += 1
    end
  end

  #generando resultado

  if one == 1
    result += 100
  end
  if one == 2
    result += 200
  end
  if one == 3
    result += 1000
  end
  if one == 4
    result += 1100
  end
  if one == 5
    result += 1200
  end

  if two == 3
    result += 200
  end

  if three == 3
    result += 300
  end

  if four == 3
    result += 400
  end

  if five == 1
    result += 50
  end
  if five == 2
    result += 100
  end
  if five == 3
    result += 500
  end
  if five == 4
    result += 550
  end
  if five == 5
    result += 600
  end

  if six == 3
    result += 600
  end
  # respuesta

  result
end
end

player1 = DiceSet.new
tirada1 = Score.new
player2 = DiceSet.new
tirada2 = Score.new
player3 = DiceSet.new
tirada3 = Score.new
player4 = DiceSet.new
tirada4 = Score.new
player5 = DiceSet.new
tirada5 = Score.new

p "Jugador 1 - Tiradas : #{player1.values.map { |i| "'" + i.to_s + "'" }.join(",")}, puntuacion #{tirada1.calc(player1.values)}"
p "Jugador 2 - Tiradas : #{player2.values.map { |i| "'" + i.to_s + "'" }.join(",")}, puntuacion #{tirada1.calc(player2.values)}"
p "Jugador 3 - Tiradas : #{player3.values.map { |i| "'" + i.to_s + "'" }.join(",")}, puntuacion #{tirada1.calc(player3.values)}"
p "Jugador 4 - Tiradas : #{player4.values.map { |i| "'" + i.to_s + "'" }.join(",")}, puntuacion #{tirada1.calc(player4.values)}"
p "Jugador 5 - Tiradas : #{player5.values.map { |i| "'" + i.to_s + "'" }.join(",")}, puntuacion #{tirada1.calc(player5.values)}"